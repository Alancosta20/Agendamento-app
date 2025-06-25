class ServicesController < ApplicationController

    def index
        @services = Current.user.services
    end

    def new 
        @service = Service.new
    end

    def create
        @service = Current.user.services.new(services_params)
        if @service.save
            redirect_to services_path
        else
            render :new
        end
    end

    def edit
        @service = Service.find(params[:id])
    end
    
    def update
        @service = Service.find(params[:id])
        if @service.update(services_params)
            redirect_to services_path
        else
            render :edit
        end 
    end

    def destroy
        @service = Service.find(params[:id])
        @service.destroy

        redirect_to services_path
        
    end
    
    

    

    private

    def services_params
          params.require(:service).permit(:name, :value, :duration, :description)
    end
    
end
