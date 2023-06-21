# README
# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| store_name         | string | null: false               |
| email              | string | null: false , unique: true|
| encrypted_password | string | null: false               |



### Association

- has_many :meats
- has_many :selling_prices
-------------------------------------------------------

##　　selling_prices テーブル　<!-- 肉の品質ごとの価格設定のテーブル -->
| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| selling_price_id    | integer    | null: false                    | <!-- 肉の品質ごとの価格の一意の識別子 -->
| high_portion        | integer    | null: false                    | <!--肉の品質（特上）の価格 -->
| good_portion        | integer    | null: false                    | <!--肉の品質（上）の価格 -->
| normal_portion      | integer    | null: false                    | <!--肉の品質（並）の価格  -->
| bad_portion         | integer    | null: false                    | <!--肉の品質（下）の価格 -->
| minced_portion      | integer    | null: false                    | <!--肉の品質（ミンチ）の価格 -->



## meats テーブル　<!-- 肉の情報 -->

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| meat_brand          | string     |                                | <!--肉のブランド名(任意) -->
| prefecture_id       | integer    |                                | <!-- 産地（都道府県）と外国（CS、og,）任意 -->
| meat_name           | string     | null: false                    | <!-- 部位の名前（例: タン、ハラミ） -->
| meat_id             | integer    | null: false                    | <!-- 肉の一意の識別子 -->
| cut_id              | references | null: false, foreign_key: true | <!-- 部位の識別子（Cutテーブルとの関連） -->
| total_weight        | integer    | null: false                    | <!-- 仕入れた肉の総重量 -->
| cost_price          | integer    | null: false                    | <!-- 総重量の原価 -->


### Association

- belongs_to :user
- has_many :cuts
-------------------------------------------------------

## cuts テーブル <!-- 肉のクオリティを管理するテーブル -->

| Column                          | Type      | Options                        |
| ------------------------------- | --------- | ------------------------------ |
| cut_id                          | integer   | null: false                    |  <!-- 部位の一意の識別子-->
| cut_name                        | string    | null: false                    |  <!-- 題名欄担当者や日付を好きに入れる -->
| yield             	            | integer   | null: false                    | <!-- 実際に販売できる肉の総重量 -->
| high_quality                    | integer   | null: false                    |  <!-- 肉の品質（特上）のグラム -->
| good_quality                    | integer   | null: false                    |  <!-- 肉の品質（上）のグラム -->
| normal_quality                  | integer   | null: false                    |  <!-- 肉の品質（並）のグラム -->
| bad_quality                     | integer   | null: false                    |  <!-- 肉の品質（下）のグラム -->
| minced_quality                  | integer   | null: false                    |  <!-- 肉の品質（ミンチ）のグラム -->
| loss_portion                    | integer   | null: false                    | <!-- ロス -->

| selling_price_id                | references| null: false                    |  <!-- 品質ごとの売価のid(selling_price テーブルとの関連)-->
| user                            | references| null: false, foreign_key: true |  <!-- 投稿店のユーザーid -->
 

### Association

- has_one :meats
- belongs_to :selling_prices

