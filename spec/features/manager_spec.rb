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
      login_manager! manager
      visit managers.root_path
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
    end
  end

  context 'When not logged in' do
    before :each do
      visit managers.root_path
    end

    it { expect(current_path).to eq(managers.connexion_path) }
  end
end
