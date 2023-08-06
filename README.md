#users テーブル

|Column               |Type      | Options      |
|---------------------|----------|--------------|
|email                | string   | null: false  |      
|encrypted_password   | string   | null: false  |
|name                 | string   | null: false  |
|profile              | text     | null: false  |
|occupation           | text     | null: false  |
|position             | text     | null: false  |

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

#prototypesテーブル

|Column       |Type        | Options                        |
|-------------|------------|--------------------------------|
|title        | string     | null: false                    |      
|catch_copy   | text       | null: false                    |
|concept      | text       | null: false                    |
|user         | references | null: false, foreign_key: true |

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

#commentsテーブル

|Column      |Type        | Options                         |
|------------|------------|---------------------------------|
|content     | text       | null: false                     |
|prototype   | references | null: false, foreign_key: true  |
|user        | references | null: false, foreign_key: true  |

- belongs_to :room
- belongs_to :user