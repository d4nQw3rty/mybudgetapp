require 'rails_helper'

RSpec.describe 'Payments', type: :model do
  subject do
    @user1 = User.create(id: 1, name: 'test', email: 'test@test.com', password: '123456', confirmed_at: Time.now.utc)
    @group1 = Group.create(name: 'Group test', icon: nil, user_id: @user1.id)
    Payment.create(name: 'test', amount: 1000, group_id: @group1.id, user_id: @user1.id)
  end
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without an amount' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
end
