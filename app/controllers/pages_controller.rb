class PagesController < ApplicationController
  def new
    @page = Page.new
  end

  def create
    @page = Page.new(params_pages)
    @page.save
   
  end
  
  private
  
  def params_pages
    params.require(:page).permit(:title,:content,:email)
    
end
end
