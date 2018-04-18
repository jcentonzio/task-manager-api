class CreateWhenTheNewletters < ActiveRecord::Migration[5.0]
  def change
    create_table :when_the_newletters do |t|
      t.string :name

      t.timestamps
    end
  end
end
