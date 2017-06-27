class TagsController < ApplicationController
  def show
    @tag = Tag.find_by(name: params[:id])
    @manuals = @tag.manuals
  end
end