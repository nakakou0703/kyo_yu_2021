## usersテーブル
  |Column             |Type   |Options     | 
  |-------------------|-------|------------|
  |user_name          |string |null: false |
  |encrypted_password |string |null: false |
### Association
  has_many :web_confirmations
  has_many :local_confirmations
  has_many :shift_hopes

## itemsテーブル
  |Column           |Type       |Options          |
  |-----------------|-----------|-----------------|
  |name             |string     |null: false      |
  |text             |text       |null: false      |
  |stock_id         |integer    |null: false      |
  |storage_location |string
  |deployment       |string     |null: false      |
  |arrival_day      |date       |null: false      |
### Association
  has_many :web_confirmations
  has_many :local_confirmations

## web_confirmationテーブル
  |Column      |Type       |Options          |
  |------------|-----------|-----------------|
  |user        |references |foreign_key: true|
  |item        |references |foreign_key: true|
## Association
  belongs_to :user
  belongs_to :item

## local_confirmationテーブル
  |Column      |Type       |Options          |
  |------------|-----------|-----------------|
  |user        |references |foreign_key: true|
  |item        |references |foreign_key: true|
## Association
  belongs_to :user
  belongs_to :item