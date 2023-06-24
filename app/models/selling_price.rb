class SellingPrice < ApplicationRecord
  validates :product_name, presence: true
  validates :high_portion, :good_portion, :normal_portion, :bad_portion, :minced_portion, presence: true, format: { with: /\A\d+\z/, message: "は半角数字のみ入力してください" }
 
  # belongs_to :user
  # has_many :cuts
end
