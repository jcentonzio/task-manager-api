class CreateCarRestrictions < ActiveRecord::Migration[5.0]
  def change
    create_table :car_restrictions do |t|
      t.string :name

      t.timestamps
    end
  end
end
