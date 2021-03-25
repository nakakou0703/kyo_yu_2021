## usersテーブル
  |Column             |Type   |Options     | 
  |-------------------|-------|------------|
  |user_name          |string |null: false |
  |encrypted_password |string |null: false |
### Association
  has_many :items
  has_many :item_confirmations
  has_many :shift_hopes

## itemsテーブル
  |Column           |Type       |Options          |
  |-----------------|-----------|-----------------|
  |name             |string     |null: false      |
  |text             |text       |null: false      |
  |user             |references |foreign_key: true|
  |stock_id         |integer    |null: false      |
  |storage_location |string     |null: false      |
  |deployment       |string     |null: false      |
  |arrival_day      |integer    |null: false      |
### Association
  belongs_to :user
  has_one :item_confirmation

## item_confirmationsテーブル
  |Column        |Type        |Options          |
  |--------------|------------|-----------------|
  |confirmation1 |string      |null: false      |
  |confirmation2 |string      |null: false      |
  |user          ｜references |foreign_key: true|
## Association
  belongs_to :user
  belongs_to :item

## shift_hopesテーブル
  |Column    |Type       |Options          |
  |----------|-----------|-----------------|
  |hope_day  |string     |null: false      |
  |hope_time |integer    |null: false      |
  |user      |references |foreign_key: true|
## Association
  belong_to :user