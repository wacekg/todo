class TasksController < ApplicationController
  def index
    @tasks = Task.all.order("")
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.create(title: ' ', content: ' ')
  end
  def edit
  end
  def update
  end
  def destory
  end
  def show
  end
end
