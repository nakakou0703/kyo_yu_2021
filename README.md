# README.md

## アプリ名
kyoku2021 

## 概要
スタッフ間で新入荷商品とリフト希望の共有を同時にすることができるアプリケーションを作成しました。</br>
ユーザー登録をすることで新入荷商品登録とシフト希望を入力できます。新入荷商品は、登録したスタッフが退社後に削除できないと残り続けてしまうので、誰でも削除できます。</br>
同じく編集も誰でも出来ます。来月シフト希望をGoogleCalendarにて管理します。</br>
レスポンシブにも対応しているので、スマホからでもご確認いただけます。

## URL
https://kyo-yu-2021.herokuapp.com/

## テスト用アカウント
### Basic認証 ID/Pass
・ID: admin</br>
・Pass: 2222
### ログイン
・メールアドレス：777@777</br>
・パスワード：777777

## 開発状況
### 開発環境
Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code / javascript / jquery / bootstrap / AWS S3 / RSpec / GoogleCalendar API /
### 開発期間と平均作業時間
・開発期間：17日間</br>
・1日平均作業時間：約12時間</br>
・合計：約204時間程度

## 目指した課題解決
小売で働いている方のスタッフ間での情報共有不足という課題解決が出来ればと作成しました。</br>
新商品が入荷しても、当日出勤スタッフしか実際に確認できず、例えばLINE等で情報をあげたとしても既読になるだけで、誰が確認しているかは分かりませんし、どんどん埋もれていっていしまいます。</br>
なので専用のwebアプリを作成しました。機能としては入荷日・商品名(曖昧でもOK)での検索は勿論、商品詳細には『商品名』『商品画像』『商品詳細』『在庫有無』『在庫保管場所』『展開場所』『入荷日』があることでイメージしやすい様にしました。さらに『webで確認』『実際に確認』の二段階確認、それぞれに『確認者リスト』を設けて誰が確認しているのかスタッフ間で共有できます。</br>
GoogleCalendarを使用したシフト希望管理も、スタッフ間で誰がどこに希望を出しているのか共有する事で『この日人がいなさそうだから入ろう。』など、シフト希望を提出する段階で、ある程度人員不足の日が解消できればと思い実装しました。

## 洗い出した要件
以下のシートをご覧ください。アプリケーションのペルソナが持つ課題を洗い出し、そして解決策となる追加実装の仕様を洗い出しました。</br>
https://docs.google.com/spreadsheets/d/1ZfS3Mv_KAHnzXIgoKDqkYtzdCKZnSxU1N3a17ownPK0/edit?usp=sharing

## 各機能
・ユーザー新規登録</br>
https://gyazo.com/46feaf6c413320509c3910be4d33eb6e</br>
必要事項記入で登録完了しトップページに遷移し、入力に不備がある場合はここに止まり続けます。</br>
・ユーザーログイン機能</br>
https://gyazo.com/e44aef4439b800e3afefd676e13875ea</br>
必要事項記入で登録完了しトップページに遷移し、入力に不備がある場合はここに止まり続けます。</br>
・ユーザー削除機能</br>
https://gyazo.com/f19bbf8df43d3c72319972aa6f50a4a0</br>
自身のアカウントを削除します。『削除する』をクリックすると最終確認のためのダイアログを表示します。</br>
・商品検索</br>
https://gyazo.com/650786429167fbbb8980788be5d890f2</br>
https://gyazo.com/ae67cd5da1bc78e6025624af39b41398</br>
https://gyazo.com/41e99904999a44d23a442802050ceb09</br>
商品名、入荷日で検索出来ます(曖昧でもOK)。検索ワードを入れずにクリックした場合は最新のものが10個検索結果として表示されます。</br>
・新商品登録</br>
https://gyazo.com/3d92d8ae00a2713ecd7f1bd64fd0a13d</br>
https://gyazo.com/c4a25c09de80c3a6f7eef68346f83993</br>
必須項目が入力されていないと登録できず、そのまま止まります。エラー文は日本語表記です。在庫がない場合もあり得ますので在庫の場所のみバリデーションかけていません。</br>
・詳細編集</br>
https://gyazo.com/c86024ae6ccc7b2c1f4cc031e8ec3b17</br>
必須項目が入力されていないと登録できず、そのまま止まります。エラー文は日本語表記です。画像を選択しなければ元の画像がそのまま表示されます。在庫がない場合もあり得ますので在庫の場所のみバリデーションかけていません。</br>
・商品削除</br>
https://gyazo.com/7add91c07790bf7339a75c6096a83fc7</br>
詳細ページの削除ボタンをクリックすると、最終確認のためのダイアログを表示します。</br>
・確認ボタン</br>
https://gyazo.com/a4eed11bd24cf01fa4cad8047a2fa0cb</br>
『確認ボタン』をクリックするとDBに保存され、『確認者リスト』をクリックすると誰が確認しているか表示されます。</br>
・シフト希望入力</br>
https://gyazo.com/5c8ade033db3ecec1d2b70ecb59c2e3b</br>
下部の『Googleカレンダー』をクリックすると入力できるのでそちらで入力。入力したデータが反映されます。

## 実装予定
会社からの全スタッフ共有連絡事項一覧(こちらも確認ボタン機能実施)。</br>
館(デベロッパー)からの全スタッフ共有連絡事項一覧(こちらも確認ボタン機能実施)。

## DB設計
### ER図
https://gyazo.com/a5e1fab8838abcc6f74f84658bb62807
### usersテーブル
  |Column             |Type   |Options     | 
  |-------------------|-------|------------|
  |user_name          |string |null: false |
  |encrypted_password |string |null: false |
### Association
  has_many :web_confirmations</br>
  has_many :local_confirmations</br>
  has_many :shift_hopes

### itemsテーブル
  |Column           |Type       |Options          |
  |-----------------|-----------|-----------------|
  |name             |string     |null: false      |
  |text             |text       |null: false      |
  |stock_id         |integer    |null: false      |
  |storage_location |string
  |deployment       |string     |null: false      |
  |arrival_day      |date       |null: false      |
### Association
  has_many :web_confirmations</br>
  has_many :local_confirmations

### web_confirmationテーブル
  |Column      |Type       |Options          |
  |------------|-----------|-----------------|
  |user        |references |foreign_key: true|
  |item        |references |foreign_key: true|
### Association
  belongs_to :user</br>
  belongs_to :item

### local_confirmationテーブル
  |Column      |Type       |Options          |
  |------------|-----------|-----------------|
  |user        |references |foreign_key: true|
  |item        |references |foreign_key: true|
### Association
  belongs_to :user</br>
  belongs_to :item
  