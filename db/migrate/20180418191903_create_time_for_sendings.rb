class CreateTimeForSendings < ActiveRecord::Migration[5.0]
  def change
    create_table :time_for_sendings do |t|
      t.string :name

      t.timestamps
    end
  end
end
