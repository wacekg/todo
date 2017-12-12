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
  end
  def update
  end
  def destroy
    @task.destroy
    redirect_to task_path
  end
  def show
    @task = Task.where() #warunek wybranego taska lub .find(Id wybranego taska)
  end
end
