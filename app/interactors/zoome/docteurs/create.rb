class Zoome::Docteurs::Create
  include Interactor
  include ZooInteractorsAddons

  SUCCESS_MESSAGE = 'Docteur ajouté'.freeze
  CREATE_ERROR    = 'Une erreur empêche la création du docteur'.freeze

  ##
  # Example
  #
  # Zoome::Docteurs::Create.call({params: docteurs_params, zoo: Zoo.find(10)})
  # Zoome::Docteurs::Create.call({params: {name: 'Pathe'}, zoo: Zoo.first)
  def call
    check_zoo!
    context.doctor  = doctor
    save!
  end

  private

  def doctor
    @doctor ||= zoo.doctors.build(context.params)
  end

  def save!
    if doctor.save
      context.message = SUCCESS_MESSAGE
    else
      context.doctor  = doctor
      raise_error CREATE_ERROR
    end
  end
end
