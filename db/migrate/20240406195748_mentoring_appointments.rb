class MentoringAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :mentoring_appointments do |t|
      t.references :mentor
      t.references :mentee
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
