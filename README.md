# アプリケーション名
MyKarte

# アプリケーション概要
自身が病院を受診した際の診療記録を管理することで、健康意識の向上や家族への伝達の容易化を目的とする。

# URL

# テスト用アカウント

# 利用方法


# テーブル名およびカラム名、アソシエーションの設定
## users table
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| birthday | date   | null: false |

### Association
has_many: kartes
has_many: hospital_clinics
has_many: diseases

## kartes table
| Column            | Type       | Options                       |
| ----------------- | ---------- | ----------------------------- |
| user              | references | null: false, foreign_key:true |
| hospital_clinic   | references | null: false, foreign_key:true |
| consultation_date | date       | null: false, DEFAULT_GENERATED|
| doctor            | string     | null: false                   |
| subjective        | string     | null: false                   |
| objective         | string     |                               |
| assessment        | string     | null: false                   |
| plan              | string     | null: false                   |
| next              | string     | null: false                   |

### Association
belongs_to: user
belongs_to: hospital_clinic

## hospital_clinics table
| Column                 | Type       | Options                       |
| ---------------------- | ---------- | ----------------------------- |
| user                   | references | null: false, foreign_key:true |
| institution_name       | string     | null: false, unique: true     |
| clinical_department_id | integer    | null: false                   |

### Association
belongs_to: user
has_many: kartes
has_many: diseases

## diseases table
| Column          | Type       | Options                       |
| --------------- | ---------- | ----------------------------- |
| user            | references | null: false, foreign_key:true |
| hospital_clinic | references | null: false, foreign_key:true |
| disease_name    | string     | null: false, unique: true     |
| onset_date      | date       | null: false                   |
| outcome_id      | integer    |                               |
| outcome_date    | date       |                               |
### Association
belongs_to: user
belongs_to: hospital_clinic
