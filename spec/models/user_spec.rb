require 'rails_helper'
RSpec.describe 'User', type: :model do
  subject do
    User.create(id: 1, name: 'User Test', email: 'usertest@tes.ts', password: '123456', confirmed_at: Time.now.utc)
  end
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end