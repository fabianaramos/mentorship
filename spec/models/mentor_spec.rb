require "rails_helper"

RSpec.describe Mentor, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:skills) }
end
