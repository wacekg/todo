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
  end
  def update
    @task.update_attributes(params[:task].permit(:title, :content))
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
end
