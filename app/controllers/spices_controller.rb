class SpicesController < ApplicationController

    # GET /spices
    def index 
        spices = Spice.all
        render json: spices
    end

    # # GET /spices/:id
    # def show
    #     spice = Spice.find_by(id: params[:id])
    #     render json: spice
    # end

    # POST /plants
    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    # PATCH /plants/:id
    def update
        spice = Spice.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice
    end

    # DELETE /plants/:id
    def destroy
        spice = Spice.find_by(id: params[:id])
        spice.destroy
        head :no_content
    end
        

    private
    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end


end
