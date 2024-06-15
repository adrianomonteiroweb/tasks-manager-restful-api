class TasksController < ActionController::API
    def index
        render json: Task.all
    end

    def show
        render json: Task.find(params[:id])
    end

    def create
        render json: Task.create(task_params)
    end

    def update
        render json: Task.find(params[:id]).update(task_params)
    end

    def destroy
        render json: Task.find(params[:id]).destroy
    end

    def completed
        render json: Task.find(params[:id]).update(completed: true)
    end
end
