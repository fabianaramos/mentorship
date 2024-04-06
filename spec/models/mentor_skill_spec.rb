require 'rails_helper'

RSpec.describe MentorSkill, type: :model do
  it { should belong_to(:mentor) }
  it { should belong_to(:skill) }
end
