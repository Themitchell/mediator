class PhotoalbumsController < ApplicationController

  def index
    @photoalbums = Photoalbum.all
  end
end
