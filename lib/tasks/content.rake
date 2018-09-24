namespace :content do
  task seed: :environment do
    %w(AnimalKeeper Doctor Zoo Manager).each { |m| m.constantize.delete_all }

    man = Manager.new name: 'Pathe'
    zoo = FactoryBot.create :zoo, manager: man

    10.times do
      FactoryBot.create :animal_keeper, zoo: zoo
      zoo.doctors.create!(name: FFaker::NameFR.first_name)
    end

  end
end
