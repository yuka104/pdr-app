# PDR app  
これはpdrサイクルを使って簡単にスキルアップが実現できるシンプルなアプリです。  

# 概要  
取り組みたいことに必要なタスクを洗い出し、実行後に見直しをすることで改善点を確認することができます。  

# heroku URL  
https://pdr-app-k31776.herokuapp.com/  

# テスト用アカウント  
Email: tarou@sample.com  
password: tarou123  

# 利用方法
会員登録をして取り組みたいことの投稿ができます。  
投稿はログインした本人しか見ることはできません。  
prep(準備)&rarr;do(実行)&rarr;review(見直し)と順番に投稿ができ、投稿した内容はprepからreviewまでを一覧で確認できます。  
登録したPDRはログイン時に一覧で見ることができます。

# 目指した課題解決
働いている人のスキルアップに役立てたいと思い作成しました。  
日常の業務に追われ、業務をこなすだけの社会人はたくさんいます。  
小さな取り組みでも、短期スパンで見直しを実行するだけで改善点を意識するようになったり  
うまくいかなかったことを優先的に克服することでスキルアップに繋がると考えたからです。

## 洗い出した要件

## 実装した機能についてのGIFと説明
ログイン後に新しいPREP(準備)を登録すると、取り組みたい内容が一覧の中に表示されます。  
![Pdr Image 1](https://i.gyazo.com/f60bc015f91ca47963d5101f726f6d4f.png)  
do(実行)して気づいたこと・review(見直し)を順に登録できます。  
![Pdr Image 2](https://i.gyazo.com/ce1d9fd45e61465ab7b7aa5646910b8c.png)  
prepからreviewまでが一覧で確認でき、見返したいものはそのまま保存し、  
見返しが必要ないものは削除ができます。  

## 実装予定の機能
カレンダー機能の実装

## データベース設計
![Er Image 1](https://gyazo.com/e6be34e24d128bfa6ca60a1055c66d2a.png)

## ローカルでの動作方法


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



