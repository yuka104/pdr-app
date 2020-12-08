# テーブル設計

## users テーブル

| Column              | Type    | Options                   |
| ------------------- | ------- | ------------------------- |
| name                | string  | null: false               |
| email               | string  | null: false, unique: true |
| encrypted_password  | string  | null: false               |

### Association

- has_many :preps
- has_many :reviews

## preps テーブル

| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| purpose            | text       | null: false       |
| reason             | text       | null: false       |
| task               | text       | null: false       |
| memo               | text       | null: false       |
| user               | reference  | foreign_key: true |

### Association

- has_one :review
- belongs_to :user

## reviews テーブル

| Column            | Type       | Options           |
| ----------------- | ---------- | ----------------- |
| result            | text       | null: false       |
| level_id          | integer    | null: false       |
| success           | text       | null: false       |
| failure           | text       | null: false       |
| improve           | text       | null: false       |
| prep              | reference  | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :prep



