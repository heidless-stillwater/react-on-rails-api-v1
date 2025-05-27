require 'rails_helper'

RSpec.describe Post, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  # subject { described_class.new }
  
  subject {
    described_class.new(title: "Anything",
                        body: "Lorem ipsum")
  }

  it "is valid with valid attributes" do
    subject.title = "Anything"
    subject.body = "Anything"
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.body = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
  end
  
end
