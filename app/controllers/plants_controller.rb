class PlantsController < ApplicationController

    def index 
        plants = Plant.all
        render json: plants, status: :ok
        end

        def show
            plant = Plant.find_by(id: params[:id])
            render json: plant, status: :ok
        end

        def create 
        plants = Plant.create(plants_params)
        render json: plants, status: :created
        end

        private

        def plants_params
        params.permit(:name, :image, :price)
        end
end
