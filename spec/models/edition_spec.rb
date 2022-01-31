RSpec.describe Edition, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column(:city).of_type(:string) }
    it { is_expected.to have_db_column(:latitude).of_type(:float) }
    it { is_expected.to have_db_column(:longitude).of_type(:float) }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :city }
  end

  describe 'Factory' do
    it 'is expected to have a valid Factory' do
      expect(create(:edition)).to be_valid
    end
  end
  describe 'Associations' do
    it { is_expected.to have_many(:articles) }
  end
end
