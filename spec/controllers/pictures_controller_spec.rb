require 'spec_helper'

describe PicturesController do

  describe "GET 'index'" do
    let!(:picture) { create :picture }
    before { get :index, photoalbum_id: picture.photoalbum }

    it 'assigns pictures' do
      pictures = assigns(:pictures)
      pictures.should include picture
    end

    it { should render_template :index }
  end
end
