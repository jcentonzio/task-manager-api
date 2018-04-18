class CreateTypeCampaings < ActiveRecord::Migration[5.0]
  def change
    create_table :type_campaings do |t|
      t.string :name

      t.timestamps
    end
  end
end
