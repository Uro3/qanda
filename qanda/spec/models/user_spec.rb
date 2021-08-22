require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with name" do
    user = FactoryBot.build(:user, name: 'testname')
    expect(user).to be_valid
  end

  it "is invalid without name" do
    user = FactoryBot.build(:user, name: '')
    expect(user).to be_invalid
  end

  it "is invalid without email" do
    user = FactoryBot.build(:user, email: '')
    expect(user).to be_invalid
  end

  it "is invalid without password" do
    user = FactoryBot.build(:user, password: '')
    expect(user).to be_invalid
  end

  it "is valid with 6 character password" do
    password = 'abcdef'
    user = FactoryBot.build(:user, password: password, password_confirmation: password)
    expect(user).to be_valid
  end

  it "is invalid with 5 character password" do
    password = 'abcde'
    user = FactoryBot.build(:user, password: password, password_confirmation: password)
    expect(user).to be_invalid
  end
end
