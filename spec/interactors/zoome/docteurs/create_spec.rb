require 'spec_helper'

RSpec.describe Zoome::Docteurs::Create, type: :interactor do
  describe '.call' do
    let(:params)  { {name: 'A given doctor'} }
    let(:manager) { FactoryBot.create(:manager) }
    let(:zoo)     { FactoryBot.create(:zoo, manager: manager) }

    context 'With valid credentials' do
      subject(:context) { described_class.call(params: params, zoo: zoo) }

      it 'succeeds' do
        expect(context).to be_success
      end

      it 'has the same name as in given params' do
        expect(context.doctor.name).to eq(params[:name])
      end
    end

    context 'With not a zoo' do
      subject(:context) { described_class.call(params: params, zoo: nil) }

      it 'fails' do
        expect(context).to be_failure
      end

      it 'has error message in context' do
        expect(context.error).to eq(described_class::NOT_A_ZOO_ERROR)
      end
    end

    context 'With invalid credentials' do
      subject(:context) { described_class.call(params: {name: ''}, zoo: zoo) }

      it 'fails' do
        expect(context).to be_failure
      end

      it 'has error message in context' do
        expect(context.error).to eq(described_class::CREATE_ERROR)
      end
    end
  end
end
