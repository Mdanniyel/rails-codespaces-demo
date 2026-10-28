class TasksController < ApplicationController
  before_action :set_task, only: [:toggle, :destroy]

  def create
    @task = Task.new(task_params)
    @task.completed = false

    if @task.save
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Task was successfully added to SQLite!" }
        format.json { render json: @task, status: :created }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path, alert: "Failed to add task: #{@task.errors.full_messages.join(', ')}" }
        format.json { render json: { errors: @task.errors.full_messages }, status: :unprocessable_entity }
      end
    end
  end

  def toggle
    @task.update(completed: !@task.completed)
    respond_to do |format|
      format.html { redirect_to root_path, notice: "Task status updated in SQLite!" }
      format.json { render json: @task }
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: "Task removed from SQLite!" }
      format.json { head :no_content }
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title)
  end
end
