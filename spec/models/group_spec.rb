require 'rails_helper'
RSpec.describe 'Group', type: :model do
  subject do
    @user= User.create(id: 1, name: 'User Test', email: 'usertest@tes.ts', password: '123456', confirmed_at: Time.now.utc)
    Group.create(name: 'Group Test', icon: 'https://www.google.com', user_id: @user.id)
  end
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end