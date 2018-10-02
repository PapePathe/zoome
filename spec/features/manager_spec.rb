require 'rails_helper'
describe "Manager engine", type: :system do

  def login_manager!(manager)
    visit         managers.connexion_path
    fill_in       'session[email]',    with: manager.email
    fill_in       'session[password]', with: manager.password
    click_button 'Connexion'
  end

  context 'When logged in' do
    let(:manager) { create(:manager) }

    before(:each) do
      create(:zoo, manager: manager)
      login_manager! manager
      visit managers.root_path
    end

    context "Manage doctors" do
      before(:each) do
        visit managers.doctors_path
      end

      it 'can create a new one' do
        click_link   'Nouveau'
        fill_in      'doctor[name]', with: 'Doctor WHO'
        click_button 'enregistrer'
        expect(page).to have_content(Zoome::Docteurs::Create::SUCCESS_MESSAGE)
      end
    end

    context 'Manage animal keepers' do
      before(:each) do
        visit managers.animal_keepers_path
      end

      it 'can create a new one' do
        click_link   'Nouveau'
        fill_in      'animal_keeper[job]',         with: 'Gardien'
        fill_in      'animal_keeper[first_name]',  with: 'First Name'
        fill_in      'animal_keeper[last_name]',   with: 'Last Name'
        fill_in      'animal_keeper[birth_date]',  with: '1985-08-21'
        click_button 'enregistrer'
        expect(page).to have_content(Zoome::AnimalKeepers::Create::SUCCESS_MESSAGE)
      end
    end

    context "Nav links" do
      it { expect(page).to have_link('Tableau de bord') }
      it { expect(page).to have_link('Docteurs') }
      it { expect(page).to have_link('Gardiens') }
      it { expect(page).to have_link('Animaux') }
      it { expect(page).to have_link('Familles') }
    end

    context "Interactions" do
      it "can navigate to doctors page" do
        click_link 'Docteurs'
        expect(current_path).to eq(managers.doctors_path)
      end

      it "can navigate to animal keepers page" do
        click_link 'Gardiens'
        expect(current_path).to eq(managers.animal_keepers_path)
      end

      it "can navigate to animals page" do
        click_link 'Animaux'
        expect(current_path).to eq(managers.animals_path)
      end

      it "can navigate to families page" do
        click_link 'Familles'
        expect(current_path).to eq(managers.families_path)
      end
    end
  end

  context 'When not logged in' do
    before :each do
      visit managers.root_path
    end

    it { expect(current_path).to eq(managers.connexion_path) }
  end
end
