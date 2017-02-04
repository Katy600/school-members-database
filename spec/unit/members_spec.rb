require_relative '../spec_helper'
describe Member do
  it "has a name" do
    expect(subject).to respond_to(:name)
  end
  it "has an id" do
    expect(subject).to respond_to(:id)
  end

  it "has an email" do
    expect(subject).to respond_to(:email)
  end
end
