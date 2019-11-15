class TasksController < ApplicationController
    def create
        @bucket = Bucket.find(params[:bucket_id])
        @task = @bucket.tasks.create(task_params)
        redirect_to bucket_path(@bucket)
      end
      def destroy
        @bucket = Bucket.find(params[:bucket_id])
        @task = @bucket.tasks.find(params[:id])
        @task.destroy
        redirect_to bucket_path(@bucket)
      end
      private
        def task_params
          params.require(:task).permit(:name, :description)
        end
    end

