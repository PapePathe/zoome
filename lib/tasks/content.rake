namespace :content do
  task seed: :environment do
    AnimalKeeper.delete_all
    Zoo.delete_all
    Manager.delete_all

    man = Manager.new name: 'Pathe'
    zoo = Zoo.create! name: 'Parc de Hann', manager: man

    10.times do
      zoo.animal_keepers.create(name: FFaker::NameFR.first_name)
      zoo.doctors.create(name: FFaker::NameFR.first_name)
    end

  end
end
