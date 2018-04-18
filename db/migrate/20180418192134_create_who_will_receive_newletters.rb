class CreateWhoWillReceiveNewletters < ActiveRecord::Migration[5.0]
  def change
    create_table :who_will_receive_newletters do |t|
      t.string :name

      t.timestamps
    end
  end
end
