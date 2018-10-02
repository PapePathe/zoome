class Zoome::Docteurs::Create
  NOT_A_ZOO_ERROR = 'Impossbible de créer un docteur sans zoo'.freeze
  SUCCESS_MESSAGE = 'Docteur ajouté'.freeze
  CREATE_ERROR    = 'Une erreur empêche la création du docteur'.freeze

  include Interactor
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

  def check_zoo!
    unless zoo.is_a?(Zoo)
      raise_error NOT_A_ZOO_ERROR
    end
  end

  def zoo
   context.zoo
  end

  def raise_error(message)
    context.error = message
    context.fail!
  end
end
