# README
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false, index: true|
### Association
- has_many :group_users
- has_many :comments
- has_many  :groups,  through:  :group_users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
### Association
- has_many :comments
- has_many :group_users
- has_many  :users,  through:  :group_users


## group_usersテーブル <= 中間テーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user




## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|
|text|text|
|user_id|references| foreign_key: true|
|group_id|references| foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user






This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
