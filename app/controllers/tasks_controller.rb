class TasksController < ApplicationController
  before_action :set_task, except: [:new, :create, :index]
  def index
    @tasks = Task.all.order(created_at: :desc)
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.create(tasks_params)
  end
  def edit
  end
  def update
    @task.update_attributes(tasks_params)
  end
  def destroy
    @task.destroy
    redirect_to action: "index"          # przekierowanie do index
  end
  def show
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end
  def tasks_params
    params.require(:task).permit(:title, :content)
  end
end
