class MainController < ApplicationController
  
  def index
    #render('index')
  end

  def about
    @created_by = "Arvind"
    @id = params['id']
    @page = params[:page]
    #render('about')

  end

  def hello
    redirect_to(action: 'index')
    #redirect_to('https://google.com') testing with direct url
  end

end
