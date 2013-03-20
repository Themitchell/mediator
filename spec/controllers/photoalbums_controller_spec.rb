require 'spec_helper'

describe PhotoalbumsController do

  describe "GET 'index'" do
    let!(:photoalbum) { create :photoalbum }
    before { get :index }

    it 'assigns Photoalbums' do
      photoalbums = assigns(:photoalbums)
      photoalbums.should include photoalbum
    end

    it { should render_template :index }
  end
end
