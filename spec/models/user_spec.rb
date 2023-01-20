require 'rails_helper'

RSpec.describe User, type: :model do
  subject { create :user }

  describe 'Association' do
    it { is_expected.to have_many(:posts).dependent(:destroy) }
  end

  describe 'Validation' do
    context 'Name' do
      it { should validate_presence_of :name }
    end
  end
end
