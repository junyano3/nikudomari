class CreateSellingPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :selling_prices do |t|
      t.integer :high_portion  ,               null: false, default: 0
      t.integer :good_portion  ,               null: false, default: 0
      t.integer :normal_portion  ,             null: false, default: 0
      t.integer :bad_portion  ,                null: false, default: 0
      t.integer :minced_portion  ,             null: false, default: 0

      t.timestamps
    end
  end
end
