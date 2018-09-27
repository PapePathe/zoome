require 'rails_helper'
describe "Manager engine", type: :system do
  context 'not logged in' do
    before :each do
      visit managers.root_path
    end
    it { expect(page).to have_link('Tableau de bord') }
    it { expect(page).to have_link('Docteurs')        }
    it { expect(page).to have_link('Gardiens')        }
    it { expect(page).to have_link('Animaux')         }
    it { expect(page).to have_link('Familles')        }
  end
end
