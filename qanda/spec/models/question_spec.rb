require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:user) { FactoryBot.create(:user) }

  it "is valid with title and content" do
    question = FactoryBot.build(:question, user: user)
    expect(question).to be_valid
  end

  it "is invalid without title" do
    question = FactoryBot.build(:question, user: user, title: '')
    expect(question).to be_invalid
  end

  it "is invalid without content" do
    question = FactoryBot.build(:question, user: user, content: '')
    expect(question).to be_invalid
  end

  it "is invalid without relation to user" do
    question = FactoryBot.build(:question, user: nil)
    expect(question).to be_invalid
  end
end
