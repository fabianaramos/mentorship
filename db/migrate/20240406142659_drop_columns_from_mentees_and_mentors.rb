class DropColumnsFromMenteesAndMentors < ActiveRecord::Migration[7.1]
  def change
    remove_column :mentees, :name
    remove_column :mentees, :email

    remove_column :mentors, :name
    remove_column :mentors, :email
  end
end
