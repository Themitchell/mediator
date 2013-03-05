require 'spec_helper'

describe VideosController do
  describe "GET 'index'" do
    before { get :index }
    it { should render_template :index }
  end
end
