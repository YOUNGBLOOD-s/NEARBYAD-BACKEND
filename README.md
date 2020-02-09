# NEARBYAD-BACKEND
백앤드 개발 버전관리

****

## :dart: DataBase

### membertb
|Field|Type|Null|Key|Default|Extra|
|---|---|---|---|---|---|
|idx|int|NO|**PK**||auto_increment|
|username|varchar(20)|YES|**UNIQUE**||
|password|varchar(20)|
|company|varchar(20)|
|grade|int|||0|
* idx : 일련번호
* username : user의 id
* password : user의 pw
* company : user의 회사 명
* grade : user의 등급(0-일반, 1-관리자, 2-일반광고주, 3-광고주, 4-광고주)

### gradetb
|Field|Type|Null|Key|Default|Extra|
|---|---|---|---|---|---|
|idx|int|NO|**PK**|||
|name|varchar(20)||**UNIQUE**||
|grade|int|||0|
* idx : 일련번호
* name : 등급 이름
* grade : 등급 번호

***
이하 수정중
***

### nationtb
|Field|Type|Null|Key|Default|Extra|
|---|---|---|---|---|---|
|idx|int|NO|**PK**||auto_increment|
|en_name|varchar(30)|YES|**UNIQUE**||
|ko_name|varchar(30)|YES|**UNIQUE**||
|dust|int|YES|||
|continents|int|YES|||
|showcnt|int|YES||0|
|customer|int|YES|**MUL**|0|
|weight|int|YES|
|speech|varchar(100)|YES|||
* idx : 일련변호
* name : 나라이름
* dust : 미세먼지 수치 (1-좋음, 2-보통, 3-나쁨, 4-매우나쁨)
* continents : 대륙정보 (1-Europe, 2-Africa, 3-Asia, 4-north America)
* clickcnt : 클릭 카운트
* showcnt : 광고 카운트
* customer : 고객 idx FK
* weight : 가중치
* speech : 음성 합성 텍스트


### avertb
|Field|Type|Null|Key|Default|Extra|
|---|---|---|---|---|---|
|idx|int|NO|**PK**||auto_increment|
|nation|int|YES|**UNIQUE**|||
|tem1|float|YES|||
|tem12|float|YES|||
|hum1|float|YES|||
|hum12|float|YES|||
* idx : 일련변호
* nation : 나라 일련번호
* tmp1-tmp12 : 1월-12월 평균온도
* hum1-hum12 : 1월-12월 평균습도


### contentstb
|Field|Type|Null|Key|Default|Extra|
|---|---|---|---|---|---|
|idx|int|NO|**PK**||auto_increment|
|nation|int|YES|**UNIQUE**|||
|day|int|YES|||
|seq|int|YES|||
|title|varchar(50)|YES|
|detail|varchar(10000)|YES|||
|image|varchar(500)|YES|||
|tofrom|varchar(50)|YES|||
|transport|varchar(20)|YES|||
* idx : 일련번호
* nation : 나라 일련번호
* day : 일차
* seq : 일차 별 경로 순서 1, 2, 3, ...
* detail : 경로 별 상세정보
* image : 경로 별 이미지 url
* tofrom : 이동경로
* transport : 이동수단


### imagetb
|Field|Type|Null|Key|Default|Extra|
|---|---|---|---|---|---|
|idx|int|NO|**PK**||auto_increment|
|nation|int|YES|**UNIQUE**|||
|type|int|YES|
|url|varchar(500)|YES|
* idx : 일련번호
* nation : 나라 일련번호
* type : 정도 (1-추움, 2-더움, 3-밝음, 4-어두움)
* url : 이미지 url 


### adboardtb
|Field|Type|Null|Key|Default|Extra|
|---|---|---|---|---|---|
|idx|int|NO|**PK**||auto_increment|
|temp|float|YES||||
|humid|float|YES||||
|dust|float|YES||||
|rough|float|YES||||
|info|varchar(100)|YES||||
* idx : 일련번호
* temp : 평균 온도
* humid : 평균 습도
* dust : 미세먼지 농도
* rough : 조도
* info : 센서에 대한 정보
