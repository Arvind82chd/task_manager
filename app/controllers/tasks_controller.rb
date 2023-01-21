class TasksController < ApplicationController
  def index
    @page =params['page'].to_i
    @tasks = ['laundry', 'clean porch', 'wash dishes', 'mow lawn']
  end

  def new
  end

  def edit
  end
end
