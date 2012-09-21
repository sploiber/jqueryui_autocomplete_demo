class MembersController < ApplicationController
  def show
    @names = Brand.all.map(&:name)
    respond_to do |format|
      format.html
      format.json { render :json => @names }
    end
  end
end
