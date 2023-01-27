class TasksController < ApplicationController
  def index
    # @page =params['page'].to_i
    # @tasks = ['laundry', 'clean porch', 'wash dishes', 'mow lawn']
    @tasks = Task.order(:position) #instance variable set
  end

  def show
    @task =Task.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
