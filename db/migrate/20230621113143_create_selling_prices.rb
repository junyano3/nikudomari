class CreateSellingPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :selling_prices do |t|
      t.string  :product_name ,               null: false ,default: ""   
      t.integer :high_portion  ,              null: false
      t.integer :good_portion  ,              null: false
      t.integer :normal_portion ,             null: false
      t.integer :bad_portion  ,               null: false
      t.integer :minced_portion ,             null: false
     
      t.timestamps
    end
  end
end
