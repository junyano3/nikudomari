class CreateMeats < ActiveRecord::Migration[6.0]
  def change
    create_table :meats do |t|
      t.string :meat_brand  ,                    null: false 
      t.integer :prefecture_id  ,                     null: false
      t.string :meat_name  ,                    null: false 
      t.integer :total_weight  ,                     null: false
      t.integer :cost_price    ,                     null: false
   
     
      t.timestamps
    end
  end
end
