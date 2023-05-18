;***********************************************************************************************************************
;***********************************************************************************************************************
;-莉菜部屋イベント
*rina_room
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_66_1.webm" time="1000"]
#
来到了莉菜的房间[p]

;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn66_001.ogg" buf="0"]
哥哥！ 请进来吧[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn66_002.ogg" buf="0"]
哥哥，你要做什么？ 啊，别想象奇怪的事啊！[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn66_004.ogg" buf="0"]
作业现在做完了，没问题哦[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn66_005.ogg" buf="0"]
啊，哥哥你眼神看起来色色的[p]
[endif]

[if exp="tf.rand == 4"]
#莉菜
[playse storage="rina/rn66_003.ogg" buf="0"]
能和哥哥在一起很开心呢[p]
[endif]


;■主人公選択肢
#
接下来干嘛呢？[p]
[glink  color="pink" size="20"  x="800"  width="300"  y="200"  text="和莉菜做爱"  target="*rina_room_h"]
[s]

;***********************************************************************************************************************
;--莉菜ちゃん平日エッチ
*rina_room_h
[freeimage layer="2" time="0"]
[stop_bgmovie time="2000"]
;エッチ度判別
;***********************************************************************************************************************
;エッチ度　0-25
[if exp="f.rina_h <= 25"]
 [bgmovie storage="mov_69_3.webm" time="2000"]
 [iscript]
 tf.rand = Math.floor( Math.random() * 3)
 [endscript]
 [if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn69_001.ogg" buf="0"]
请不要弄痛我……[p]
 [endif]
 [if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn69_002.ogg" buf="0"]
哥哥，请温柔一点[p]
 [endif]
 [if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn69_003.ogg" buf="0"]
哥哥……可以哦……[p]
 [endif]
 [eval exp="tf.taii= 300"]
[endif]
;***********************************************************************************************************************
;***********************************************************************************************************************
;エッチ度　26-50
[if exp="f.rina_h >= 26 && f.rina_h <= 50"]
 [bgmovie storage="mov_69_1.webm" time="2000"]
 [iscript]
 tf.rand = Math.floor( Math.random() * 3)
 [endscript]
 [if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn69_004.ogg" buf="0"]
哥哥，好害羞……
[p]
 [endif]
 [if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn69_005.ogg" buf="0"]
如果哥哥想要的……可以哦[p]
 [endif]
 [if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn69_006.ogg" buf="0"]
哥哥……我……[p]
 [endif]
 [eval exp="tf.taii= 300"]
[endif]
;***********************************************************************************************************************
;***********************************************************************************************************************
;エッチ度　51-75
[if exp="f.rina_h >= 51 && f.rina_h <= 75"]
 [bgmovie storage="mov_69_1.webm" time="2000"]
 [iscript]
 tf.rand = Math.floor( Math.random() * 3)
 [endscript]
 [if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn69_007.ogg" buf="0"]
我……是不是淫荡呢……[p]
 [endif]
 [if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn69_008.ogg" buf="0"]
哥哥……我想要……H……[p]
 [endif]
 [if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn69_009.ogg" buf="0"]
我尽是想着一些……下流的事情[p]
 [endif]
 [eval exp="tf.taii= 300"]
[endif]
;***********************************************************************************************************************
;***********************************************************************************************************************
;エッチ度　76-100
[if exp="f.rina_h >= 76 ]
 [bgmovie storage="mov_69_2.webm" time="2000"]
 [iscript]
 tf.rand = Math.floor( Math.random() * 4)
 [endscript]
 [if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn69_010.ogg" buf="0"]
哥哥的……我想要……[p]
 [endif]
 [if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn69_011.ogg" buf="0"]
请插入……[p]
 [endif]
 [if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn69_012.ogg" buf="0"]
哥哥，请……[p]
 [endif]
 [if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn69_013.ogg" buf="0"]
哥哥，已经……变成这样了……[p]
 [endif]
 [eval exp="tf.taii= 0"]
[endif]
#
;***********************************************************************************************************************
;--不能イベント
;■精力判別　20以下だと不能
[if exp="f.energy < 20"]
……[l]……[l]……[p]
啊……咦？……[p]
真奇怪啊……[p]
怎么回事？无法勃起……[p]
……[p]
[bg storage="black.png" time="0"]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_66_2.webm"]
#莉菜
[playse storage="rina/rn69_062.ogg" buf="0"]
哥哥，请不要在意[p]
#
[stop_bgmovie]
[bg storage="room_night.png" time="1000"]
[uiwindows]
回到了房间[p]

[jump storage="main.ks" target="*night_choice"]
[endif]
;***********************************************************************************************************************
;--体位選択
;■ 0以上  正常位１　側位１
;■10以上　正常位2
;■20以上　後背位１
;■30以上　測位２
;■40以上　正常位3 後背位２
;■50以上　騎乗位　側位3　
;■60以上　後背位3
;■70以上　立位
;■80以上　騎乗位2
;■85以上  騎乗位3 後背位4

;■一時変数 tf.posture [体位動画，射精動画，遅いレート，普通レート，早いレート]
[eval exp="tf.rina_posture = []"]
;■0　正常位１
[eval exp="tf.rina_posture[0] = ['mov_69_10.webm','mov_69_30.webm',0.7,0.8,1,'mov_69_40.webm']"]
;■1　正常位２
[eval exp="tf.rina_posture[1] = ['mov_69_11.webm','mov_69_30.webm',0.8,1,1.2,'mov_69_40.webm']"]
;■2　側位１
[eval exp="tf.rina_posture[2] = ['mov_69_12.webm','mov_69_31.webm',0.8,1,1.2,'mov_69_41.webm']"]
;■3　側位2
[eval exp="tf.rina_posture[3] = ['mov_69_13.webm','mov_69_31.webm',0.8,1,1.2,'mov_69_41.webm']"]
;■4　後背位1
[eval exp="tf.rina_posture[4] = ['mov_69_14.webm','mov_69_32.webm',0.65,0.8,1,'mov_69_42.webm']"]
;■5　後背位2
[eval exp="tf.rina_posture[5] = ['mov_69_15.webm','mov_69_32.webm',0.8,1,1.2,'mov_69_42.webm']"]
;■6　騎乗位
[eval exp="tf.rina_posture[6] = ['mov_69_16.webm','mov_69_33.webm',0.65,0.8,1,'mov_69_43.webm']"]
;■7　立位
[eval exp="tf.rina_posture[7] = ['mov_69_17.webm','mov_69_34.webm',0.65,0.8,1,'mov_69_44.webm']"]
;■8　正常位3
[eval exp="tf.rina_posture[8] = ['mov_69_18.webm','mov_69_30.webm',0.65,0.8,1,'mov_69_40.webm']"]
;■9　後背位3
[eval exp="tf.rina_posture[9] = ['mov_69_19.webm','mov_69_32.webm',0.65,0.8,1,'mov_69_42.webm']"]
;■10　騎乗位2
[eval exp="tf.rina_posture[10] = ['mov_69_50.webm','mov_69_33.webm',0.65,0.8,1,'mov_69_43.webm']"]
;■11　側位3
[eval exp="tf.rina_posture[11] = ['mov_69_52.webm','mov_69_31.webm',0.8,1,1.2,'mov_69_41.webm']"]
;■12　騎乗位3
[eval exp="tf.rina_posture[12] = ['mov_69_53.webm','mov_69_33.webm',0.65,0.8,1,'mov_69_43.webm']"]
;■9　後背位4
[eval exp="tf.rina_posture[13] = ['mov_69_54.webm','mov_69_32.webm',0.8,1,1.2,'mov_69_42.webm']"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
;■正常位1
[glink  color="pink" size="15"  x="20"  width="150"  y="&tf.taii"  text="正常位１"  target="*rina_room_movie" exp="tf.posture = 0"]
[eval exp="tf.taii = tf.taii + 35"]
;■正常位2
[if exp="f.rina_h >= 10"]
 [glink  color="pink" size="15"  x="70"  width="150"  y="&tf.taii"  text="正常位２"  target="*rina_room_movie" exp="tf.posture = 1"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

;■正常位3
[if exp="f.rina_h >= 40"]
 [glink  color="pink" size="15"  x="120"  width="150"  y="&tf.taii"  text="正常位3"  target="*rina_room_movie" exp="tf.posture = 8"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

;■側位１
[glink  color="pink" size="15"  x="20"  width="150"  y="&tf.taii"  text="侧位１"  target="*rina_room_movie" exp="tf.posture = 2"]
[eval exp="tf.taii = tf.taii + 35"]

;■測位２
[if exp="f.rina_h >= 30"]
 [glink  color="pink" size="15"  x="70"  width="150"  y="&tf.taii"  text="侧位２"  target="*rina_room_movie" exp="tf.posture = 3"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

;■測位3
[if exp="f.rina_h >= 50"]
 [glink  color="pink" size="15"  x="120"  width="150"  y="&tf.taii"  text="侧位３"  target="*rina_room_movie" exp="tf.posture = 11"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

;■後背位１
[if exp="f.rina_h >= 20"]
 [glink  color="pink" size="15"  x="20"  width="150"  y="&tf.taii"  text="后背位１"  target="*rina_room_movie" exp="tf.posture = 4"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

;■後背位２　　
[if exp="f.rina_h >= 40"]
 [glink  color="pink" size="15"  x="70"  width="150"  y="&tf.taii"  text="后背位２"  target="*rina_room_movie" exp="tf.posture = 5"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

;■後背位3　　
[if exp="f.rina_h >= 60"]
 [glink  color="pink" size="15"  x="120"  width="150"  y="&tf.taii"  text="后背位3"  target="*rina_room_movie" exp="tf.posture = 9"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

;■後背位4　　
[if exp="f.rina_h >= 85"]
 [glink  color="pink" size="15"  x="170"  width="150"  y="&tf.taii"  text="后背位4"  target="*rina_room_movie" exp="tf.posture = 13"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

;■騎乗位
[if exp="f.rina_h >= 50"]
 [glink  color="pink" size="15"  x="20"  width="150"  y="&tf.taii"  text="乘骑位"  target="*rina_room_movie" exp="tf.posture = 6"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

;■騎乗位2
[if exp="f.rina_h >= 80"]
 [glink  color="pink" size="15"  x="70"  width="150"  y="&tf.taii"  text="乘骑位2"  target="*rina_room_movie" exp="tf.posture = 10"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

;■騎乗位3
[if exp="f.rina_h >= 85"]
 [glink  color="pink" size="15"  x="120"  width="150"  y="&tf.taii"  text="乘骑位3"  target="*rina_room_movie" exp="tf.posture = 12"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

;■立位
[if exp="f.rina_h >= 70"]
 [glink  color="pink" size="15"  x="20"  width="150"  y="&tf.taii"  text="立位"  target="*rina_room_movie" exp="tf.posture = 7"]
 [eval exp="tf.taii = tf.taii + 35"]
[endif]

[s]

*rina_room_movie
#
;■一時変数宣言
[eval exp="tf.kaikan = 0"]
[eval exp="tf.sp = tf.rina_posture[tf.posture][2]"]
[eval exp="tf.rate = 1"]
[eval exp="tf.syasei = 0"]
[eval exp="tf.syasei_up = -5"]

;1.10追加-------------
[eval exp="tf.ikisou = 0"]
;----------------------

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[bg storage="black.png" time="0"]
[bgmovie storage="&tf.rina_posture[tf.posture][0]" loop="true"]
[iscript]
tf.sp = tf.rina_posture[tf.posture][2]
var yuko=document.getElementById("bgmovie");
yuko.playbackRate = tf.sp;
[endscript]

;***********************************************************************************************************************
;***********************************************************************************************************************
;--スピード選択ボタン
[html]
<body>
<div id="button_hayai">
  <img src="./data/image/button/hayai.png" style="visibility:visible; position: absolute; left: 10px; top: 680px"/> 
</div>
<div id="button_futuu">
  <img src="./data/image/button/futuu.png" style="visibility:visible; position: absolute; left: 125px; top: 680px"/>
</div>
<div id="button_osoi">
  <img src="./data/image/button/osoi.png" style="visibility:visible;position: absolute; left: 240px; top: 680px"/>
</div>
<div id="button_syasei">
  <img src="./data/image/button/syasei.png" style="visibility:visible; position: absolute; left: 355px; top: 680px"/>
</div>
</body>
[endhtml]

[iscript]
var pic=document.getElementById("button_osoi");
pic.style.webkitFilter = "grayscale(100%)";

$("#button_hayai").click(function () {
tf.rate = 3
tf.sp = tf.rina_posture[tf.posture][4]
tf.syasei_up = 30
var yuko=document.getElementById("bgmovie");
yuko.playbackRate = tf.sp;
var pic=document.getElementById("button_hayai");
pic.style.webkitFilter = "grayscale(100%)";
var pic=document.getElementById("button_futuu");
pic.style.webkitFilter = "grayscale(0%)";
var pic=document.getElementById("button_osoi");
pic.style.webkitFilter = "grayscale(0%)";
});



$("#button_futuu").click(function () {
tf.rate = 2
tf.sp = tf.rina_posture[tf.posture][3]
tf.syasei_up = 15
var yuko=document.getElementById("bgmovie");
yuko.playbackRate = tf.sp;
var pic=document.getElementById("button_hayai");
pic.style.webkitFilter = "grayscale(0%)";
var pic=document.getElementById("button_futuu");
pic.style.webkitFilter = "grayscale(100%)";
var pic=document.getElementById("button_osoi");
pic.style.webkitFilter = "grayscale(0%)";
});

$("#button_osoi").click(function () {
tf.rate = 1
tf.sp = tf.rina_posture[tf.posture][2]
tf.syasei_up = -15
var yuko=document.getElementById("bgmovie");
yuko.playbackRate = tf.sp;
var pic=document.getElementById("button_hayai");
pic.style.webkitFilter = "grayscale(0%)";
var pic=document.getElementById("button_futuu");
pic.style.webkitFilter = "grayscale(0%)";
var pic=document.getElementById("button_osoi");
pic.style.webkitFilter = "grayscale(100%)";
});

$("#button_syasei").click(function () {
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(500%)";
tf.syasei = 1000
});

[endscript]

*play

;射精ボタン彩度変更
[if exp="tf.syasei < f.patience * 0.2 "]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(100%)";
[endscript]
[endif]
[if exp="tf.syasei >= f.patience * 0.2 && tf.syasei < f.patience * 0.4"]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(200%)";
[endscript]
[endif]
[if exp="tf.syasei >= f.patience * 0.4 && tf.syasei < f.patience * 0.6"]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(300%)";
[endscript]
[endif]
[if exp="tf.syasei >= f.patience * 0.6 && tf.syasei < f.patience * 0.8"]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(400%)";
[endscript]
[endif]
[if exp="tf.syasei >= f.patience * 0.8 && tf.syasei < f.patience * 0.9"]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(500%)";
[endscript]
[endif]
[if exp="tf.syasei >= f.patience * 0.9 "]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(600%)";
[endscript]
[endif]

;***********************************************************************************************************************
;射精までのタイミング
*loop
;[menuwindows]
;[wait time="2000"]
[eval exp="tf.syasei = tf.syasei + tf.syasei_up"]
[if exp="tf.syasei < 0"]
[eval exp="tf.syasei = 0"]
[endif]
[eval exp="tf.syasei_up = tf.syasei_up + 1"]
;我慢値[emb exp="tf.syasei"] 
;快感度[emb exp="tf.kaikan"] 
;***********************************************************************************************************************
;いく判別 快感度400でいく
[if exp="f.rina_h >= 100 && tf.kaikan >= 400 && tf.ikisou == 1"]
 [cm]
 [clearfix]
 ;メッセージボックスは非表示
 @layopt layer="message" visible=false
 [stop_bgmovie]
 [stopse buf="0"]
 [stopse buf="3"]
 [bgloop mov = "mov_69_60.webm" ti = 0]
 [movie storage="mov_69_61.webm" skip="true"]
 [bg storage="black.png" time="0"]
 [playse storage="rina/rn46_020.ogg" loop="true"]
 [bgloop mov = "mov_69_62.webm" ti = 0]
 ;絶頂フラグオン
 [eval exp="f.rina_orgasm = true"]
 [jump target="*rina_after"]
[endif]
;***********************************************************************************************************************
;射精
[if exp="tf.syasei > f.patience"]
 [cm]
 [clearfix]
 [layopt layer="message0" visible="true"]
唔……啊，射……射了！
 [wait time="2000"]
 [jump target="*syasei"]
[endif]
;我慢80パーセント
;我慢50パーセント
;***********************************************************************************************************************
;莉菜快感度計算
;***********************************************************************************************************************
;エッチ度0-10までの反応
[if exp="f.rina_h <= 10"]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan - 10"]
  [eval exp="tf.aegi = 13"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan - 5"]
  [eval exp="tf.aegi = 12"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 2"]
  [eval exp="tf.aegi = 11"]
 [endif]
[endif]
;***********************************************************************************************************************
;エッチ度11-30までの反応
[if exp="f.rina_h >= 11 && f.rina_h <=30"]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan + 3"]
  [eval exp="tf.aegi = 23"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan + 5"]
  [eval exp="tf.aegi = 22"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 2"]
  [eval exp="tf.aegi = 21"]
 [endif]
[endif]
;***********************************************************************************************************************
;エッチ度31-50までの反応
[if exp="f.rina_h >= 31 && f.rina_h <= 50"]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan + 10"]
  [eval exp="tf.aegi = 33"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan + 6"]
  [eval exp="tf.aegi = 32"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 3"]
  [eval exp="tf.aegi = 31"]
 [endif]
[endif]
;***********************************************************************************************************************
;エッチ度51-80までの反応
[if exp="f.rina_h >= 51 && f.rina_h <= 80"]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan + 20"]
  [eval exp="tf.aegi = 43"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan + 10"]
  [eval exp="tf.aegi = 42"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 3"]
  [eval exp="tf.aegi = 41"]
 [endif]
[endif]
;***********************************************************************************************************************
;エッチ度81-100までの反応
[if exp="f.rina_h >= 81]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan + 30"]
  [eval exp="tf.aegi = 52"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan + 15"]
  [eval exp="tf.aegi = 52"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 3"]
  [eval exp="tf.aegi = 51"]
 [endif]
[endif]

;***********************************************************************************************************************
;いきそう判定 快感度300でいきそう
[if exp="f.rina_h >= 100 && tf.kaikan >= 300 && tf.ikisou == 0"]
 [iscript]
 tf.rand = Math.floor( Math.random() * 3)
 [endscript]
 [if exp="tf.rand == 0"]
 [playse storage="rina/rn69_065.ogg" buf="0" loop="true"]
 [endif]
 [if exp="tf.rand == 1"]
 [playse storage="rina/rn69_066.ogg" buf="0" loop="true"]
 [endif]
 [if exp="tf.rand == 2"]
 [playse storage="rina/rn69_067.ogg" buf="0" loop="true"]
 [endif]
 [eval exp="tf.ikisou = 1"]
[endif]

[if exp="tf.ikisou == 0"]
;***********************************************************************************************************************
;喘ぎ判別
;前回と同じか判別
[if exp="tf.aegi != tf.aegi_old"]

;***********************************************************************************************************************
;エッチ度0-10
;■遅い
 [if exp="tf.aegi == 11"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_014.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 12"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_015.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 13"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_016.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;***********************************************************************************************************************
;エッチ度11-30
;■遅い
 [if exp="tf.aegi == 21"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_014_1.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 22"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_015_1.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 23"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_016_1.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif] 
;***********************************************************************************************************************
;エッチ度31-50
;■遅い
 [if exp="tf.aegi == 31"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_017.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 32"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_020.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 33"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_023.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif] 
;***********************************************************************************************************************
;エッチ度51-80
;■遅い
 [if exp="tf.aegi == 41"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_018.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 42"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_021.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 43"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_024.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif] 
;***********************************************************************************************************************
;エッチ度81-100
;■遅い
 [if exp="tf.aegi == 51"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_026_1.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 52"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_026.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 53"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="rina/rn69_029.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]  
[endif]
[endif]

;***********************************************************************************************************************
;いきそう効果音処理
[if exp="tf.ikisou == 1"]

;■遅い
 [if exp="tf.aegi == 51"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [eval exp="tf.kaikan = tf.kaikan - 10"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 52"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [eval exp="tf.kaikan = tf.kaikan - 5"]
  [playse storage="se/kutyu02.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 53"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="se/kutyu03.ogg" buf="3" loop="true"]
 [endif] 
 ;快感300下回ったら喘ぎを戻す 
 [if exp="tf.kaikan < 300"]
  [eval exp="tf.ikisou = 0"]
  [playse storage="rina/rn69_026_1.ogg" buf="0" loop="true"]
 [endif]
 
[endif] 

;***********************************************************************************************************************
[wait time="2000"]
[jump target="*play"]
;***********************************************************************************************************************
;--射精
*syasei
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="&tf.rina_posture[tf.posture][5]" skip="true"]
[bg storage="black.png" time="0"]
[playse storage="rina/rn46_020.ogg" buf="0" loop="true"]
[bgloop mov = &tf.rina_posture[tf.posture][1] ti = 0]
;***********************************************************************************************************************
;--莉菜エッチ後
*rina_after
[cm]
#
[menuwindows]
[stopse buf="0"]
[bgmovie storage="mov_66_2.webm"]
;***********************************************************************************************************************
;快感度判定
;■快感度　0以下
[if exp="tf.kaikan < 0"]
[iscript]
tf.rand = Math.floor( Math.random() * 2)
[endscript]
[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn69_050.ogg" buf="0"]
有点疼。[p]
#
对不起莉菜啊[r]
下次我会更小心一点[p]
[endif]
[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn69_052.ogg" buf="0"]
对不起我还没习惯[p]
#
莉菜，下次我会更小心一点。[p]
[endif]
[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn69_051.ogg" buf="0"]
请更温柔一点[p]
[endif]
;●莉菜エッチ度増加
[eval exp="f.rina_h = f.rina_h + 4 "]
[jump  target="*rina_room_end"]
[endif]

;■エッチ度　40以下反応
[if exp="f.rina_h < 40"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn69_053.ogg" buf="0"]
哥哥，怎么样?[p]
[endif]
[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn69_054.ogg" buf="0"]
感觉很舒服吗？[p]
[endif]
[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn69_055.ogg" buf="0"]
如果哥哥舒服的话我就没问题[p]
[endif]
;●莉菜エッチ度増加
[eval exp="f.rina_h = f.rina_h + 5 "]
[jump  target="*rina_room_end"]
[endif]

;■エッチ度　60以上 快感度200以上反応
[if exp="f.rina_h >= 60 && tf.kaikan >= 200"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn69_059.ogg" buf="0"]
我如此的淫乱……好难为情啊[p]
[endif]
[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn69_060.ogg" buf="0"]
哥哥的……太棒了……[p]
[endif]
[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn69_061.ogg" buf="0"]
哥哥……喜欢……[p]
[endif]
;●莉菜エッチ度増加
[eval exp="f.rina_h = f.rina_h + 7 "]
[jump  target="*rina_room_end"]
[endif]

;■エッチ度　40以上 快感度100以上反応
[if exp="f.rina_h >= 40 && tf.kaikan >= 100"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn69_056.ogg" buf="0"]
有点……感觉很舒服[p]
[endif]
[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn69_057.ogg" buf="0"]
感觉……变得好起来了……[p]
[endif]
[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn69_058.ogg" buf="0"]
太……太舒服了……[p]
[endif]
;●莉菜エッチ度増加
[eval exp="f.rina_h = f.rina_h + 6 "]
[jump  target="*rina_room_end"]
[endif]

;■エッチ度　40以上 快感度100以下反応
[if exp="f.rina_h >= 40 && tf.kaikan < 100"]
[iscript]
tf.rand = Math.floor( Math.random() * 2)
[endscript]
[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn69_063.ogg" buf="0"]
我会更努力的[p]
[endif]
[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn69_064.ogg" buf="0"]
我会尽我所能让哥哥兴奋起来[p]
[endif]

;●莉菜エッチ度増加
[eval exp="f.rina_h = f.rina_h + 4 "]
[jump  target="*rina_room_end"]
[endif]


;***********************************************************************************************************************
;愛情，エッチ度増加
*rina_room_end
[rina_i]

;エッチ度上限チェック
[if exp="f.rina_h > 100"]
 [eval exp="f.rina_h = 100"]
[endif]

;精力体力減衰
[eval exp="f.energy = f.energy -30"]
[eval exp="f.hp = f.hp -20"]
[eval exp="f.patience = f.patience + 10"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]


[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
#
[bg storage="room_night.png" time="1000"]
[uiwindows]
回到了房间[p]

[jump storage="main.ks" target="*night_choice"]
