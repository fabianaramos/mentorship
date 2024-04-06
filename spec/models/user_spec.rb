require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:password) }

    it { is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity }

    it { should have_one(:mentor) }
    it { should have_one(:mentee) }
  end
end
