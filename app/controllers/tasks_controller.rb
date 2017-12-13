class TasksController < ApplicationController
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
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task].permit(:title, :content))
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to action: "index"          # przekierowanie do index
  end
  def show
    @task = Task.find(params[:id])
  end
end
