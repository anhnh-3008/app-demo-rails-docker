require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { create :post }

  describe 'Association' do
    it { is_expected.to belong_to :user }
  end

  describe 'Validation' do
    context 'Title' do
      it { should validate_presence_of :title }

      it { should validate_length_of(:title).is_at_most 125 }
    end

    context 'Content' do
      it { should validate_length_of(:content).is_at_most 500 }
    end
  end
end
