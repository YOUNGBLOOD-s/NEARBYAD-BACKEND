# NEARBYAD-BACKEND
백앤드 개발 버전관리

****
## 💪 to-do list
* nationtb에 cnt 속성 추가
* 프론트/임베디드 value object 정의
  * front 상담 요청 시 받는 정보 db에 저장하기
  * front 클릭 시, cnt ++
  * embedded 센서 값 받아서 계산 후 front에 알맞은 데이터 전달
****

## :dart: Springboot
### Value Object
#### 1) ReqForm : Frontend -> 1:1 상담신청 요청 시, 받는 정보
|Field|Type|
|---|---|
|name|String|
|age|int|
|email|String|
|tel|String|
|date|String|
|text|String|

***


## :dart: DataBase

### nationtb
|Field|Type|Null|Key|Default|Extra|
|---|---|---|---|---|---|
|idx|int|NO|**PK**||auto_increment|
|name|varchar(30)|YES|**UNIQUE**||
|dust|int|YES|||
|continents|int|YES|||

### avertb
|Field|Type|Null|Key|Default|Extra|
|---|---|---|---|---|---|
|idx|int|NO|**PK**||auto_increment|
|nation|int|YES|**UNIQUE**|||
|tem1|int|YES|||
|tem2|int|YES|||
|tem3|int|YES|||
|tem4|int|YES|||
|tem5|int|YES|||
|tem6|int|YES|||
|tem7|int|YES|||
|tem8|int|YES|||
|tem9|int|YES|||
|tem10|int|YES|||
|tem11|int|YES|||
|tem12|int|YES|||
|hum1|int|YES|||
|hum2|int|YES|||
|hum3|int|YES|||
|hum4|int|YES|||
|hum5|int|YES|||
|hum6|int|YES|||
|hum7|int|YES|||
|hum8|int|YES|||
|hum9|int|YES|||
|hum10|int|YES|||
|hum11|int|YES|||
|hum12|int|YES|||





