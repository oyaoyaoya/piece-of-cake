
# DATA BASE設計
## massages table
|column  |type   |option |
|:------:|:-----:|:-----:|
|body    |text   |       |
|image   |string |       |
|group_id|integer|null:false, foreign_key,index:true|
|user_id |integer|null:false, foreign_key|

### Association
belongs_to :user  
belongs_to :group  

## users table
|column  |type   |option |
|:------:|:-----:|:-----:|
|name    |string |index:true, null:false, unique:true|
|email   |string |null:false, unique:true|

### Association
has_many :groups, through: :groups_users  
has_many :messages  
has_many :groups_users  

## groups table
|column  |type   |option |
|:------:|:-----:|:-----:|
|name    |string |null:false、unique:true|

### Association
has_many :users, through :groups_users  
has_many :messages  

## groups_users table
|column  |type   |option |
|:------:|:-----:|:-----:|
|user_id |integer|null:false, foreign_key|
|group_id|integer|null:false, foreign_key|

### Association
belongs_to :user  
belongs_to :group  
