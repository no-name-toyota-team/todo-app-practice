class TasksController < ApplicationController
  before_action :set_task, only: %i[ edit update destroy ]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(content: params[:task][:content])
    if @task.save
      redirect_to tasks_path 
    else
      render :new
    end
  end

  def destroy
    @task.destroy
  end

  def set_task
    @task = Task.find(params[:task][:id])
  end
end
