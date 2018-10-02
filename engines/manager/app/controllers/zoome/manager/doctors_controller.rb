module Zoome::Manager
  class DoctorsController < ApplicationController
    def index
    end

    def new
      @doctor = Doctor.new
    end

    def create
      interactor = Zoome::Docteurs::Create.call({params: doctor_params, zoo: current_manager.zoos.first})
      @doctor    = interactor.doctor
      if interactor.success?
        redirect_to doctors_path, notice: interactor.message
      else
        flash.now[:danger] = interactor.error
        render :new
      end
    end

    private

    def doctor_params
      params.require(:doctor).permit(:name)
    end
  end
end
