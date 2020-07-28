class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index,:new_guest,:search]

  def index
  @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(6)

  end
  
  def show
    @like = Like.new
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def new
  @post = Post.new
  @post.spot.build
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to controller: :posts, action: :index
    else
      render "new"
    end
  end
  # def create
  #   Post.create(post_params)
  # end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    @post.spot.build
  end
  
  def edit
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  def sort
    selection = params[:keyword]
    @posts = Post.sort(selection)

  end
  
  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def new_guest
    user = User.find_or_create_by!(email: 'test@test') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end

  private
  def post_params
    params.require(:post).permit(:name, :image,category_ids: []).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
