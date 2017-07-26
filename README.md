
# DATA BASE設計

## users table
|column  |type   |option |
|:------:|:-----:|:-----:|
|nickname|string |null:false, unique:true|
|noteID  |integer|null:false, unique:true|
|email   |string |null:false, unique:true|
|password|string |null:false|
|password-confirmation|string ||
|image  |string ||
|header-image|string ||
|introduction|text ||
|magazine_id|integer|unique:true|
|card-information|interger ||

### Association
has_many :notes, through: :paid_members  
has_many :comments  
has_many :paid_members  

## notes table
|column  |type   |option |
|:------:|:-----:|:-----:|
|user_id |integer|null:false、unique:true|
|magazine_id|integer|unique:true|
|title   |text   ||
|body    |text   ||
|eyecatch-image|string||
|image   |string||
|url     |string||
|fee     |interger||
|category|text||



### Association
has_many :users, through :paid_members  
has_many :messages  
has_many :paid_members  

## paid_member table
|column  |type   |option |
|:------:|:-----:|:-----:|
|user_id |integer|null:false, foreign_key|
|note_id |integer|null:false, foreign_key|
|magazine_id|integer|unique:true|

### Association
belongs_to :user  
belongs_to :group  


## magazine table
|column  |type   |option |
|:------:|:-----:|:-----:|
|title   |text   ||
|explanation|text||
|fee     |integer||
|user_id |integer|null:false, foreign_key|
|note_id|integer|null:false, foreign_key|

### Association
belongs_to :user  
belongs_to :note  

## category table
|column  |type   |option |
|:------:|:-----:|:-----:|
|category_id|integer|null:false, foreign_key|
|note_id |integer|null:false, foreign_key|

### Association
belongs_to :group  
