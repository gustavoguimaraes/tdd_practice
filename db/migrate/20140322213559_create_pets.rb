class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.references :person
      t.timestamps
    end
  end
end
