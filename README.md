
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
|card-information|interger ||

###Association
has_many :notes, through: :note_users  
has_many :comments  
has_many :notes_users  

## notes table
|column  |type   |option |
|:------:|:-----:|:-----:|
|user_id |integer|null:false、unique:true|
|title   |text   ||
|body    |text   ||
|eyecatch-image|string||
|image   |string||
|url     |string||
|fee     |interger||


###Association
has_many :users, through :note_users  
has_many :messages  
has_many :notes_users  

## paid_member table
|column  |type   |option |
|:------:|:-----:|:-----:|
|user_id |integer|null:false, foreign_key|
|note_id |integer|null:false, foreign_key|

###Association
belongs_to :user  
belongs_to :group  


## magazine table
|column  |type   |option |
|:------:|:-----:|:-----:|
|user_id |integer|null:false, foreign_key|
|note_id|integer|null:false, foreign_key|

###Association
belongs_to :user  
belongs_to :note  

## category_note table
|column  |type   |option |
|:------:|:-----:|:-----:|
|category_id|integer|null:false, foreign_key|
|name    |string |null:false, foreign_key|

###Association
belongs_to :group  

