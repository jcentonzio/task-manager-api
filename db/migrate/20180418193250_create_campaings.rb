class CreateCampaings < ActiveRecord::Migration[5.0]
  def change
    create_table :campaings do |t|
      t.string :origin_email
      t.string :subject
      t.string :url_cart
      t.references :type_campaing, foreign_key: true
      t.references :restriction, foreign_key: true
      t.references :time_for_sending, foreign_key: true
      t.string :hidden_copy
      t.string :auto_login_secret_key
      t.integer :number_product_cart
      t.integer :number_recomndations
      t.references :car_restriction, foreign_key: true
      t.references :option_restriction, foreign_key: true
      t.string :value_restriction
      t.string :url_cart
      t.references :time_for_sending, foreign_key: true
      t.references :when_the_newletter, foreign_key: true
      t.references :who_will_receive_newletter, foreign_key: true
      t.integer :number_last_day

      t.timestamps
    end
  end
end
