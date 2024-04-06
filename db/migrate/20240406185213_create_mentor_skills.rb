class CreateMentorSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :mentor_skills do |t|
      t.references :mentor
      t.references :skill

      t.timestamps
    end
  end
end
