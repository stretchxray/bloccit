require 'rails_helper'

RSpec.describe Topic, type: :model do

  let(:public) { true }
  let(:topic) { create(:topic) }
  it { is_expected.to have_many(:posts) }

  it { is_expected.to have_many(:labelings) }
# #10
  it { is_expected.to have_many(:labels).through(:labelings) }

# #1
  describe "attributes" do
    it "has name, description, and public attributes" do
       expect(topic).to have_attributes(name: topic.name, description: topic.description)
    end

# #2
    it "is public by default" do
      expect(topic.public).to be(true)
    end
  end
end
