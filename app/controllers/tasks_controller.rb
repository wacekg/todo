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
    # binding.pry
    @task = Task.find(params[:id]) #wskazanie taska do usunięcia - nie działa
    @task.destroy                  #usunięcia (.destroy - metoda railaów ?)
    redirect_to task_path          # aktualizacja ścieżek w routes ?
  end
  def show
    @task = Task.find(params[:id])
  end
end
