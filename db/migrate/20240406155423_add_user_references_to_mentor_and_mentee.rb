class AddUserReferencesToMentorAndMentee < ActiveRecord::Migration[7.1]
  def change
    change_table :mentees do |t|
      t.references :user
    end

    change_table :mentors do |t|
      t.references :user
    end
  end
end
