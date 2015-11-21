class PagesController < ApplicationController
  def new
    @page = Page.new
    if params[:back]
      @page = Page.new(params_pages)
    end
  end
  
  def confirm
    @page = Page.new(params_pages)
    if @page.valid?
      render action: 'confirm'
      
      return
    else
      render action: 'new'
      return
      
    end
  end
  
    def complete
       
      if params[:back]
        render :new
    elsif 
       @page = Page.new(params_pages)
        Mailer.sendmail(@page).deliver #.deliverでメールを送信
            
      end
  end
      
  private
  
  def params_pages
    params.require(:page).permit(:title,:content,:email)
    
  end
end
