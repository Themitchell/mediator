require 'spec_helper'

describe DashboardController do
  describe "GET 'index'" do
    before { get :index }
    it { should render_template :index }
  end
end
