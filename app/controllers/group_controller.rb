class GroupController < ApplicationController



    def index
       @group = Group.all
       render json: @group
    end

    def show
    end

    def new
        @group = Group.new
    end

    def create
    end

    def update
    end

    def destroy
    end


    private

    def set_group
        @group = Group.find(params[:id])
    end

    def group_params
        params.permit(:id, :name, :qty)
    end
end