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
    before_action
  end
  def update
    before_action
    @task.update_attributes(params[:task].permit(:title, :content))
  end
  def destroy
    before_action
    @task.destroy
    redirect_to action: "index"          # przekierowanie do index
  end
  def show
    before_action
  end

  private
  def before_action
    @task = Task.find(params[:id])
  end
end
