require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "Attributes" do
    subject { Item.column_names }

    it { is_expected.to include "name" }
  end

  describe "Methods" do
    describe "#message" do
      it "returns a valid message" do
        item = Item.create(name: 'iPhone')
        expect(item.message).to eq "Item name is iPhone"
      end

      it 'name is valid' do
        item = Item.create(name: 'iPhone')
        sleep 360
        expect(item.name).to eq "iPhone"
      end
    end
  end
end