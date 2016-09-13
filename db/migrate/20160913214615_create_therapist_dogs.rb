class CreateTherapistDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :therapist_dogs do |t|
      t.string :name
      t.string :date_of_birth
      t.string :breed
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
