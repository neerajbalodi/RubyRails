class DemoController < ApplicationController
  def index
  end

  def hello
    #redirect_to(:controller => 'demo', :action => 'index')
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
  end

  def about
    render('about')
  end

  def contact_us
    if ['us', 'ca'].include?(params[:country])
      @phone = '(800) 555-6789'
    elsif params[:country] == 'uk'
      @phone = '(020) 123-2222'
    elsif params[:country] == 'in'
      @phone = '(+91) 9712342345'
    else
      @phone = '+1 (987) 654-3210'
    end
    render('contact_us')
  end

end
