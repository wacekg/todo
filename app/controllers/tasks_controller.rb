class TasksController < ApplicationController
  before_action :set_task, except: [:new, :create, :index]
  def index
    @tasks = Task.all.order(created_at: :desc)
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.create(params[:task].permit(:title, :content))
  end
  def edit
    set_task
  end
  def update
    set_task
    @task.update_attributes(params[:task].permit(:title, :content))
  end
  def destroy
    set_task
    @task.destroy
    redirect_to action: "index"          # przekierowanie do index
  end
  def show
    set_task
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end
end
