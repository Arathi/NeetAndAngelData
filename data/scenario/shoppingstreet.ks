;商店街

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;樱子消去
#
[chara_hide name="sakurako"]
[playbgm storage="nonbiri.ogg" loop="true"]
@bg storage ="shoppingstreet_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.shoppingstreet_fast == undefined"]
#
来到了虹色商业街[p]
莉菜好像经常来买东西[p]

[eval exp="f.shoppingstreet_fast = true"]
[else]
#
来到了虹色商业街[p]
[endif]


;-キャラクター判別
;配列変数 f.shoppingstreet_day を日付で判別
;0 樱子　１　莉子　２　莉菜　３　静江
[if exp="f.shoppingstreet_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_shoppingstreet"]
[return]
[endif]

;莉子
[if exp="f.shoppingstreet_day[f.day] == 1"]
[jump target="*riko_shoppingstreet"]
[endif]

;莉菜
[if exp="f.shoppingstreet_day[f.day] == 2"]
[jump target="*rina_shoppingstreet"]
[endif]

;静江
[if exp="f.shoppingstreet_day[f.day] == 3"]
[jump target="*sizue_shoppingstreet"]
[endif]

;二人
[if exp="f.shoppingstreet_day[f.day] == 5"]
[jump target="*futari_shoppingstreet"]
[endif]

;-商店街イベント　莉菜-----------------------------------------------------------------------------------------
*rina_shoppingstreet

;樱子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_rina_goout"]

;温泉判別
;エッチ度90以上
;f.spa = 1 莉子　　f.spa = 2 莉菜　　f.spa = 3 静江　　f.spa = 4 帰宅
[if exp="f.spa == undefined"]
 [if exp="f.riko_h >= 90 && f.spa_riko_h == undefined"]
  [eval exp = "f.spa = 1"]
  [jump target="*spa_shoppingstreet"]
 [endif]
 [if exp="f.rina_h >= 90 && f.spa_rina_h == undefined"]
  [eval exp = "f.spa = 2"]
  [jump target="*spa_shoppingstreet"]
 [endif]
 [if exp="f.sizue_h >= 90 && f.spa_sizue_h == undefined"]
  [eval exp = "f.spa = 3"]
  [jump target="*spa_shoppingstreet"]
 [endif]
[endif]

;--①
[if exp="f.rina_shoppingstreet == undefined || f.rina_shoppingstreet == 1"]
#
[bg storage="shoppingstreet/img18_06.png" time="1000"]
啊！是莉菜[p]
#莉菜
[playse storage="rina/rn18_008.ogg" buf="0"]
哥哥，怎么了?在这种地方[p]
#
偶尔来买东西啊，不过东西都装满了呢[p]
#莉菜
[playse storage="rina/rn18_009.ogg" buf="0"]
因为是特卖很便宜，所以不知不觉就买得太多了[r]
非常感谢。[p]
#
和莉菜一起回去了[p]

[eval exp="tf.place = 1"]
;莉菜ちゃん好感度UP
[rina_f]

;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_shoppingstreet = 2"]
[return]
[endif]

;--②
[if exp="f.rina_shoppingstreet == 2"]
#
[bg storage="shoppingstreet/img18_07.png" time="1000"]
是莉菜，和店主聊得很开心……[r]
看起来很开心的样子[p]
莉菜买完东西了[p]
[bg storage="shoppingstreet/img18_07.png" time="1000"]
#莉菜
[playse storage="rina/rn18_010.ogg" buf="0"]
哥哥！讨厌，你从什么时候在那里看着的！[p]
#
嗯，从你和店主砍价交战的时候吧。[p]
#莉菜
[playse storage="rina/rn18_011.ogg" buf="0"]
是我太投入了……好难为情[p]
#
那我们一起回去吧[p]
#莉菜
[playse storage="rina/rn18_012.ogg" buf="0"]
好啊[p]
#鱼店老板
莉菜，今天鱼很便宜哦！[p]
#莉菜
[playse storage="rina/rn18_013.ogg" buf="0"]
诶！真的吗？哪条鱼？！[p]
[bg storage ="shoppingstreet_day.png" time="1000"]
#
啊……走掉了。[p]
[bg storage ="shoppingstreet_evening.png" time="1000"]
#
等莉菜买完东西一起回去[p]


;莉菜ちゃん好感度UP
[rina_f]

;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="tf.place = 1"]
[eval exp="f.rina_shoppingstreet = 3"]


[return]
[endif]

;--③
[if exp="f.rina_shoppingstreet == 3"]
#
[bg storage="shoppingstreet/img18_08.png" time="1000"]
莉菜啊！买东西吗？[p]
#莉菜
[playse storage="rina/rn18_014.ogg" buf="0"]
是啊，因为今天是特卖日[p]
哦，我帮你拎东西[p]
#莉菜
[playse storage="rina/rn18_015.ogg" buf="0"]
真的吗？谢谢[p]
#
[bg storage ="shoppingstreet_day.png" time="1000"]
额啊……[p]
[bg storage="shoppingstreet/img18_09.png" time="1000"]
#莉菜
[playse storage="rina/rn18_016.ogg" buf="0"]
哥哥，这次我要去那边的店哦！[p]
#
啊~……平时运动严重不足……[p]

[bg storage ="shoppingstreet_evening.png" time="1000"]
#
等莉菜买完东西一起回去了[p]


;莉菜ちゃん好感度UP
[rina_f]

;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="tf.place = 1"]
[eval exp="f.rina_shoppingstreet = 1"]


[return]
[endif]

;--二人

*futari_shoppingstreet
#
[bg storage="shoppingstreet/img17_15.png" time="1000"]
你们俩在购物吗？[p]
[playse storage="rina/rn18_017.ogg" buf="0"]
我陪莉子来买东西[p]

;莉菜ちゃん好感度UP
[rina_f]

;パートナー二人変更
[eval exp="f.partner = 4"]

[eval exp="tf.place = 1"]

[return]

;温泉福引
*spa_shoppingstreet
#
[bg storage="spa/img_48_1.png" time="1000"]
莉菜，现在要不要回去？[p]
#莉菜
[playse storage="rina/rn48_001.ogg" buf="0"]
哥哥，现在正要去商店街抽取福引[r]
一起去吗？[p]
#
福引？[p]
#莉菜
[playse storage="rina/rn48_002.ogg" buf="0"]
对啊！　一等奖是温泉旅行哦[r]
我有好几张抽奖券，一起去摇奖吧[p]
#
嗯，走吧！[p]
[bg storage="spa/img_48_3.png" time="1000"]
莉菜，太可惜了……全部是纸巾！[p]
#莉菜
[playse storage="rina/rn48_003.ogg" buf="0"]
我的运气真差啊……[p]
#商店街的大叔
你要不要试试[p]
[bg storage="spa/img_48_2.png" time="1000"]
#莉菜
[playse storage="rina/rn48_004.ogg" buf="0"]
哥哥，加油！　最后一次了！　[p]
#
（拜托了，我的运势！　神大人！佛大人！大天使樱子大人！　唔哦哦哦哦哦～）[p]
[bg storage="spa/img_48_4.png" time="1000"]
这！这是～！？[p]
[bg storage="spa/img_48_5.png" time="1000"]
#莉菜
[playse storage="rina/rn48_005.ogg" buf="0"]
哥哥！　好厉～害！　温泉旅行吔！[p]
#
没想到中了一等奖！[p]
下个双休日去温泉旅行！[p]
[stopse]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]
[eval exp="tf.place = 1"]
[return]