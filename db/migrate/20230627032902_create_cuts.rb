class CreateCuts < ActiveRecord::Migration[6.0]
  def change
    create_table :cuts do |t|
      t.string :cut_name ,                    null: false 
      t.integer :yield  ,                     null: false
      t.integer :high_portion  ,              null: false
      t.integer :good_portion  ,              null: false
      t.integer :normal_portion ,             null: false
      t.integer :bad_portion  ,               null: false
      t.integer :minced_portion ,             null: false
      t.integer :loss_portion ,               null: false  
      t.timestamps  
     
      t.references :selling_price ,           null: false,foreign_key: true
      t.references :user,                     null: false, foreign_key: true
    end
  end
end
