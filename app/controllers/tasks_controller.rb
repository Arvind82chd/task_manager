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
    @count = Task.count # to add a pre defined position
    @task = Task.new(position: @count + 1)
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      # This will only render the new page not execute the new action.
      render('new')
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render('edit')
    end
  end

  def delete
  end

  def destroy
  end

  private

  def task_params # for stronger params
    params.require(:task).permit(
      :name,
      :position,
      :completed,
      :description
    )
  end

end
