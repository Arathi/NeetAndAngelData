;***********************************************************************************************************************
;***********************************************************************************************************************
;-静江部屋イベント
*sizue_room
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_67_1.webm" time="1000"]
#
来到静江小姐的房间[p]

[if exp="f.sizue_lover == 1.5"]
#
静江小姐，果然我……我喜欢你，我不能放弃！[p]
#静江
[playse storage="sizue/sz27_001.ogg" buf="0"]
我不是说了不行吗，哥哥[r]
只有那一次，下不为例[p]
#
下不为例做不到！我一直在想静江小姐的事[r]
静江小姐，你说喜欢我的！[p]
#静江
[playse storage="sizue/sz27_002.ogg" buf="0"]
真是的，哥哥，不要让我为难！[r]
对哥哥来说更年轻的孩子比较好[p]
#
不，我喜欢静江小姐！ 我喜欢静江小姐 非常喜欢！[p]
#静江
[playse storage="sizue/sz27_003.ogg" buf="0"]
哥哥，总是让阿姨为难……所以……真是的……坏孩子[p]
#
静江小姐……[p]
#静江
[playse storage="sizue/sz27_004.ogg" buf="0"]
……来吧[p]
#静江
[playse storage="sizue/sz27_005.ogg" buf="0"]
哥哥，如果你有了喜欢的人，要告诉我哦。[r]
明白了吗？[p]
#
不会的，绝对[p]
#静江
[playse storage="sizue/sz27_006.ogg" buf="0"]
哥哥，喜欢你[p]

[eval exp="f.sizue_lover = 2"]
[eval exp="f.sizue_i = 10"]
[jump target="*select"]
[endif]

;■静江さん会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

;■会話0
[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz67_001.ogg" buf="0"]
哥哥，欢迎！[p]
[endif]
;■会話1
[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz67_002.ogg" buf="0"]
哥哥，你是来向阿姨撒娇的吗？[p]
[endif]
;■会話2
[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz67_003.ogg" buf="0"]
哎呀哎呀，哥哥到底想做什么呢？[p]
[endif]
;■会話3
[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz67_004.ogg" buf="0"]
哥哥想喝点什么吗？ 虽然只有酒！[p]
[endif]
;■会話4
[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz67_005.ogg" buf="0"]
哥哥，不能对阿姨太当真哦！[p]
[endif]

*select
;■主人公選択肢
#
接下来干嘛呢？[p]
[glink  color="pink" size="20"  x="800"  width="300"  y="200"  text="和静江做爱"  target="*sizue_room_h"]
[s]

;***********************************************************************************************************************
;--静江さん平日エッチ
*sizue_room_h
[freeimage layer="2" time="0"]
[stop_bgmovie time="2000"]
;エッチ度判別
;***********************************************************************************************************************
;エッチ度　76-100
[if exp="f.sizue_h >= 76 ]
[bgmovie storage="mov_70_2.webm" time="2000"]
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]
[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz70_006.ogg" buf="0"]
哥哥，插进来……[p]
[endif]
[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz70_007.ogg" buf="0"]
都是哥哥的错，阿姨的小穴[r]
已经成这样了[p]
[endif]
[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz70_008.ogg" buf="0"]
我喜欢和哥哥做色色的事[p]
[endif]
[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz70_009.ogg" buf="0"]
嘿嘿，我最喜欢哥哥了[p]
[endif]
[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz70_010.ogg" buf="0"]
我想和哥哥一起做爱[r]
阿姨总会有办法的[p]
[endif]
[endif]
;***********************************************************************************************************************
;エッチ度　75以下
[if exp="f.sizue_h <= 75"]
[bgmovie storage="mov_70_1.webm" time="2000"]
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]
[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz70_001.ogg" buf="0"]
这样的阿姨喜欢吗？[p]
[endif]
[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz70_002.ogg" buf="0"]
真是的，哥哥真是个让人头疼的孩子[p]
[endif]
[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz70_003.ogg" buf="0"]
如果阿姨认真了你打算怎么办？[p]
[endif]
[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz70_004.ogg" buf="0"]
嘿嘿，哥哥，过来[p]
[endif]
[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz70_005.ogg" buf="0"]
哥哥，你不想插进阿姨的这里吗？[p]
[endif]
[endif]
;***********************************************************************************************************************
;***********************************************************************************************************************
;--不能イベント
;■精力判別　20以下だと不能
[if exp="f.energy < 20"]
#
……[l]……[l]……[p]
啊……咦？……[p]
真奇怪啊……[p]
怎么回事？无法勃起……[p]
…………[p]
[bg storage="black.png" time="0"]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_67_2.webm"]
#静江
[playse storage="sizue/sz70_053.ogg" buf="0"]
也有那样的时候呢[p]
#
[stop_bgmovie]
[bg storage="room_night.png" time="1000"]
[uiwindows]
回到了房间[p]

[jump storage="main.ks" target="*night_choice"]
[endif]
;***********************************************************************************************************************
;--体位選択
;■ 0以上 
;■10以上　
;■20以上　
;■30以上　
;■50以上　正常位１　側位１
;■60以上　後背位１ 正常位２
;■70以上　後背位２ 側位２
;■80以上　騎乗位  正常位3 側位3
;■90以上  立位　後背位3 騎乗位2 
;■95以上  騎乗位3 立位2

;■一時変数 tf.posture [体位動画，射精動画，遅いレート，普通レート，早いレート]
[eval exp="tf.sizue_posture = []"]

;■0　正常位１
[eval exp="tf.sizue_posture[0] = ['mov_70_10.webm','mov_70_30.webm',0.65,0.85,1,'mov_70_40.webm']"]
;■1　正常位２
[eval exp="tf.sizue_posture[1] = ['mov_70_15.webm','mov_70_30.webm',0.65,0.85,1,'mov_70_40.webm']"]
;■2　側位１
[eval exp="tf.sizue_posture[2] = ['mov_70_11.webm','mov_70_31.webm',0.85,1,1.2,'mov_70_41.webm']"]
;■3　側位2
[eval exp="tf.sizue_posture[3] = ['mov_70_16.webm','mov_70_31.webm',0.85,1,1.2,'mov_70_41.webm']"]
;■4　後背位1
[eval exp="tf.sizue_posture[4] = ['mov_70_12.webm','mov_70_32.webm',0.85,1,1.2,'mov_70_42.webm']"]
;■5　後背位2
[eval exp="tf.sizue_posture[5] = ['mov_70_17.webm','mov_70_32.webm',0.85,1,1.2,'mov_70_42.webm']"]
;■6　騎乗位
[eval exp="tf.sizue_posture[6] = ['mov_70_13.webm','mov_70_33.webm',0.85,1,1.2,'mov_70_43.webm']"]
;■7　立位
[eval exp="tf.sizue_posture[7] = ['mov_70_14.webm','mov_70_34.webm',0.65,0.85,1,'mov_70_44.webm']"]
;■8　正常位3
[eval exp="tf.sizue_posture[8] = ['mov_70_19.webm','mov_70_30.webm',0.65,0.85,1,'mov_70_40.webm']"]
;■9　後背位3
[eval exp="tf.sizue_posture[9] = ['mov_70_18.webm','mov_70_32.webm',0.85,1,1.2,'mov_70_42.webm']"]
;■10　騎乗位2
[eval exp="tf.sizue_posture[10] = ['mov_70_50.webm','mov_70_33.webm',0.85,1,1.2,'mov_70_43.webm']"]
;■11　側位3
[eval exp="tf.sizue_posture[11] = ['mov_70_51.webm','mov_70_31.webm',0.85,1,1.2,'mov_70_41.webm']"]
;■12　騎乗位3
[eval exp="tf.sizue_posture[12] = ['mov_70_52.webm','mov_70_33.webm',0.85,1,1.2,'mov_70_43.webm']"]
;■13　立位
[eval exp="tf.sizue_posture[13] = ['mov_70_53.webm','mov_70_34.webm',1,1.2,1.4,'mov_70_44.webm']"]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[glink  color="pink" size="15"  x="20"  width="150"  y="50"  text="正常位１"  target="*sizue_room_movie" exp="tf.posture = 0"]

[if exp="f.sizue_h >= 60"]
 [glink  color="pink" size="15"  x="70"  width="150"  y="85"  text="正常位２"  target="*sizue_room_movie" exp="tf.posture = 1"]
[endif]

[if exp="f.sizue_h >= 80"]
 [glink  color="pink" size="15"  x="120"  width="150"  y="120"  text="正常位3"  target="*sizue_room_movie" exp="tf.posture = 8"]
[endif]

[glink  color="pink" size="15"  x="20"  width="150"  y="160"  text="侧位１"  target="*sizue_room_movie" exp="tf.posture = 2"]

[if exp="f.sizue_h >= 70"]
 [glink  color="pink" size="15"  x="70"  width="150"  y="195"  text="侧位２"  target="*sizue_room_movie" exp="tf.posture = 3"]
[endif]

[if exp="f.sizue_h >= 80"]
 [glink  color="pink" size="15"  x="120"  width="150"  y="230"  text="侧位3"  target="*sizue_room_movie" exp="tf.posture = 11"]
[endif]

[if exp="f.sizue_h >= 60"]
 [glink  color="pink" size="15"  x="20"  width="150"  y="270"  text="后背位１"  target="*sizue_room_movie" exp="tf.posture = 4"]
[endif]

[if exp="f.sizue_h >= 70"]
 [glink  color="pink" size="15"  x="70"  width="150"  y="305"  text="后背位２"  target="*sizue_room_movie" exp="tf.posture = 5"]
[endif]

[if exp="f.sizue_h >= 90"]
 [glink  color="pink" size="15"  x="120"  width="150"  y="340"  text="后背位3"  target="*sizue_room_movie" exp="tf.posture = 9"]
[endif]

[if exp="f.sizue_h >= 80"]
 [glink  color="pink" size="15"  x="20"  width="150"  y="380"  text="乘骑位"  target="*sizue_room_movie" exp="tf.posture = 6"]
[endif]

[if exp="f.sizue_h >= 90"]
 [glink  color="pink" size="15"  x="70"  width="150"  y="415"  text="乘骑位2"  target="*sizue_room_movie" exp="tf.posture = 10"]
[endif]

[if exp="f.sizue_h >= 95"]
 [glink  color="pink" size="15"  x="120"  width="150"  y="450"  text="乘骑位3"  target="*sizue_room_movie" exp="tf.posture = 12"]
[endif]

[if exp="f.sizue_h >= 90"]
 [glink  color="pink" size="15"  x="20"  width="150"  y="490"  text="立位"  target="*sizue_room_movie" exp="tf.posture = 7"]
[endif]

[if exp="f.sizue_h >= 95"]
 [glink  color="pink" size="15"  x="70"  width="150"  y="525"  text="立位2"  target="*sizue_room_movie" exp="tf.posture = 13"]
[endif]

[s]

*sizue_room_movie
#
;■一時変数宣言
[eval exp="tf.kaikan = 0"]
[eval exp="tf.sp = tf.sizue_posture[tf.posture][2]"]
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
[bgmovie storage="&tf.sizue_posture[tf.posture][0]" loop="true"]
[iscript]
tf.sp = tf.sizue_posture[tf.posture][2]
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
tf.sp = tf.sizue_posture[tf.posture][4]
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
tf.sp = tf.sizue_posture[tf.posture][3]
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
tf.sp = tf.sizue_posture[tf.posture][2]
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

;[wait time="2000"]
[eval exp="tf.syasei = tf.syasei + tf.syasei_up"]
[if exp="tf.syasei < 0"]
[eval exp="tf.syasei = 0"]
[endif]
[eval exp="tf.syasei_up = tf.syasei_up + 1"]
;***********************************************************************************************************************
;いく判別 快感度400でいく
[if exp="f.sizue_h >= 100 && tf.kaikan >= 400 && tf.ikisou == 1"]
 [cm]
 [clearfix]
 ;メッセージボックスは非表示
 @layopt layer="message" visible=false
 [stop_bgmovie]
 [stopse buf="0"]
 [stopse buf="3"]
 [bgloop mov = "mov_70_60.webm" ti = 0]
 [movie storage="mov_70_61.webm" skip="true"]
 [bg storage="black.png" time="0"]
 [playse storage="sizue/sz55_012_1.ogg" loop="true"]
 [bgloop mov = "mov_70_63.webm" ti = 0]
 ;絶頂フラグオン
 [eval exp="f.sizue_orgasm = true"]
 [jump target="*sizue_after"]
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
;静江快感度計算

;エッチ度50-75までの反応
[if exp="f.sizue_h >= 50 && f.sizue_h <= 75"]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan + 20"]
  [eval exp="tf.aegi = 13"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan + 10"]
  [eval exp="tf.aegi = 12"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 3"]
  [eval exp="tf.aegi = 11"]
 [endif]
[endif]
;***********************************************************************************************************************
;エッチ度76-100までの反応
[if exp="f.sizue_h >= 76]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan + 30"]
  [eval exp="tf.aegi = 23"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan + 15"]
  [eval exp="tf.aegi = 22"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 3"]
  [eval exp="tf.aegi = 21"]
 [endif]
[endif]

;***********************************************************************************************************************
;いきそう判定 快感度300でいきそう
[if exp="f.sizue_h >= 100 && tf.kaikan >= 400 && tf.ikisou == 0"]
 [iscript]
 tf.rand = Math.floor( Math.random() * 3)
 [endscript]
 [if exp="tf.rand == 0"]
 [playse storage="sizue/sz70_054.ogg" buf="0" loop="true"]
 [endif]
 [if exp="tf.rand == 1"]
 [playse storage="sizue/sz70_055.ogg" buf="0" loop="true"]
 [endif]
 [if exp="tf.rand == 2"]
 [playse storage="sizue/sz70_056.ogg" buf="0" loop="true"]
 [endif]
 [eval exp="tf.ikisou = 1"]
[endif]

[if exp="tf.ikisou == 0"]
;***********************************************************************************************************************
;喘ぎ判別
;前回と同じか判別

[if exp="tf.aegi != tf.aegi_old"]
;***********************************************************************************************************************
;エッチ度50-75
;■遅い
 [if exp="tf.aegi == 11"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="sizue/sz70_011.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 12"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="sizue/sz70_014.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu02.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 13"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="sizue/sz70_017.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu03.ogg" buf="3" loop="true"]
 [endif] 
;***********************************************************************************************************************
;エッチ度76-100
;■遅い
 [if exp="tf.aegi == 21"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="sizue/sz70_020.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 22"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="sizue/sz70_021.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu02.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 23"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="sizue/sz70_023.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu03.ogg" buf="3" loop="true"]
 [endif]  
[endif]
[endif]

;***********************************************************************************************************************
;いきそう効果音処理
[if exp="tf.ikisou == 1"]

;■遅い
 [if exp="tf.aegi == 21"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [eval exp="tf.kaikan = tf.kaikan - 10"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 22"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [eval exp="tf.kaikan = tf.kaikan - 5"]
  [playse storage="se/kutyu02.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 23"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="se/kutyu03.ogg" buf="3" loop="true"]
 [endif] 
;快感300下回ったら喘ぎを戻す  
 [if exp="tf.kaikan < 400"]
  [eval exp="tf.ikisou = 0"]
  [playse storage="sizue/sz70_020.ogg" buf="0" loop="true"]
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
[movie storage="&tf.sizue_posture[tf.posture][5]" skip="true"]
[bg storage="black.png" time="0"]
[playse storage="sizue/sz55_012_1.ogg" buf="0" loop="true"]
[bgloop mov = &tf.sizue_posture[tf.posture][1] ti = 0]
;***********************************************************************************************************************
;--静江エッチ後
*sizue_after
[cm]
#
[menuwindows]
[stopse buf="0"]
[bgmovie storage="mov_67_2.webm"]
;***********************************************************************************************************************
;快感度判定
;■快感度　100以下
[if exp="tf.kaikan < 100"]
#
做得……不太好……[p]
#静江
[playse storage="sizue/sz70_051.ogg" buf="0"]
哥哥，没关系的[p]
;●静江エッチ度増加
[eval exp="f.sizue_h = f.sizue_h + 3 "]
[jump  target="*sizue_room_end"]
[endif]

;■快感度200以上反応
[if exp="tf.kaikan >= 200"]
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]
[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz70_050.ogg" buf="0"]
嘿嘿，我最喜欢哥哥了[p]
[endif]
[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz70_049.ogg" buf="0"]
阿姨我最喜欢H了……[r]
都是因为哥哥才想起来的[p]
[endif]
[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz70_048.ogg" buf="0"]
对阿姨的身体做这样的事，你今后会很辛苦哦[p]
[endif]
[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz70_047.ogg" buf="0"]
哥哥……真是的……你真是个笨蛋……[p]
[endif]

;●静江エッチ度増加
[eval exp="f.sizue_h = f.sizue_h + 6 "]
[jump  target="*sizue_room_end"]
[endif]

;■快感度100以上反応
[if exp="tf.kaikan >= 100"]
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]
[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz70_043.ogg" buf="0"]
哥哥，舒服吗？[p]
[endif]
[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz70_044.ogg" buf="0"]
嘿嘿，我这样阿姨可以吗？[p]
[endif]
[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz70_045.ogg" buf="0"]
真是的，哥哥，如果阿姨当真了，你打算怎么做？[p]
[endif]
[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz70_046.ogg" buf="0"]
哥哥，真的很舒服啊[p]
[endif]
;●静江エッチ度増加
[eval exp="f.sizue_h = f.sizue_h + 5 "]
[jump  target="*sizue_room_end"]
[endif]

;***********************************************************************************************************************
;愛情，エッチ度増加
*sizue_room_end
[sizue_i]

;エッチ度上限チェック
[if exp="f.sizue_h > 100"]
 [eval exp="f.sizue_h = 100"]
[endif]

;精力体力減衰
[eval exp="f.energy = f.energy -30"]
[eval exp="f.hp = f.hp -20"]
[eval exp="f.patience = f.patience + 10"]

;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
#
[bg storage="room_night.png" time="1000"]
[uiwindows]
回到了房间[p]

[jump storage="main.ks" target="*night_choice"]
