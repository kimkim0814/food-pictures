require 'rails_helper'

describe PostsController do
  describe '#new' do
    it "new.html.erbに遷移すること" do
      get :new
      expect(response).to render_template :new

      end
    end
    describe "#index" do

      it "トップページが正常にレスポンスするか" do
        get :index
        expect(response).to be_success
      end
    end
end