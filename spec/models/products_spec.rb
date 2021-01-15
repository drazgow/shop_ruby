require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'when data is provided' do
    let(:params) { {name: 'Sneakers', price: 49.99, quantity:4} }

    it 'saves the instance' do
      expect(described_class.new(params).save!).to eq true
    end

    it { expect { described_class.new(params).save! }.to change { Product.all.size}.by(1) }

  end
end
