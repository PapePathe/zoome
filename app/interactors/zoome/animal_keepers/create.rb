class Zoome::AnimalKeepers::Create
  include Interactor
  include ZooInteractorsAddons

  SUCCESS_MESSAGE = 'Votre gardien a été crée avec succès'.freeze
  CREATE_ERROR    = 'Erreur pendant la créaton du gardien'

  ##
  # Example
  #
  # Zoome::AnimalKeepers::Create.call({params: docteurs_params, zoo: Zoo.find(10)})
  # Zoome::AnimalKeepers::Create.call({params: {first_name: 'Pathe'}, zoo: Zoo.first)
  def call
    context.animal_keeper = animal_keeper

    if animal_keeper.save
      context.message = SUCCESS_MESSAGE
    else
      raise_error CREATE_ERROR
    end
  end

  private

  def animal_keeper
    @animal_keeper ||= zoo.animal_keepers.build(context.params)
  end
end
