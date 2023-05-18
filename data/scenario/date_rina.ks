;***********************************************************************************************************************
;-莉菜ちゃんデート
;莉菜ちゃんデートエッチ数値
;カラオケ １回目　20　　２回目　40
;遊園地   １回目　50　　２回目　70
;漫画喫茶 １回目　30　　２回目　50
;お祭り   １回目　60　　３回目　80
;映画     １回目  45    ２回目  45



*start
;樱子消去
#
[chara_hide name="sakurako"]
;***********************************************************************************************************************
;-メイド服判別
[if exp="tf.date_select == 8"]
[jump target="*meido"]
[endif]
;***********************************************************************************************************************
;-バイブ判別
[if exp="tf.date_select == 9"]
[jump target="*vibrator"]
[endif]
;***********************************************************************************************************************
;-好感度80以下で断られた
[if exp="f.rina_f < 80"]
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn39_006.ogg" buf="0"]
对不起，我今天有事[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn39_007.ogg" buf="0"]
今天和朋友约好了，对不起[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn39_008.ogg" buf="0"]
现在有点忙，下次再邀请我吧[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn39_009.ogg" buf="0"]
啊，对不起……哥哥，今天有点不方便……[p]
[endif]

[if exp="tf.rand == 4"]
#莉菜
[playse storage="rina/rn39_010.ogg" buf="0"]
我现在要出去了，下次吧[p]
[endif]

#
被拒绝了[p]
接下来干嘛呢？
[jump storage="main.ks" target="*choice2"]
[endif]

;***********************************************************************************************************************
;-デートOK

;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn39_001.ogg" buf="0"]
可以哦[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn39_002.ogg" buf="0"]
好的，我去[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn39_003.ogg" buf="0"]
我也想去哦![p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn39_004.ogg" buf="0"]
当然要去[p]
[endif]

[if exp="tf.rand == 4"]
#莉菜
[playse storage="rina/rn39_005.ogg" buf="0"]
我要去！请等一下！[r]
我准备一下！[p]
[endif]

;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

;樱子シナリオコール
[call storage="sakurako.ks" target="*sakurako_date"]

;***********************************************************************************************************************
;-場所判別
;■公園
[if exp="tf.date_select == 1"]
[jump target="*park"]
[endif]
;■ゲーセン
[if exp="tf.date_select == 2"]
[jump target="*arcade"]
[endif]
;■カフェ
[if exp="tf.date_select == 5"]
[jump target="*cafe"]
[endif]
;■カラオケ
[if exp="tf.date_select == 3"]
[jump target="*karaoke"]
[endif]
;■漫画喫茶
[if exp="tf.date_select == 4"]
[jump target="*cartooncafe"]
[endif]
;■遊園地
[if exp="tf.date_select == 6"]
[jump target="*amusement"]
[endif]
;■お祭り
[if exp="tf.date_select == 7"]
[jump target="maturi"]
[endif]
;■映画
[if exp="tf.date_select == 10"]
[jump target="*movietheater"]
[endif]
;***********************************************************************************************************************
;-公園デート
*park
#
[bg storage="park_day.png" time="1000"]
[playbgm storage="haretahiha.ogg" loop="true"]
来到了公园！[p]
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_1.webm"]
#莉菜
[playse storage="rina/rn40_001.ogg" buf="0"]
今天天气很好，很舒服呢![p]
#
身处公园的大自然中很舒服啊[p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_1.webm"]
#莉菜
[playse storage="rina/rn40_002.ogg" buf="0"]
每天都很热呢![p]
#
今天也太热了[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_2.webm"]
#莉菜
[playse storage="rina/rn40_003.ogg" buf="0"]
我做了便当！[p]
#
莉菜做的菜不管什么都很好吃[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_2.webm"]
#莉菜
[playse storage="rina/rn40_004.ogg" buf="0"]
每天都这么热，总是在喝冰凉的东西呢[p]
#
喝多了把肚子搞坏了[p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_3.webm"]
#莉菜
[playse storage="rina/rn42_006.ogg" buf="0"]
哥哥，你没事吧?[p]
#
稍微运动一下就变成这样了……[p]
景色最棒了！[p]
[endif]

;公園帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutbgm]
[stop_bgmovie time="1000"]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-カフェデート
*cafe
#
[bg storage="cafe.png" time="1000"]
[playbgm storage="osyare.ogg" loop="true"]
来到了咖啡馆[p]

[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_45_1.webm"]

;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn45_002.ogg" buf="0"]
这里的蛋糕很好吃！[p]
#
哦！真是美味啊！[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn45_003.ogg" buf="0"]
要对家里的人保密哦![p]
#
莉子知道了大概会生气的[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn45_004.ogg" buf="0"]
我要抹茶拿铁。[p]
#
那就把咖啡加满牛奶[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn45_005.ogg" buf="0"]
我喜欢蓝莓奶昔。[p]
#
哦哦，我也尝尝吧[p]
[endif]

;カフェ帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="cafe.png" time="500"]
[fadeoutbgm]
#
在咖啡馆花了3000日元[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-カラオケデート
*karaoke
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[playbgm storage="ways.ogg" loop="true"]

[if exp="f.rina_h >= 40 && f.karaoke_rina_h == 1"]
[bgmovie storage="mov_41_6.webm"]
[else]
[bgmovie storage="mov_41_7.webm"]
[endif]

来唱卡拉ok了[p]
;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn41_001.ogg" buf="0"]
嗯～我喜欢你唱的歌哦！[p]
#
这里有个能理解我歌声的人！[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn41_002.ogg" buf="0"]
那么，唱什么好呢？[p]
#
莉菜的歌，很期待[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn41_003.ogg" buf="0"]
虽然有点不好意思，我要唱了！[p]
#
莉菜加油啊[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn41_004.ogg" buf="0"]
哥哥，喝点什么好呢?[p]
#
那么，咖啡……要加牛奶和糖[p]
[endif]

[if exp="tf.rand == 4"]
#莉菜
[playse storage="rina/rn41_005.ogg" buf="0"]
哥哥，加时间吧？[p]
#
必须加！[p]
[endif]

;***********************************************************************************************************************
;カラオケＨ判別
[if exp="f.rina_h >= 20 && f.karaoke_rina_h == undefined"]
[jump target="*karaoke_h1"]
[endif]
[if exp="f.rina_h >= 40 && f.karaoke_rina_h == 1"]
[jump target="*karaoke_h2"]
[endif]
;***********************************************************************************************************************

;カラオケ帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="karaoke.png" time="500"]
[fadeoutbgm]
#
在卡拉OK花了3000日元[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--カラオケＨ1
*karaoke_h1
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_41_1.webm" time="2000"]
[playse storage="rina/rn41_007.ogg" buf="0" loop="true"]
#
莉菜的口交，好舒服！[p]
在这么近的地方看着莉菜的小穴[r]
居然能被口交[p]
莉菜的屁股很软[p]
这么下去就要射了！[p]
唔唔……不行了[p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[bg storage="karaoke.png" time="500"]
;カラオケ帰宅
;莉菜ちゃん愛情UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;カラオケフラグ　１
[eval exp="f.karaoke_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

#
要走了，时间到了……[p]
在卡拉OK花了3000日元[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;--カラオケＨ2
*karaoke_h2
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_41_2.webm" time="2000"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
#莉菜
[playse storage="rina/rn41_008.ogg" buf="0"]
嗯，嗯，不行啊，哥哥[r]
嗯，嗯，这……在这种地方，嗯，嗯，啊！[p]
[playse storage="rina/rn41_009.ogg" buf="0" loop="true"]
#
这里很吵没事的[p]
因为上次只是口交，在半途结束了[r]
这次让我尽情舒服一下吧[p]
因为惊险和紧张而更加兴奋[p]
莉菜好舒服啊！[p]
啊……要射了，莉菜[p]
唔……啊啊啊[p]
[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="rina/rn41_010.ogg" buf="0" loop="true"]
[movie storage="mov_41_3.webm" skip="true"]
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
;カラオケ帰宅
[bg storage="karaoke.png" time="500"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;カラオケフラグ　2
;[eval exp="f.karaoke_rina_h = 1"]
[iscript]
delete f.karaoke_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
在卡拉OK花了3000日元[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-漫画喫茶
*cartooncafe
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="sizukana.ogg" loop="true"]

[if exp="f.rina_h >= 50 && f.cartooncafe_rina_h == 1"]
[bgmovie storage="mov_43_7.webm"]
[else]
[bgmovie storage="mov_43_8.webm"]
[endif]
来到了漫画咖啡店[p]
;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn43_001.ogg" buf="0"]
有什么推荐吗？[p]
#
嗯……[r]
（总不能推荐色情漫画吧……。）[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn43_002.ogg" buf="0"]
哥哥，你要喝什么?我来拿。[p]
#
莉菜谢谢你，那么，咖啡牛奶加糖[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn43_003.ogg" buf="0"]
看少女漫画吧![p]
#
那我就看青年漫画[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn43_004.ogg" buf="0"]
哥哥，你好像在看色色的书！[p]
#
不，不是的！虽然看起来很色，但其实……好吧，这就是色情漫画。[p]
[endif]

;***********************************************************************************************************************
;漫画喫茶Ｈ判別
[if exp="f.rina_h >= 30 && f.cartooncafe_rina_h == undefined"]
[jump target="*cartooncafe_h1"]
[endif]

[if exp="f.rina_h >= 50 && f.cartooncafe_rina_h == 1"]
[jump target="*cartooncafe_h2"]
[endif]

;***********************************************************************************************************************

;漫画喫茶帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="cartooncafe.png" time="500"]
[fadeoutbgm]
#
在漫画咖啡店花了3000日元[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--漫画喫茶Ｈ1
*cartooncafe_h1
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_43_3.webm" time="2000"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn43_007.ogg" buf="0" loop="true"]

#
仿佛是为了不让周围人听见，[p]
莉菜为了尽量不发出声音而忍耐着[r]
兴奋感倍增[p]
啊，啊，好舒服啊[p]
莉菜，要射了！[p]
啊！唔唔[p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_43_4.webm" skip="true"]
[bg storage="cartooncafe.png" time="1000"]
;漫画喫茶帰宅
;莉菜ちゃん愛情UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]


;カラオケフラグ　１
[eval exp="f.karaoke_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[stop_bgmovie time="1000"]
;漫画喫茶フラグ　１
[eval exp="f.cartooncafe_rina_h = 1"]
[menuwindows]
#
在咖啡店花了3000日元[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;--漫画喫茶Ｈ2
*cartooncafe_h2
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_43_1.webm"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn43_006.ogg" buf="0" loop="true"]

#
莉菜，不安静的话会听到的哦！[p]
这份刺激感让人兴奋[p]
莉菜，好舒服啊莉菜！[p]
啊，莉菜！我要射了[p]
要在莉菜的小穴中射得满满的[p]
啊，呜呜……[p]
[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_43_2.webm" skip="true"]
[bg storage="cartooncafe.png" time="1000"]
;漫画喫茶帰宅
;莉菜ちゃん愛情UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;漫画喫茶フラグ　2
;[eval exp="f.cartooncafe_rina_h = 1"]
[iscript]
delete f.cartooncafe_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
在漫画咖啡店花了3000日元[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-遊園地
*amusement
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_42_9.webm"]
[playbgm storage="yuuenti.ogg" loop="true"]
遊園地にやってきた[p]

;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#
玩什么呢……[p]
有了！[p]
帅气的护送[r]
因走进鬼屋而害怕的莉菜吧[p]
[stop_bgmovie time="1000"]
[bg storage="img_42_11.png" time="500"]
#莉菜
[playse storage="rina/rn42_002.ogg" buf="0"]
啊！！哥哥！不要不要！ 不行不行[p]
#
没，没事的莉菜！有我在！[r]
（糟了~！！好可怕啊！）[p]
[bg storage="black.png" time="2000"]
[endif]

[if exp="tf.rand == 1"]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_42_10.webm" time="1000"]
#莉菜
[playse storage="rina/rn42_001.ogg" buf="0"]
哥哥！你看！[r]
接下来坐那个吧！[p]
#
虽然真的很可怕，但是在莉菜面前必须装一下！[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn42_004.ogg" buf="0"]
必须买点特产才行啊！[p]
#
否则莉子可能会生气的[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn42_005.ogg" buf="0"]
我很喜欢过山车。[p]
#
嗯，嗯，嗯。是啊！[r]
（可不能说我不擅长……）[p]
[endif]

;***********************************************************************************************************************
;遊園地Ｈ判別
[if exp="f.rina_h >= 50 && f.amusement_rina_h == undefined"]
[jump target="*amusement_h1"]
[endif]
[if exp="f.rina_h >= 70 && f.amusement_rina_h == 1"]
[jump target="*amusement_h2"]
[endif]
;***********************************************************************************************************************
;遊園地帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="amusement.png" time="500"]
[fadeoutbgm]
#
和莉菜一起在游乐场玩了很多项目，很尽兴[p]
花了6000日元[p]
[eval exp="f.money = f.money - 6000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;--遊園地Ｈ1
*amusement_h1
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_42_1.webm" time="2000"]
#莉菜
[playse storage="rina/rn42_007.ogg" buf="0"]
哥哥，舒服吗?[p]
#
舒服！ 莉菜，莉菜的胸部很大，非常舒服！[p]
#莉菜
[playse storage="rina/rn42_008.ogg" buf="0"]
虽然我不擅长这个，但我想让哥哥舒服。[p]
#
啊，莉菜，射了！射了~[p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
[stopse buf="0"]
[stopse buf="3"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_42_2.webm" skip="true"]
;遊園地帰宅
[bg storage="amusement.png" time="2000"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;遊園地フラグ　１
[eval exp="f.amusement_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
没想到莉菜居然会给我乳交[p]
很舒服很满足[p]
在游乐园花了6000日元[p]
[eval exp="f.money = f.money - 6000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--遊園地Ｈ２
*amusement_h2
[stop_bgmovie time="2000"]
[fadeoutbgm]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn42_011.ogg" buf="0" loop="true"]
[bgloop mov="mov_42_3.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_42_4.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="2000"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
;[eval exp="f.amusement_rina_h = 1"]
[iscript]
delete f.amusement_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
和莉菜一起在游乐园玩得很尽兴[r]
在游览车上做了那样的事情，感到非常满足[p]
花了6000日元[p]
[eval exp="f.money = f.money - 6000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-お祭り
*maturi
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_46_7.webm"]
[playbgm storage="sitamati.ogg" loop="true"]
来参加了祭会[p]

;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn46_001.ogg" buf="0"]
哥哥，合适吗?浴衣[p]
#
我觉得莉菜穿什么都很可爱[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn46_002.ogg" buf="0"]
钓鱼，去试试吧！[p]
#
来吧，我会努力的！[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn46_004.ogg" buf="0"]
我很期待烟花大会[p]
#
没想到能和莉菜一起看烟花[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn46_005.ogg" buf="0"]
好热啊，吃点刨冰吧。[p]
#
每天都很热啊[p]
[endif]

;***********************************************************************************************************************
;お祭りＨ判別
[if exp="f.rina_h >= 60 && f.maturi_rina_h == undefined"]
[jump target="*maturi_h1"]
[endif]
[if exp="f.rina_h >= 80 && f.maturi_rina_h == 1"]
[jump target="*maturi_h2"]
[endif]
;***********************************************************************************************************************

;お祭り帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="maturi.png" time="500"]
[fadeoutbgm]
#
和莉菜一起在祭会上玩得很尽兴很满足[p]
花了5000日元[p]
[eval exp="f.money = f.money - 5000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--お祭りＨ1
*maturi_h1
[stop_bgmovie time="1000"]
[fadeoutbgm]
[playbgm storage="night.ogg" loop="true"]
[bgmovie storage="mov_46_8.webm"]
#
烟花真漂亮啊[p]
#莉菜
[playse storage="rina/rn46_006.ogg" buf="0"]
是的，非常漂亮。[p]
#
不过，莉菜更漂亮哦[p]
#莉菜
[playse storage="rina/rn46_007.ogg" buf="0"]
真是的，哥哥，你在说什么啊！[p]
#
莉菜穿着浴衣的样子很可爱，得想办法解决一下。[p]
#莉菜
[playse storage="rina/rn46_008.ogg" buf="0"]
哥哥，不行!在这样的地方![p]
#
周围已经没有人了[p]
#莉菜
[playse storage="rina/rn46_009.ogg" buf="0"]
……哥哥!故意来到没有人的地方吧?[p]
#
求你了 莉菜。 已经变成这样了[p]
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[bgloop mov="mov_46_1.webm"  ti="1000"]
[stopse buf="0"]
[movie storage="mov_46_2.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
[eval exp="f.maturi_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
和莉菜一起在祭会上玩得很尽兴[r]
穿着浴衣进行口交，我很满足[p]
花了5000日元[p]
[eval exp="f.money = f.money - 5000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--お祭りＨ２
*maturi_h2
[stop_bgmovie time="1000"]
[fadeoutbgm]
[playbgm storage="night.ogg" loop="true"]
[bgmovie storage="mov_46_8.webm"]
#
真开心啊！ 祭会[p]
#莉菜
…………[p]
#
嗯？ 怎么了，莉菜[p]
#莉菜
[playse storage="rina/rn46_014.ogg" buf="0"]
哥哥又来到了没什么人的地方！[p]
#
因为，没办法啊！[p]
#莉菜
[playse storage="rina/rn46_015.ogg" buf="0"]
什么？[p]
#
莉菜穿浴衣太可爱了，我觉得这是莉菜错！[p]
#莉菜
[playse storage="rina/rn46_016.ogg" buf="0"]
这是什么道理！[p]
#
都是莉菜的错，莉菜不承担责任是不行的吧！。[p]
#莉菜
[playse storage="rina/rn46_017.ogg" buf="0"]
哥哥你脑子里只有色色的事吧[p]
#
谁叫莉菜太可爱了没办法啊[p]
#莉菜
[playse storage="rina/rn46_018.ogg" buf="0"]
真是的……哥哥……笨蛋……[p]
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn46_019.ogg" buf="0" loop="true"]
[bgloop mov="mov_46_3.webm"  ti="1000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_46_4.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
;[eval exp="f.maturi_rina_h = 1"]
[iscript]
delete f.maturi_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
和莉菜一起在祭会上玩的很尽兴[r]
穿着浴衣H真让人兴奋啊[p]
今天花了5000日元[p]
[eval exp="f.money = f.money - 5000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;-メイド服
*meido


;エッチ度判定
[if exp="f.rina_h < 50"]
#
果然还是不愿意穿啊……[p]
接下来干嘛呢？
[jump storage="main.ks" target="*choice2"]
[endif]


#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_66_10.webm"]
#莉菜
[playse storage="rina/rn66_009.ogg"]
哥哥，这是?[p]
希望莉菜能穿上这个！[p]
#莉菜
[playse storage="rina/rn66_010.ogg"]
诶诶！我穿吗？[p]
#
拜托了！想看莉菜穿上女仆服的样子[p]
#莉菜
[playse storage="rina/rn66_011.ogg"]
诶诶～！不行啦！这太难为情了……[p]
绝对和莉菜很搭的！因莉菜很可爱，你穿什么都很合适！[p]
#莉菜
[playse storage="rina/rn66_012.ogg"]
哥哥，想让我穿着这个做色色的事情对吧！[p]
#
才，才不是！只是想看看而已！真的只是看看而已！[p]
[stop_bgmovie]
[bgmovie storage="mov_66_11.webm"]
#莉菜
[playse storage="rina/rn66_013.ogg"]
虽然有点可疑……总之只是看看而已对吧！你保证！[p]
#
只是看看……只是看看……[p]
#莉菜
[playse storage="rina/rn66_014.ogg"]
还没穿好！请转过身去！[p]
[stop_bgmovie]
[bgmovie storage="mov_66_12.webm"]
#莉菜
[playse storage="rina/rn66_015.ogg"]
怎……怎么样，哥哥？适合我吗？[p]
#
莉菜！适合～，适合～，莉菜很可爱，穿什么都合适！[p]
接下来将裙子这样往上撩[p]
#莉菜
[playse storage="rina/rn66_018.ogg"]
哥哥！不是说好只是看看而已吗！果然还是想做色色的事情对吧[p]
#
不是，莉菜，只是看看而已！我只是看看，放心吧！[p]
#莉菜
[playse storage="rina/rn66_019.ogg"]
才不放心呢！[p]
#
不是说了只是看看而已吗！我会好好遵守约定的，莉菜！[r]
来吧！给我看看就行！[p]
#莉菜
[playse storage="rina/rn66_020.ogg"]
真是的～，哥哥总是一不小心就会想到这种事情上去……只是稍微看一下哦！[p]
[stop_bgmovie]
[movie storage="mov_66_13.webm" skip="true"]
[bgmovie storage="mov_66_14.webm"]
#莉菜
[playse storage="rina/rn66_021.ogg"]
哥哥……被这么近距离看着……好难为情……[p]
#
…………[p]
#莉菜
[playse storage="rina/rn66_027.ogg"]
啊，哥哥!你在干什么![p]
#
诶！因为穿着内裤，看不清楚对吧？[r]
放心吧放心吧！只是看看，只是看看[p]
#莉菜
[playse storage="rina/rn66_028.ogg"]
真是的，哥哥你～……[p]
[stop_bgmovie]
[bgmovie storage="mov_66_17.webm"]
#
只是看看……只是看看……我说，真的只能看看吗？稍微摸一下……[p]
#莉菜
[playse storage="rina/rn66_022.ogg"]
見るだけです！[p]
#
只能看……呜呜……只能看吗……呜……[p]
#莉菜
[playse storage="rina/rn66_023.ogg"]
真是的！怎么一副要哭的样子！[p]
#
没关系……呜呜……只是看看而已……呜……[p]
#莉菜
[playse storage="rina/rn66_024.ogg"]
……如……如果只是稍微摸一摸的话……可以哦……摸吧……[p]
#
真的吗！太好了！那么，赶紧的……[p]
#莉菜
[playse storage="rina/rn66_025.ogg"]
只，只是稍微摸一摸！[p]
[stop_bgmovie]
[bgmovie storage="mov_66_20.webm"]
莉菜的小缝真可爱啊……[p]
#莉菜
[playse storage="rina/rn66_029.ogg"]
这样……请不要这样盯着看……好害羞……[p]
#
我想看更多，莉菜！[p]
#莉菜
[playse storage="rina/rn66_030.ogg"]
不，不行！那里！哥哥，很难为情的！[p]
#
但是，粉色这么可爱啊。你得让我看得更清楚些[p]
#莉菜
[playse storage="rina/rn66_031.ogg"]
哥哥！不能这样掰开！[p]
#
莉菜，大事不妙！肉棒说它想要和莉菜的小穴接触[p]
#莉菜
[playse storage="rina/rn66_032.ogg"]
哥哥！你在说什么呢！[p]
莉菜的小穴也在说想要和肉棒接触！[p]
#莉菜
[playse storage="rina/rn66_033.ogg"]
才！才没有说！[p]
#
说了！不然你看！这样一跳一跳的！[p]
#莉菜
[playse storage="rina/rn66_034.ogg"]
あっ，んん！[p]
#莉菜
[playse storage="rina/rn66_036.ogg"]
哥哥……嗯哼，真是的……啊，嗯……[p]
#
没事的，莉菜，只是蹭一蹭！[p]
#莉菜
[playse storage="rina/rn66_037.ogg"]
哥哥……欺负人……[p]
#
只是稍微蹭一蹭，只是稍微蹭一蹭[p]
#莉菜
[playse storage="rina/rn66_038.ogg"]
哥哥……拜托了……请插进来……[p]
#
究竟怎么办呢……只是稍微蹭一蹭而已……[p]
#莉菜
[playse storage="rina/rn66_039.ogg"]
哥哥……不要欺负人啦……[p]
#
那么，莉菜，插进来咯！[p]
[stop_bgmovie]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[playse storage="rina/rn66_040.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_66_18.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_66_19.webm" skip="true"]

;帰宅
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;メイドフラグ　１
[eval exp="f.meido_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
莉菜穿着女仆服，太可爱了[p]
#
回到了房间[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-バイブ
*vibrator

;エッチ度判定
[if exp="f.rina_h < 80"]
#
果然还是不行吗……[p]
接下来干嘛呢？
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]

[bgloop mov="mov_85_1.webm"  ti="2000"]
[movie storage="mov_85_3.webm" skip="true"]
[bgloop mov="mov_85_4.webm"  ti="2000"]

;帰宅
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;バイブフラグ　１
[eval exp="f.vibrator_rina_h = 1"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
莉菜看起来很爽的样子[p]
#
返回房间[r]
[jump storage="main.ks" target="*night"]


;***********************************************************************************************************************
;-映画館デート
*movietheater
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[if exp="f.movietheater_rina_h == undefined"]
[bgmovie storage="mov_44_1.webm"]
[else]
[bgmovie storage="mov_44_14.webm"]
[jump target="*movietheater_h2"]
[endif]

[playbgm storage="asobiniikuhi.ogg" loop="true"]

来到了电影院[p]

看什么电影呢？
[glink  color="pink" size="20"  x="200"  width="200"  y="150"  text="アクション"  target="*movie_choice" exp="tf.movie_choice = 1"]
[glink  color="pink" size="20"  x="200"  width="200"  y="220"  text="恋愛"  target="*movie_choice" exp="tf.movie_choice = 2"]
[glink  color="pink" size="20"  x="200"  width="200"  y="290"  text="ドキュメンタリー"  target="*movie_choice" exp="tf.movie_choice = 3"]
[glink  color="pink" size="20"  x="200"  width="200"  y="360"  text="サスペンス"  target="*movie_choice" exp="tf.movie_choice = 4"]
[glink  color="pink" size="20"  x="200"  width="200"  y="430"  text="ホラー"  target="*movie_choice" exp="tf.movie_choice = 5"]
[s]
*movie_choice
[stop_bgmovie]
;***********************************************************************************************************************
;映画館Ｈ判別
[if exp="f.rina_h >= 45 && f.movietheater_rina_h == undefined && tf.movie_choice == 4"]
[jump target="*movietheater_h1"]
[endif]
;***********************************************************************************************************************
[if exp="tf.movie_choice == 1"]
[bgmovie storage="mov_44_2_5.webm" time = 2000]
看动作片[p]
莉菜认真的看着[p]
[endif]
[if exp="tf.movie_choice == 2"]
[bgmovie storage="mov_44_2_3.webm" time = 2000]
爱情片的话…[p]
莉菜好像很喜欢[p]
[endif]
[if exp="tf.movie_choice == 3"]
[bgmovie storage="mov_44_2_1.webm" time = 2000]
纪录片是我喜欢的类型[p]
莉菜喜不喜欢呢？[p]
[endif]
[if exp="tf.movie_choice == 4"]
[bgmovie storage="mov_44_2_2.webm" time = 2000]
悬疑片[p]
莉菜也在紧张认真的看着[p]
[endif]
[if exp="tf.movie_choice == 5"]
[bgmovie storage="mov_44_2_4.webm" time = 2000]
恐怖片[p]
被吓到的莉菜很可爱啊！[p]
[endif]
;***********************************************************************************************************************
*movietheater_return
;映画帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

[stop_bgmovie time="1000"]
[bg storage="movietheater/img_34_11_1.png" time="500"]
[fadeoutbgm]
[stopse]
#
看电影花了3000日元[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;--映画館Ｈ1
*movietheater_h1
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_44_4.webm" time = 2000]
#
这部电影没什么人气啊？[p]
#莉菜
[playse storage="rina/rn44_001.ogg" buf="0"]
除了我们没有别人了[p]
#
既然没有被人那就，莉菜过来一下[r]
做到我膝盖上[p]
#莉菜
[playse storage="rina/rn44_002.ogg" buf="0"]
诶……好，好吧……[p]
#
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[movie storage="mov_44_5.webm" skip="true"]
[menuwindows]
[bg storage="movietheater/img_44_16.png" time="1000"]
（哦哦！　本来想说开玩笑的……真的过来了！）[p]
（不行！电影太无聊了，对了……这里的话）[p]
#莉菜
[playse storage="rina/rn44_003.ogg" buf="0"]
呀！[p]
;[freeimage layer="2" time="0"]
[bgmovie storage="mov_44_7.webm" time = 2000]
#莉菜
[playse storage="rina/rn44_004.ogg" buf="0"]
哥！　哥哥！　啊……不，不行！[p]
#
莉菜看电影就行！　不要在意这个[p]
#莉菜
[playse storage="rina/rn44_005.ogg" buf="0"]
真是的！哥哥……总是想着做色色的事情[p]
#
莉菜的胸部太大了，没办法啊[p]
#莉菜
[playse storage="rina/rn44_006.ogg" buf="0"]
才不是没办法呢！[p]
#
[stop_bgmovie]
[bg storage="movietheater/img_44_16.png" time="1000"]
电影放映完了！　我想再揉一揉[p]
#莉菜
[playse storage="rina/rn44_010.ogg" buf="0"]
哥哥是……笨蛋……下流！[p]
;映画フラグ
[eval exp="f.movietheater_rina_h = 1"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[jump target="*movietheater_return"]
;***********************************************************************************************************************
;--映画館Ｈ2
*movietheater_h2
来到了电影院[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]
[bgmovie storage="mov_44_15.webm" time = 2000]
#
又来了，又是一部无聊的电影[p]
#莉菜
[playse storage="rina/rn44_011.ogg" buf="0"]
难道哥哥！　特意选了部无聊的电影……[p]
#
不是不是！　只是碰巧而已啦[r]
但是难得没有人，这次又坐到我身上如何？[p]
#莉菜
[playse storage="rina/rn44_012.ogg" buf="0"]
真是的！　这次禁止摸胸！[p]
#
知道了，禁止摸胸[p]
[stop_bgmovie time="1000"]
[bg storage="movietheater/img_44_17.png" time="1000"]
………[p]
电影，很无聊……但是，又禁止摸胸……[r]
啊，对了……没有说禁止摸胸以外的事[p]
#莉菜
[playse storage="rina/rn44_013.ogg" buf="0"]
呀！[p]
[bgmovie storage="mov_44_13.webm" time = 2000]
#莉菜
[playse storage="rina/rn44_014.ogg" buf="0"]
哥哥！　都说了禁止做这种事！[p]
没有摸胸啊！　你不要在意，继续看电影[p]
#莉菜
[playse storage="rina/rn44_015.ogg" buf="0"]
我会在意的好吗！　嗯，嗯嗯……[p]
莉菜的这里，变得非常湿了哦！　舒服吗？[p]
#莉菜
[playse storage="rina/rn44_017.ogg" buf="0"]
真是的……哥哥……欺负人……[p]
[stop_bgmovie time="1000"]
[bg storage="movietheater/img_44_17.png" time="1000"]
#
又是完全没看电影就结束了[r]
想看莉菜变得更加舒服的样子[p]
#莉菜
[playse storage="rina/rn44_018.ogg" buf="0"]
真是的……我再也不和哥哥一起看电影了！[p]
#
;映画フラグ
[iscript]
delete f.movietheater_rina_h;
[endscript]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[jump target="*movietheater_return"]