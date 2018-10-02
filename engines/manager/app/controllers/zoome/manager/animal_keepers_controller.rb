require_dependency "zoome/manager/application_controller"

module Zoome::Manager
  class AnimalKeepersController < ApplicationController
    def index
    end

    def new
      @animal_keeper = AnimalKeeper.new
    end

    def create
      args   = {params: animal_keeper_params, zoo: current_manager.zoos.first}
      result = Zoome::AnimalKeepers::Create.call(args)

      if result.success?
        redirect_to animal_keepers_path, notice: result.message
      else
        flash.now[:warning] = result.error
        @animal_keeper      = result.animal_keeper
        render :new
      end
    end

    private

    def animal_keeper_params
      params.require(:animal_keeper).permit(:first_name, :last_name, :birth_date, :job)
    end
  end
end
