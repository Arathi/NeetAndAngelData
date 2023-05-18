;樱子のシナリオ

;***********************************************************************************************************************
;-起床イベント
*sakurako_wakeup
@bg storage ="room_day.png" time=1000
[menuwindows]


;1回目の朝
[if exp="f.wakeup == undefined"]
#
嘿嘿，真是个清爽的早晨啊，今天也加油吧！[p]
#樱子
[chara_show name="sakurako" face="okori02" left=100]
[playse storage="sakurako/sa71_011.ogg" buf="0"]
才不是！什么清爽啊，已经是中午了！[p]
#
没办法，我一直都是家里蹲！[r]
光是中午起床就很了不起了！[p]
#樱子
[chara_mod  name="sakurako" face="akireru" ]
[playse storage="sakurako/sa71_012.ogg" buf="0"]
哈~……真为你的未来担忧啊！[p]
[eval exp="f.wakeup = true "]
[return]
[else]
#
啊~，醒来了……今天也睡过了中午[p]

[chara_show name="sakurako" face="default" left=100 ]
[endif]

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 6)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_013.ogg" buf="0"]
今天要做什么呢?[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_014.ogg" buf="0"]
终于起来了啊！[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_mod  name="sakurako" face="akubi" ]
[playse storage="sakurako/sa71_015.ogg" buf="0"]
嗯，你醒了吗？[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa71_016.ogg" buf="0"]
你真是太懒散了[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa71_017.ogg" buf="0"]
一脸昏昏欲睡的表情啊[p]
[endif]

[if exp="tf.rand == 5"]
#樱子
[chara_mod  name="sakurako" face="okori02" ]
[playse storage="sakurako/sa71_018.ogg" buf="0"]
快把脸洗干净[p]
[endif]

[return]

;***********************************************************************************************************************
;-休養
*sakurako_break

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_019.ogg" buf="0"]
今天休息吗?[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_020.ogg" buf="0"]
真是的，总是偷懒啊[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_mod  name="sakurako" face="akubi" ]
[playse storage="sakurako/sa71_021.ogg" buf="0"]
什么嘛，累了吗?[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa71_022.ogg" buf="0"]
又要休息吗？[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa71_023.ogg" buf="0"]
偶尔也需要休息[p]
[endif]
#
[return]


;***********************************************************************************************************************
;-バイト
*sakurako_work
;1回目のバイト
[if exp="f.work == undefined"]
#樱子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa72_024.ogg" buf="0"]
你终于想工作了吗？[p]
#
不，但是……我还很害怕……[p]
#樱子
[playse storage="sakurako/sa72_025.ogg" buf="0"]
没事的没事的，我会跟着你！[p]
#
你，你要跟来吗？[p]
#樱子
[chara_mod  name="sakurako" face="panchi03" ]
[playse storage="sakurako/sa72_026.ogg" buf="0"]
当然了！我得好好监视你[r]
认真起来，像个男子汉一点！鼓起精神来吧！！[p]

[eval exp="f.work = true "]
;樱子消去
#
[chara_hide name="sakurako"]
[return]
[endif]

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa72_027.ogg" buf="0"]
哦！要去打工吗！[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa72_028.ogg" buf="0"]
嗯，关心关心[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_mod  name="sakurako" face="panchi02" ]
[playse storage="sakurako/sa72_029.ogg" buf="0"]
今天也要加油哦![p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_mod  name="sakurako" face="kobusi01" ]
[playse storage="sakurako/sa72_030.ogg" buf="0"]
要去赚钱了[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa72_031.ogg" buf="0"]
你要做的话也是能做到的嘛[p]
[endif]

;樱子消去
#
[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-占い
*sakurako_status
;所持金判別
[if exp="f.money < 500"]
#樱子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa79_002.ogg" buf="0"]
不是没有钱吗！[p]
[chara_hide name="sakurako"]
#
[return]
[endif]

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 2)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa79_001.ogg" buf="0"]
你要占卜吗？来，500日元[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa79_003.ogg" buf="0"]
谢谢惠顾![p]
[endif]
[eval exp="f.money = f.money - 500"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]

;コール占い画面
[call storage="status.ks"]

;樱子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-過労
*overwork
;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_001.ogg" buf="0"]
哼！你这个瘦弱的家伙！[r]
这样下去，我真担心你的未来啊！[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_002.ogg" buf="0"]
身体很弱啊！[r]
老是闭门不出！[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_003.ogg" buf="0"]
做不到自我管理，真是太丢人了！[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_004.ogg" buf="0"]
不行啊！你真是不行啊！[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_005.ogg" buf="0"]
哼，真是的！[r]
真是个体弱的家伙啊[p]
[endif]

;樱子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-夢
*sakurako_dream

@bg storage ="room_day.png" time=1000
[menuwindows]
#
真是，做了个不得了的梦啊……[p]

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_006.ogg" buf="0"]
真是的，一副恶心的睡脸[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_007.ogg" buf="0"]
快在现实中做些色情的事来吧[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_008.ogg" buf="0"]
洗自己的内裤是种什么感觉？[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_009.ogg" buf="0"]
尽做些讨厌的梦啊[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_010.ogg" buf="0"]
积压太多了吗？要我来帮你释放掉吗？[r]
别当真啊！[p]
[endif]

[return]

;***********************************************************************************************************************
;-外出
*GoOut
;1回目の外出
[if exp="f.goout == undefined"]
#樱子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa73_032.ogg" buf="0"]
好了，我们出门吧！[p]
#
果然还是心情沉重啊……[p]
#樱子
[chara_mod  name="sakurako" face="okori03" ]
[playse storage="sakurako/sa73_033.ogg" buf="0"]
你这个垃圾！都是观念的错！你不是已经决定要出门了吗！[r]
这是决定事项！[p]
#
诶~果然还是不要~！！[p]
#樱子
[chara_mod  name="sakurako" face="keri01" ]
[playse storage="sakurako/sa73_034.ogg" buf="0"]
走你！
[playse storage="se/naguru.ogg" buf="2"]
[quake count="1" time="300"]
[p]
#
啊！[p]
[chara_mod  name="sakurako" face="mahou01" ]
[playse storage="se/o_ra.ogg" buf="2" loop="true"]
#
哇！身体自己动起来了！？[p]
[fadeoutse buf="2"]
#樱子
[playse storage="sakurako/sa73_035.ogg" buf="0"]
嘿嘿，这样就不得不走了吧！[p]

#
呜呜……别啊~[p]


[eval exp="f.goout = true "]
;樱子消去
;#
;[chara_hide name="sakurako"]
[return]

[endif]

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa73_036.ogg" buf="0"]
哦！你要出去吗？[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa73_037.ogg" buf="0"]
嗯~出去了！[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_mod  name="sakurako" face="akubi" ]
[playse storage="sakurako/sa73_038.ogg" buf="0"]
今天我们要去哪里？[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa73_039.ogg" buf="0"]
出发吧！[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa73_040.ogg" buf="0"]
今天出门了！[p]
[endif]

;樱子消去
;#
;[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-図書館会話
*sakurako_library

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_001.ogg" buf="0"]
哦，图书馆……你要学习吗？[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_002.ogg" buf="0"]
嗯，真佩服！好好努力！[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="default" left=100 ]
[playse storage="sakurako/sa80_003.ogg" buf="0"]
这里可没有色情书哦[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa80_004.ogg" buf="0"]
你是来找保健体育书的吗？[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_005.ogg" buf="0"]
要是大声说话会被提醒的哦[p]
[endif]

[return]

;***********************************************************************************************************************
;-莉子発見
*sakurako_riko_goout
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[chara_show name="sakurako" face="tobi01" left=100 ]
[if exp="tf.rand == 0"]
#樱子
[playse storage="sakurako/sa76_001.ogg" buf="0"]
莉子在哦，快去跟她说话！[p]
[endif]
[if exp="tf.rand == 1"]
#樱子
[playse storage="sakurako/sa76_002.ogg" buf="0"]
嗯！嗯！那不是莉子吗[p]
[endif]
[if exp="tf.rand == 2"]
#樱子
[playse storage="sakurako/sa76_003.ogg" buf="0"]
发现莉子！[p]
[endif]
;樱子消去
#
[chara_hide name="sakurako"]
[return]

;-莉菜発見
*sakurako_rina_goout
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[chara_show name="sakurako" face="tobi01" left=100 ]
[if exp="tf.rand == 0"]
#樱子
[playse storage="sakurako/sa76_004.ogg" buf="0"]
莉菜在哦，快去吧！[p]
[endif]
[if exp="tf.rand == 1"]
#樱子
[playse storage="sakurako/sa76_005.ogg" buf="0"]
莉菜啊，在做什么呢？[p]
[endif]
[if exp="tf.rand == 2"]
#樱子
[playse storage="sakurako/sa76_006.ogg" buf="0"]
那不是莉菜吗[p]
[endif]
;樱子消去
#
[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-静江発見
*sakurako_sizue_goout
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[chara_show name="sakurako" face="tobi01" left=100 ]
[if exp="tf.rand == 0"]
#樱子
[playse storage="sakurako/sa76_007.ogg" buf="0"]
是静江啊！现在，快去！[p]
[endif]
[if exp="tf.rand == 1"]
#樱子
[playse storage="sakurako/sa76_008.ogg" buf="0"]
嗯，静江在！[p]
[endif]
[if exp="tf.rand == 2"]
#樱子
[playse storage="sakurako/sa76_009.ogg" buf="0"]
那是静江吧，去和她说话！[p]
[endif]
;樱子消去
#
[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-本屋会話
*sakurako_bookstore

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_006.ogg" buf="0"]
你的目的是色情书吧！[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_007.ogg" buf="0"]
光看漫画可不行啊[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_008.ogg" buf="0"]
要买些什么吗？[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_009.ogg" buf="0"]
偶尔读读小说！[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_010.ogg" buf="0"]
一直站着看的话会被骂的！[p]
[endif]

[if exp="f.money >= 1000"]
#
去买漫画吧[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]

[return]

;***********************************************************************************************************************
;-公園会話
*sakurako_park

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_021.ogg" buf="0"]
你也运动一下怎么样[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_022.ogg" buf="0"]
你瞧！我要跑了！肚子好饿！[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_023.ogg" buf="0"]
汗流浃背啊，太难看了！[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_024.ogg" buf="0"]
稍微晒晒日光吧！你的眼睛看起来很不健康啊！[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_025.ogg" buf="0"]
锻炼对身体会有好处[p]
[endif]

#
樱子强迫我进行了运动[p]
[eval exp="f.hp = f.hp - 10"]

[return]

;-駄菓子屋会話
*sakurako_store

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_032.ogg" buf="0"]
哦！要抽卡吗？[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_033.ogg" buf="0"]
看起来不错吗？[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_034.ogg" buf="0"]
这是什么？[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_035.ogg" buf="0"]
你是来买粗点心的吗？[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_037.ogg" buf="0"]
店里的老太太就像摆设一样[p]
[endif]

[if exp="f.money >= 1000"]
#
去买点点心吧[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]

[return]

;***********************************************************************************************************************
;-ゲームセンター
*sakurako_arcade

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_011.ogg" buf="0"]
吊娃娃机里有很多手办！[r]
帅哥手办也有很多啊[p]
[playse storage="sakurako/sa80_011_2.ogg" buf="0"]
因为你房间里只有女孩子的手办……[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_012.ogg" buf="0"]
你和女孩子关系好的话，也能拍大头贴哦[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_013.ogg" buf="0"]
玩游戏吗！你看起来不太擅长啊[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_014.ogg" buf="0"]
看起来没有节奏感，不要去跳舞啊！[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_015.ogg" buf="0"]
对战！我们玩对战游戏吧！[p]
[endif]

[if exp="f.money >= 1000"]
#
好不容易来这里[r]
玩个游戏吧[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]
那么，接下来[r]
[return]

;-商店街
*sakurako_shoppingstreet

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_038.ogg" buf="0"]
那边在做福引呢[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_039.ogg" buf="0"]
你好像不会自己做饭啊[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_040.ogg" buf="0"]
这条商店街很活跃啊[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_041.ogg" buf="0"]
这里的店主们看起来对年轻女人很软弱啊[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_042.ogg" buf="0"]
你要买东西吗？[p]
[endif]

[return]

;***********************************************************************************************************************
;-カフェ
*sakurako_cafe

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_016.ogg" buf="0"]
什么嘛，要休息啊？[r]
你什么都没做就要休息啊！[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_017.ogg" buf="0"]
巧克力芭菲之类的很好吃[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_019.ogg" buf="0"]
要休息啊？[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_020.ogg" buf="0"]
真是个时髦的地方啊[p]
[endif]

[if exp="f.money >= 1000"]
#
累了，在这休息一下吧[p]
休息后精力就恢复了[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
;体力減少
[eval exp="f.hp = f.hp + 10"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]

[return]

;***********************************************************************************************************************
;-夕食後
*sakurako_evening

;１回目判別
[if exp="f.sakurako_evening == undefined"]
[eval exp="f.sakurako_evening = true"]
[chara_show name="sakurako" face="niko" left=100 ]
#樱子
[playse storage="sakurako/sa77_001.ogg" buf="0"]
好了，去跟谁搭话吧！[p]
#
诶！现在？[p]
#樱子
[playse storage="sakurako/sa77_002.ogg" buf="0"]
你白痴啊！现在不聊什么时候聊？[p]
#
但是！我该说什么才好……[p]
#樱子
[playse storage="sakurako/sa77_003.ogg" buf="0"]
我昨天给你讲解了那么多！快想起来[r]
总之什么都行，快去搭话吧！[p]
[return]
[endif]

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa77_004.ogg" buf="0"]
今天也去吧[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa77_005.ogg" buf="0"]
今天要找谁搭话？[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa77_006.ogg" buf="0"]
来吧，去搭话！[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa77_007.ogg" buf="0"]
看！就是现在！[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa77_008.ogg" buf="0"]
现在是机会！[p]
[endif]

[return]

;***********************************************************************************************************************
;-部屋会話
*sakurako_room

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_006.ogg" buf="0"]
嗯！难道是去做色情的事吗？[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_007.ogg" buf="0"]
今天也加油吧[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_008.ogg" buf="0"]
你也要做啊[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_009.ogg" buf="0"]
你这个色鬼！[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_010.ogg" buf="0"]
顺利！顺利！[p]
[endif]

[return]

;***********************************************************************************************************************
;-デート会話
*sakurako_date

;1回目のデート
[if exp="f.date_sakurako == undefined"]
#樱子
[chara_show name="sakurako" face="niya" left=100]
[playse storage="sakurako/sa74_041.ogg" buf="0"]
竟然要去约会啊！太好了！干得不错嘛，快去干吧！[p]
[playse storage="sakurako/sa74_041_2.ogg" buf="0"]
这也多亏了我的教育啊……回来后要详细地告诉我哦[p]
#
诶！你不来吗？[p]
#樱子
[chara_mod  name="sakurako" face="okori02" ]

[playse storage="sakurako/sa74_042.ogg" buf="0"]
为什么要我看那些乱七八糟的啊！你白痴啊！[p]
#
但是，我忐忑不安啊……[p]
#樱子
[chara_mod  name="sakurako" face="panchi01" ]

[playse storage="sakurako/sa74_043.ogg" buf="0"]
没事的！你已经做得很充分了！[r]
快去做色色的事情吧！[p]
#
怎么可能做得到！[r]
只是约会而已！[p]
#樱子
[chara_mod  name="sakurako" face="okori" ]

[playse storage="sakurako/sa74_044.ogg" buf="0"]
知道的吧，你要把钱带够啊！[p]

[eval exp="f.date_sakurako = true "]
;樱子消去
#
[chara_hide name="sakurako"]
[return]
[endif]

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa74_045.ogg" buf="0"]
哦！ 今天是约会吗！ 加油啊！[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="kobusi01" left=100 ]
[playse storage="sakurako/sa74_046.ogg" buf="0"]
你能行！ 要有自信！[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa74_047.ogg" buf="0"]
你要做很多色色的事啊！[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa74_048.ogg" buf="0"]
你也干得不错啊[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa74_049.ogg" buf="0"]
别搞砸了！[p]
[endif]
;樱子消去
#
[chara_hide name="sakurako"]
[return]
;***********************************************************************************************************************
;-宅配便
*sakurako_delivery
[chara_show name="sakurako" face="niko" left=100 ]
#樱子
[playse storage="sakurako/sa75_001.ogg" buf="0"]
喂！有包裹送来了[p]
[return]
;***********************************************************************************************************************
;-夜の会話
*sakurako_talk

;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 31)
[endscript]

;[eval exp="tf.rand = 15"]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_001.ogg" buf="0"]
莉子，她那是抖S吧？ 那样一副表情[p]
#
是有这种感觉[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa81_002.ogg" buf="0"]
在游戏厅经常能看到莉子[p]
#
哦，到时去看看吧[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_005.ogg" buf="0"]
莉菜是抖Ｍ吧，我知道的[p]
#
是，是吗？嗯……[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_009.ogg" buf="0"]
静江是非常淫乱的[r]
我早就预见到了[p]
#
看到那胸部，确实有这种感觉！[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa81_011.ogg" buf="0"]
静江好像经常在公园里[r]
收集口袋妖怪[p]
#
原来如此，去看看吧[p]
[endif]

[if exp="tf.rand == 5"]
#樱子
[chara_show name="sakurako" face="akubi03" left=100 ]
[playse storage="sakurako/sa81_012.ogg" buf="0"]
不只是美少女手办，能给我买帅哥的手办吗[p]
#
我没有那么多钱！[p]
[endif]

[if exp="tf.rand == 6"]
#樱子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa81_013.ogg" buf="0"]
你的……电脑历史记录就只有色情了吗！[p]
#
这是一个健康的男人电脑的历史记录[p]
[endif]

[if exp="tf.rand == 7"]
#樱子
[chara_show name="sakurako" face="kobusi03" left=100 ]
[playse storage="sakurako/sa81_014.ogg" buf="0"]
好闲啊，做点什么吧！ 来玩模仿秀吧[p]
#
不要突然这么乱来啊[p]
[endif]

[if exp="tf.rand == 8"]
#樱子
[chara_show name="sakurako" face="kobusi03" left=100 ]
[playse storage="sakurako/sa81_015.ogg" buf="0"]
你有好好打工吗？ 不要偷懒哦[p]
#
我想放弃了……[p]
[endif]

[if exp="tf.rand == 9"]
#樱子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa81_018.ogg" buf="0"]
没有我你就什么都做不了[p]
#
是……是这样吗……[p]
[endif]

[if exp="tf.rand == 10"]
#樱子
[chara_show name="sakurako" face="talk01" left=100 ]
[playse storage="sakurako/sa81_019.ogg" buf="0"]
射门![p]
#
在踢足球吗[p]
[endif]

[if exp="tf.rand == 11"]
#樱子
[chara_show name="sakurako" face="talk04" left=100]
[playse storage="sakurako/sa81_020.ogg" buf="0"]
樱子选手，华丽的运球动作！[p]
#
这不是很漂亮的假动作吗！[p]
[endif]

[if exp="tf.rand == 12"]
#樱子
[chara_show name="sakurako" face="talk02" left=100 ]
[playse storage="sakurako/sa81_021.ogg" buf="0"]
攻~击！[p]
#
呜哇！[p]
[endif]

[if exp="tf.rand == 13"]
#樱子
[chara_show name="sakurako" face="talk03" left=100 ]
[playse storage="sakurako/sa81_022.ogg" buf="0"]
面~部！ 面部！ 面部！[p]
#
好痛好痛[p]
[endif]

[if exp="tf.rand == 14"]
#樱子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa81_023.ogg" buf="0"]
我现在很忙！[p]
#
诶，你什么都没做啊！[p]
[endif]

[if exp="tf.rand == 15"]
#樱子
[chara_show name="sakurako" face="talk05" left=100]
[playse storage="sakurako/sa81_024.ogg" buf="0"]
啊~樱子选手，预告本垒打！ 咔咚~！[p]
#
别往这边打球！[p]
[endif]

[if exp="tf.rand == 16"]
#
樱子，听我说啊！[r]
今天，发生这样的事……[p]
这样那样……[p]
#樱子
[chara_show name="sakurako" face="akubi02" left=100 ]
[playse storage="sakurako/sa81_025.ogg" buf="0"]
别在意细节！[p]
[endif]

[if exp="tf.rand == 17"]
#樱子
[chara_show name="sakurako" face="talk00" left=100 ]
[playse storage="sakurako/sa81_026.ogg" buf="0"]
哈，哈咿！ 嘿！ 哈咿呀！[p]
#
好痛好痛[p]
[endif]

[if exp="tf.rand == 18"]
#樱子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa81_027.ogg" buf="0"]
我现在在看电视，待会儿再说吧[p]
#
诶，和我说说话吧~[p]
[endif]

[if exp="tf.rand == 19"]
#樱子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa81_028.ogg" buf="0"]
我现在正在读书，以后再说吧[p]
#
樱子，听我说啊~[p]
[endif]

[if exp="tf.rand == 20"]
#樱子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa81_029.ogg" buf="0"]
注意你的体力[r]
打工和出门时会消耗[p]
#
我一直有休息，不用担心[p]
[endif]

[if exp="tf.rand == 21"]
#樱子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa81_030.ogg" buf="0"]
别积攒太多了[r]
否则你就会做很糟糕的梦[p]
#
这才是健康的男人[p]
[endif]

[if exp="tf.rand == 22"]
#樱子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_031.ogg" buf="0"]
总之多搭话就能提高好感度[p]
#
多搭话吗……[p]
[endif]

[if exp="tf.rand == 23"]
#樱子
[chara_show name="sakurako" face="panchi03" left=100 ]
[playse storage="sakurako/sa81_033.ogg" buf="0"]
每天都很热~[r]
什么？ 即使是人偶，热的时候也会感觉很热啊！[p]
#
哦，那件衣服能脱下来的吗？[p]
[endif]

[if exp="tf.rand == 24"]
#樱子
[chara_show name="sakurako" face="panchi03" left=100 ]
[playse storage="sakurako/sa81_034.ogg" buf="0"]
周末的工资会提高哦！[p]
#
休息日就让我休息吧[p]
[endif]

[if exp="tf.rand == 25"]
#樱子
[chara_show name="sakurako" face="mahou01" left=100 ]
[playse storage="sakurako/sa81_035.ogg" buf="0"]
用我的灵力就没有做不到的事了[p]
#
别再操控我了！[p]
[endif]

[if exp="tf.rand == 26"]
#樱子
[chara_show name="sakurako" face="kobusi04" left=100 ]
[playse storage="sakurako/sa81_037.ogg" buf="0"]
提高好感度就能约会哦[p]
#
我会努力的[p]
[endif]

[if exp="tf.rand == 27"]
#樱子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa81_038.ogg" buf="0"]
精力不济的话，关键时刻可派不上用场哟[p]
#
一直积压着，所以没问题的[p]
[endif]

[if exp="tf.rand == 28"]
#樱子
[chara_show name="sakurako" face="talk06" left=100 ]
[playse storage="sakurako/sa81_040.ogg" buf="0"]
呜呶呶！ 安静下来……停下来，我的左手！[p]
#
这是在玩什么？……[p]
[endif]

[if exp="tf.rand == 29"]
#樱子
[chara_show name="sakurako" face="mahou01" left=100 ]
[playse storage="sakurako/sa81_042.ogg" buf="0"]
被黑暗的火焰包围消失吧！[p]
#
咕嘟~！！[p]
[endif]

[if exp="tf.rand == 30"]
#樱子
[chara_show name="sakurako" face="talk07" left=100 ]
[playse storage="sakurako/sa81_043.ogg" buf="0"]
这双眼睛中的黑暗……看得很清楚……[p]
#
在干嘛呢……还是当做没看见吧[p]
[endif]

;樱子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-野球拳
*yakyuu

@bg storage ="room_day.png" time=1000
[menuwindows]

;***********************************************************************************************************************
;１回目会話
[if exp="f.sakurako_yakyuu_end == 0"]
[chara_show name="sakurako" face="niko" left=100 ]
#
喂喂[p]
樱子的衣服可以脱下来吧[p]
#樱子
[playse storage="sakurako/sa82_001.ogg" buf="0"]
嗯，我有好好脱下来的[r]
每天都清理得很干净[p]
#
真的吗？给我看看吧[p]
#樱子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa82_002.ogg" buf="0"]
哈？[p]
#
到底怎么样呢？ 我超想看[p]
#樱子
[playse storage="sakurako/sa82_003.ogg" buf="0"]
你白痴啊！ 怎么可能给你看[p]
#
没事的，没事的！ 只是稍微看一下[p]
#樱子
[chara_mod  name="sakurako" face="okori03" ]
[playse storage="sakurako/sa82_004.ogg" buf="0"]
你这个垃圾[r]
乱开什么玩笑的话，我又要踢你脸了！[p]
#
那太狡猾了[r]
狡猾，狡猾~！[p]
#樱子
[chara_mod  name="sakurako" face="okori02" ]
[playse storage="sakurako/sa82_005.ogg" buf="0"]
什么？ 狡猾吗？ [p]
#
你单方面的强加给我，让我做各种各样事，这不公平。[r]
我也有请求，你也可以稍微听一下吗[p]
#樱子
[playse storage="sakurako/sa82_006.ogg" buf="0"]
嗯……[p]
#
算了，不干了[r]
那我就一直闭门不出吧[p]
#樱子
[chara_mod  name="sakurako" face="akireru" ]
[playse storage="sakurako/sa82_007.ogg" buf="0"]
我，我知道了，知道了[p]
#
诶！ 能脱掉吗[p]
#樱子
[chara_mod  name="sakurako" face="panchi03" ]
[playse storage="sakurako/sa82_008.ogg" buf="0"]
这样的话那就一决胜负吧 如果你赢了，我就把衣服脱了[p]
#
一决胜负？ 用什么决胜负？[p]
#樱子
[playse storage="sakurako/sa82_009.ogg" buf="0"]
你个蠢货！ 赌上衣服的一决胜负那就是划拳啊[p]
#
这你怎么知道的[p]
#樱子
[playse storage="sakurako/sa82_010.ogg" buf="0"]
如果你输了，你也要脱了！ 你知道吗？[p]
#
好吧[p]
#樱子
[chara_mod  name="sakurako" face="niya" ]
[playse storage="sakurako/sa82_011.ogg" buf="0"]
哼，你就等着赤裸的大声哭泣吧！[r]
你可不要后悔！[p]
[endif]
;***********************************************************************************************************************
;２回目会話
[if exp="f.sakurako_yakyuu_end == 1"]
[chara_show name="sakurako" face="niko" left=100 ]
#
樱子！ 来一决胜负吧！[p]
#樱子
[chara_mod  name="sakurako" face="okori02" ]
[playse storage="sakurako/sa82_035.ogg" buf="0"]
什么？ 你不是已经输了，赤裸裸地结束了吗！[p]
#
嘿嘿，是你害怕输吧[p]
#樱子
[chara_mod  name="sakurako" face="niya" ]
[playse storage="sakurako/sa82_036.ogg" buf="0"]
我输了？ 这是不可能的！[r]
我怎么可能输给像你这样的垃圾！[p]
#
那就一决胜负吧[r]
下次我会赢的[p]
#樱子
[chara_mod  name="sakurako" face="yakyuu00" ]
[playse storage="sakurako/sa82_037.ogg" buf="0"]
哼！ 你这个蠢货[r]
看我再给你一脚[p]
[endif]


;樱子消去
#
[chara_hide name="sakurako"]
[bg storage="yakyuu2_1.png" time="1000"]

;***********************************************************************************************************************
;--じゃんけん勝負
[playbgm storage="game_maoudamashii_2_boss08.ogg" loop="true"]
[eval exp="tf.round = 0"]
[eval exp="tf.s_fuku = 1"]
[eval exp="tf.p_fuku = 1"]

*select
#
要出什么呢？
[glink  color="pink" size="20"  x="100"  width="200"  y="110"  text="石头"  target="*syoubu" exp="tf.janken = 0"]
[glink  color="pink" size="20"  x="100"  width="200"  y="170"  text="剪刀"  target="*syoubu" exp="tf.janken = 1" ]
[glink  color="pink" size="20"  x="100"  width="200"  y="230"  text="布"  target="*syoubu" exp="tf.janken = 2" ]
[s]

*round

;***********************************************************************************************************************
*syoubu
[fadeoutbgm time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bg storage="black.png" time="500"]
[eval exp="tf.s_mov = 'mov_82_' + tf.s_fuku + '.webm'"]
[movie storage=&tf.s_mov skip="true"]
[call target="*jyanken"]
[menuwindows]
;■樱子グー
[if exp="tf.rand == 0 || tf.rand == 1 || tf.rand == 2"]
 [if exp="tf.s_fuku <=3"] 
  [bg storage="jyanken_00.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==5 || tf.s_fuku ==4"] 
  [bg storage="jyanken_03.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==6"] 
  [bg storage="jyanken_06.png" time="0"]
 [endif]
[endif]
;■樱子チョキ
[if exp="tf.rand == 3 "]
 [if exp="tf.s_fuku <=3"] 
  [bg storage="jyanken_01.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==5 || tf.s_fuku ==4"] 
  [bg storage="jyanken_04.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==6"] 
  [bg storage="jyanken_07.png" time="0"]
 [endif]
[endif]
;■樱子パー
[if exp="tf.rand == 4 || tf.rand == 5"]
 [if exp="tf.s_fuku <=3"] 
  [bg storage="jyanken_02.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==5 || tf.s_fuku ==4"] 
  [bg storage="jyanken_05.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==6"] 
  [bg storage="jyanken_08.png" time="0"]
 [endif]
[endif]


#
[if exp="tf.janken == 0"]  
石头![p]
[endif]
[if exp="tf.janken == 1"]  
剪刀！[p]
[endif]
[if exp="tf.janken == 2"]  
布！[p]
[endif]

[if exp="tf.result == 0"]
[jump target="*aiko"]
[endif]

[if exp="tf.result == 1"]
[jump target="*make"]
[endif]

[if exp="tf.result == 2"]
[jump target="*kati"]
[endif]


;***********************************************************************************************************************
;--勝ち
*kati
[if exp="tf.s_fuku == 1"]
 [jump target="*fuku1"]
[endif]
[if exp="tf.s_fuku == 2"]
 [jump target="*fuku2"]
[endif]
[if exp="tf.s_fuku == 3"]
 [jump target="*fuku3"]
[endif]
[if exp="tf.s_fuku == 4"]
 [jump target="*fuku4"]
[endif]
[if exp="tf.s_fuku == 5"]
 [jump target="*fuku5"]
[endif]
[if exp="tf.s_fuku == 6"]
 [jump target="*fuku6"]
[endif]
;***********************************************************************************************************************
;---服１枚目
*fuku1
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu00" time="500"]
[menuwindows]
#
太好了！我赢了！[p]
#樱子
[playse storage="sakurako/sa82_012.ogg" buf="0"]
不过，首先是鞋子[p]
#
鞋子不算衣服吧[p]
;樱子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_10.webm" skip="true"]
[bg storage="yakyuu2_2.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]

;***********************************************************************************************************************
;---服2枚目
*fuku2
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu00" time="500"]
[menuwindows]
#
太好了！我赢了！[p]
#樱子
[playse storage="sakurako/sa82_015.ogg" buf="0"]
接下来是袜子[p]
#
哦……真是不错啊[p]
;樱子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_11.webm" skip="true"]
[bg storage="yakyuu2_3.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服3枚目
*fuku3
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu01" time="500"]
[menuwindows]
#
嘿嘿，接下来是上衣啊[p]
;樱子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_12.webm" skip="true"]
[bg storage="yakyuu2_4.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服4枚目
*fuku4
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu02" time="500"]
[menuwindows]
#
好了，赢了！[p]
#
来吧，把裙子脱了吧[p]
;樱子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_13.webm" skip="true"]
[bg storage="yakyuu2_5.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服5枚目
*fuku5
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu03" time="500"]
[menuwindows]
#
哈哈，我赢了[p]
;樱子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_14.webm" skip="true"]
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu03" time="500"]
[menuwindows]
#
咦，天使大人在说谎吗？[p]
;樱子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="500"]
[movie storage="mov_82_15.webm" skip="true"]
[movie storage="mov_82_16.webm" skip="true"]
[bg storage="yakyuu2_6.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服6枚目
*fuku6
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu04" time="500"]
[menuwindows]
#
真棒，又胜利了！！[p]
;樱子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="500"]
[bgmovie storage="mov_82_17.webm" skip="true"]
#樱子
[playse storage="sakurako/sa82_022.ogg" buf="0"]
吧……嗯……[p]
#
什么嘛……感觉变得可怜起来了[p]
樱子，算了[r]
到此为止……[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_82_18.webm" skip="true"]
[movie storage="mov_82_19.webm" skip="true"]
[stop_bgmovie]
[bg storage="room_day.png" time="1000"]
[menuwindows]
#
嗯，我已经感到满足了[p]
#樱子
[chara_show name="sakurako" face="yakyuu07" time="0" top=" 200"]
[anim name="sakurako" top="-300" left="700"]
[playse storage="sakurako/sa82_026.ogg" buf="0"]
笨蛋，你这个大变态！ 
我要向爸爸妈妈告状[p]
;樱子消去
#
[chara_hide name="sakurako" time="500"]
#
生气地走了 话说你有爸爸妈妈吗[p]
[eval exp="f.sakurako_yakyuu_end = 2"]
[return]

;***********************************************************************************************************************
;--負け
*make
[bg storage="room_day.png" time="500"]

[if exp="tf.p_fuku != 4"]

[if exp="tf.s_fuku ==1"]
 [chara_show name="sakurako" face="yakyuu00" time="500"]
[endif]
[if exp="tf.s_fuku ==2"]
 [chara_show name="sakurako" face="yakyuu00" time="500"]
[endif]
[if exp="tf.s_fuku ==3"]
 [chara_show name="sakurako" face="yakyuu01" time="500"]
[endif]
[if exp="tf.s_fuku ==4"]
 [chara_show name="sakurako" face="yakyuu02" time="500"]
[endif]
[if exp="tf.s_fuku ==5"]
 [chara_show name="sakurako" face="yakyuu03" time="500"]
[endif]
[if exp="tf.s_fuku ==6"]
 [chara_show name="sakurako" face="yakyuu04" time="500"]
[endif]

[endif]

[menuwindows]
;***********************************************************************************************************************
;---１枚目
[if exp="tf.p_fuku == 1"]
#樱子
[playse storage="sakurako/sa82_027.ogg" buf="0"]
哼，我赢了！[p]
#
唔，首先……是袜子[p]
#樱子
[playse storage="sakurako/sa82_028.ogg" buf="0"]
哼，你赢不了的[p]
[eval exp="tf.p_fuku = tf.p_fuku + 1"]
;樱子消去
#
[chara_hide name="sakurako"]
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[jump target="*select"]
[endif]
;***********************************************************************************************************************
;---２枚目
[if exp="tf.p_fuku == 2"]
#樱子
[playse storage="sakurako/sa82_029.ogg" buf="0"]
啊哈，弱啊，弱啊[p]
#
可恶，下次我会赢的！[p]
[eval exp="tf.p_fuku = tf.p_fuku + 1"]
;樱子消去
#
[chara_hide name="sakurako"]
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[jump target="*select"]
[endif]
;***********************************************************************************************************************
;---３枚目
[if exp="tf.p_fuku == 3"]
#樱子
[playse storage="sakurako/sa82_030.ogg" buf="0"]
嘿嘿，接下来就是裤子了[r]
快脱掉，垃圾渣渣[p]
#
嘛，我还留着内裤！[r]
我会给你看看内裤的力量[p]
[eval exp="tf.p_fuku = tf.p_fuku + 1"]
;樱子消去
#
[chara_hide name="sakurako"]
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[jump target="*select"]
[endif]
;***********************************************************************************************************************
;---４枚目
*p_fuku4
[if exp="tf.p_fuku == 4"]

[if exp="f.sakurako_yakyuu_end == 0"]
[chara_show name="sakurako" face="yakyuu00" time="500"]
#樱子
[playse storage="sakurako/sa82_031.ogg" buf="0"]
哈哈，你知道大天使樱子大人的力量了吗？[r]
你这个丑陋的赤裸的垃圾！ 快脱掉，把那毛骨悚然的东西拿出来看看[p]
#
可恶，你这么说的话，我就给你看看吧[p]
来，请看吧！[p]
[chara_mod  name="sakurako" face="yakyuu05" ]
#樱子
[playse storage="sakurako/sa82_032.ogg" buf="0"]
太好了！[p]
#
请看，这是我出生时的样子[p]
[chara_mod  name="sakurako" face="yakyuu06" ]
#樱子
[playse storage="sakurako/sa82_033.ogg" buf="0"]
哇~ ~[p]
#
为什么要逃跑，请再仔细看一下[p]
[chara_mod  name="sakurako" face="keri01" ]
[playse storage="se/naguru.ogg" buf="2"]
[quake count="1" time="300"]
#樱子
[playse storage="sakurako/sa82_034.ogg" buf="0"]
你这个大变态！去死吧！[p]

[eval exp="f.sakurako_yakyuu_end = 1"]

;樱子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[p]
你……竟然踢到了我毫无防备的裤裆……[p]
下次我不会输的……[p]
@bg storage ="room_day.png" time=1000
[chara_show name="sakurako" face="default" left=100 ]
[uiwindows]
[return]
[endif]

[if exp="f.sakurako_yakyuu_end == 1"]
#
[chara_show name="sakurako" face="yakyuu00" time="500"]
可恶……又输了……没办法！[r]
来看啊[p]
[chara_mod  name="sakurako" face="keri01" ]
[playse storage="se/naguru.ogg" buf="2"]
[quake count="1" time="300"]
#樱子
[playse storage="sakurako/sa82_038.ogg" buf="0"]
你这死不悔改的变态！ 我要打死你！[p]
#
我已经要崩溃了[p]
;樱子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[p]
但我已经掌握了攻略[p]
樱子出石头的概率很高！[p]
嘿嘿，下次能赢！[p]
[cm]
@bg storage ="room_day.png" time=1000
[uiwindows]
[return]
[endif]
[endif]



;***********************************************************************************************************************
*aiko
;あいこ
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[menuwindows]
#
打平了[p]
[jump target="*select"]



;***********************************************************************************************************************
;-じゃんけんルーチン
*jyanken
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 6)
[endscript]

;■樱子グー
[if exp="tf.rand == 0 || tf.rand == 1 || tf.rand == 2"]
 ;アイコ
 [if exp="tf.janken ==0"]
  [eval exp="tf.result = 0"]
 [endif]
 ;負け
 [if exp="tf.janken ==1"]
  [eval exp="tf.result = 1"]
 [endif]
 ;勝ち
 [if exp="tf.janken ==2"]
  [eval exp="tf.result = 2"]
 [endif]
[endif]
;■樱子チョキ
[if exp="tf.rand == 3"]
 ;アイコ
 [if exp="tf.janken ==1"]
  [eval exp="tf.result = 0"]
 [endif]
 ;負け
 [if exp="tf.janken ==2"]
  [eval exp="tf.result = 1"]
 [endif]
 ;勝ち
 [if exp="tf.janken ==0"]
  [eval exp="tf.result = 2"]
 [endif]
[endif]
;■樱子パー
[if exp="tf.rand == 4 || tf.rand == 5"]
 ;アイコ
 [if exp="tf.janken ==2"]
  [eval exp="tf.result = 0"]
 [endif]
 ;負け
 [if exp="tf.janken ==0"]
  [eval exp="tf.result = 1"]
 [endif]
 ;勝ち
 [if exp="tf.janken ==1"]
  [eval exp="tf.result = 2"]
 [endif]
[endif]


[return]

;***********************************************************************************************************************
;-エンディング
*ending
[eval exp="f.sakurako_yakyuu_end = 4"]
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" ]
[menuwindows]
#
樱子！你到哪里去了？……[p]
#樱子
[playse storage="sakurako/sa83_001.ogg" buf="0"]
已经到回家的时间了……[p]
#
诶，等一下啊[r]
那么突然……你真的要回家吗？[p]
#樱子
[playse storage="sakurako/sa83_002.ogg" buf="0"]
已经来接我了[p]
#
死……死宅重生计划怎么样？[r]
全人类都还有很多没做过的吧？ 你是住在地上的吗？[p]
#樱子
[playse storage="sakurako/sa83_003.ogg" buf="0"]
就算我不在也没问题了吧……哥哥[p]
#
哥哥？什么哥哥啊……[p]
;樱子消去
#
[chara_hide name="sakurako"]
[bg storage="ending.png" time="2000"]
#樱子
[playse storage="sakurako/sa83_004.ogg" buf="0"]
哈哈，我是全能的神樱子！ 愚民们跪下！[p]
#
樱子……你中有二病吗[r]
你看了什么电视节目[p]
#母亲
要出发了[r]
哥哥真的不去吗？[p]
#
我会去朋友家的[p]
[bg storage="ending2.png" time="2000"]
#
樱子……我……怎么回事？[r]
我想起来了……樱子是我的……妹妹[p]
爸爸妈妈和你……当时在事故中……[p]
所以我……就像忘记一切……每天闭门不出……[p]

[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" ]
#樱子
[playse storage="sakurako/sa83_005.ogg" buf="0"]
哥哥已经没事了[r]
你有了重要的人[p]
#
哦，我见过那家人……没错！[p]
;樱子消去
#
[chara_hide name="sakurako"]
[bg storage="ending3.png" time="1000"]
以前不是经常一起玩吗……我住在隔壁……[p]
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" ]
不是你的力量，而是真的认识你啊……[p]
#樱子
[chara_mod  name="sakurako" face="panchi04" ]
[playse storage="sakurako/sa83_006.ogg" buf="0"]
是啊，都是哥哥的力量啊[r]
我什么都没做[p]
#
真的要离开吗……[p]
#樱子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa83_007.ogg" buf="0"]
因为爸爸妈妈在等我……[r]
我会告诉他们我被哥哥性骚扰了[p]
#
等……等一下，那就有点……[p]
#樱子
[chara_mod  name="sakurako" face="tobi04" ]
[playse storage="sakurako/sa83_008.ogg" buf="0"]
哼哼，我不会说的[r]
再见，哥哥保重哦[p]
#
樱子，樱子！ 等一下！[p]
[chara_hide name="sakurako"]
[bg storage="white.png" time="1000"]
[fadeoutse]
[bg storage="ending4.png" time="1000"]
#
樱子……[p]
[cm]
[clearfix]
[bg storage="black.png" time="500"]
[movie storage="mov_ending2.webm" skip="true" ]

[bgmovie storage="mov_ending3.webm" loop="true" ]
[menuwindows]
#
嗯，吃饭了，莉子[r]
好久没吃早饭了[p]
[stop_bgmovie]
[cm]
[clearfix]
[movie storage="mov_ending.webm" skip="true" ]
[menuwindows]
[bg storage="ending5.png" time="1000"]
……[p]
[bg storage="ending6.png" time="1000"]
#樱子
[playse storage="sakurako/sa83_009.ogg" buf="0"]
啊……咦？回不去……怎么办[r]
算了，就这样吧……[p]
#
[bg storage="black.png" time="1000"]
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="niko" left="100"]
#樱子
[playse storage="sakurako/sa83_010.ogg" buf="0"]
啊哈，我才是全能的大天使樱子大人啊[r]
胆战心惊的愚民们！[p]
#
为什么你还在？而且还在像中二病一样说话……[p]
#樱子
[playse storage="sakurako/sa83_011.ogg" buf="0"]
嘛，我的灵力还没恢复啊！[r]
我会继续训练你的，你要做好心理准备！[p]
#
呼呼呼……说的也是啊，必须要多锻炼[p]
[eval exp="f.ending = 1"]
[playse storage="se/fanfare.ogg" buf="2"]
【自由模式开启】[r]
【今后就可以攻略其他角色了】[p]
[return]


;***********************************************************************************************************************
;-温泉
*spa_sakurako
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" left=100]
[menuwindows]
#
今天是去温泉旅行的日子！[p]
没想到居然中了一等奖…[p]
去进行混浴吧[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_80_1.webm" skip="true" ]
[menuwindows]
#
你要跟着去吗？[p]
[chara_mod  name="sakurako" face="okori03" ]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_80_3.webm" skip="true" ]
[menuwindows]
#
不…我是无所谓啦[p]
;樱子消去
#
[chara_hide name="sakurako"]
[return]
;***********************************************************************************************************************
;-PC
*pc_sakurako
;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="default" left=100 ]
[playse storage="sakurako/sa78_001.ogg" buf="0"]
要买点什么吗？[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa78_002.ogg" buf="0"]
不许浪费[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="akubi03" left=100 ]
[playse storage="sakurako/sa78_003.ogg" buf="0"]
有什么呢？[p]
[endif]

[if exp="tf.rand == 3"]
#樱子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa78_004.ogg" buf="0"]
有什么想要的吗？[p]
[endif]

[if exp="tf.rand == 4"]
#樱子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa78_005.ogg" buf="0"]
买了色情物品吗[p]
[endif]

;樱子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-おねだり
*orgasm_sakurako
;樱子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand == 0"]
#樱子
[chara_show name="sakurako" face="yakyuu05" left=100 ]
[playse storage="sakurako/sa75_009.ogg" buf="0"]
你这个大色鬼！[p]
[endif]

[if exp="tf.rand == 1"]
#樱子
[chara_show name="sakurako" face="yakyuu05" left=100 ]
[playse storage="sakurako/sa74_048.ogg" buf="0"]
你也是相当能干啊！[p]
[endif]

[if exp="tf.rand == 2"]
#樱子
[chara_show name="sakurako" face="yakyuu05" left=100 ]
[playse storage="sakurako/sa75_008.ogg" buf="0"]
你也去干吧！[p]
[endif]
;樱子消去
#
[chara_hide name="sakurako"]
#
该怎么办呢
[return]