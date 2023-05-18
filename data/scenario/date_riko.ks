;***********************************************************************************************************************
;-莉子ちゃんデート
;莉子ちゃんデートエッチ数値
;カラオケ  １回目　20　　２回目　40
;遊園地    １回目　50　　２回目　70
;漫画喫茶  １回目　30　　２回目　90
;お祭り    １回目　60　　３回目　80
;映画　　  １回目　65
;公園      １回目  95
;水着      １回目  50
;バイブ    １回目  80
;体操着    １回目  70
;ランドセル１回目  70

*start
;樱子消去
#
[chara_hide name="sakurako"]
;***********************************************************************************************************************
;-スクール水着判別
[if exp="tf.date_select == 8"]
[jump target="*mizugi"]
[endif]
;***********************************************************************************************************************
;-バイブ判別
[if exp="tf.date_select == 9"]
[jump target="*vibrator"]
[endif]
;***********************************************************************************************************************
;-体操着
[if exp="tf.date_select == 12"]
[jump target="*training_wear"]
[endif]
;***********************************************************************************************************************
;-ランドセル
[if exp="tf.date_select == 13"]
[jump target="*school_bag"]
[endif]
;***********************************************************************************************************************
;-好感度80以下で断られた
[if exp="f.riko_f < 80"]
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk28_006.ogg" buf="0"]
诶~！好麻烦！[r]
算了吧！[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk28_007.ogg" buf="0"]
下次吧[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk28_008.ogg" buf="0"]
我要和玛丽一起玩！[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk28_009.ogg" buf="0"]
我现在很忙[！[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk28_010.ogg" buf="0"]
拒绝萝莉控！[p]
[endif]

#
被拒绝了[p]
接下来干嘛呢？
[jump storage="main.ks" target="*choice2"]

[endif]
;***********************************************************************************************************************
;-デートOK

;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk28_001.ogg" buf="0"]
可以哦，我跟你去[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk28_002.ogg" buf="0"]
真拿你没办法，我陪你去吧[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk28_003.ogg" buf="0"]
可以啊，我很闲[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk28_004.ogg" buf="0"]
嗯，走吧！[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk28_005.ogg" buf="0"]
啊，我想去！[p]
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
[jump target="*maturi"]
[endif]
;■映画
[if exp="tf.date_select == 10"]
[jump target="*movietheater"]
[endif]
;***********************************************************************************************************************
;-公園デート
*park
[cm]
[freeimage layer="2" time="0"]
[bg storage="park_day.png" time="1000"]
[playbgm storage="haretahiha.ogg" loop="true"]
#
公園にやってきた！[p]
;***********************************************************************************************************************
;公園エッチ判別
[if exp="f.riko_h >= 95"]
[jump target="*park_h1"]
[endif]
;***********************************************************************************************************************
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[clearfix]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[movie storage="mov_30_0.webm" skip="true"]
[menuwindows]
[bgmovie storage="mov_30_0_2.webm"]
[playse storage="riko/rk30_003.ogg" buf="0"]
引体向上，做不来！[p]
什么都能做的莉子[r]
但就是做不了引体向上！[p]
我陪莉子练习引体向上！[p]
最近距离欣赏胖次，这是件要保密的事情[p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_5.webm"]
……[p]
累了……运动严重不足……[p]
#莉子
[playse storage="riko/rk30_004.ogg" buf="0"]
大叔，你累了吗？[p]
运动过度了……[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_6.webm"]
莉子在滑板台上玩[p]
好可爱啊！只要看着就满足了[p]
#莉子
[playse storage="riko/rk30_006.ogg" buf="0"]
你这么看是看不到胖次的哟！[p]
#
不……已经足够了[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_7.webm"]
#莉子
[playse storage="riko/rk30_001.ogg" buf="0"]
玩捉迷藏吗？我一定会报警的[p]
#
被追着打了一圈[p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_7.webm"]
#莉子
[playse storage="riko/rk30_005.ogg" buf="0"]
你一直在看女孩子吧！[p]
#
不是不是，只是看莉子而已～[p]
[endif]


;公園帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutbgm]
[stopse]
[stop_bgmovie time="1000"]

#
回到家了[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;-公園H
*park_h1

[cm]
[bg storage="black.png" time="1000"]
[clearfix]
[fadeoutbgm]
[stopse buf="0"]
[stopse buf="3"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="riko/rk30_011.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop ="true"]
[bgloop mov="mov_30_09.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
[playse storage="riko/rk30_012.ogg" buf="0" loop ="true"]
[bgmovie storage="mov_30_11.webm"]
#莉子
啊……啊……大叔是……笨蛋[r]
变态……啊……啊……[p]
#
[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
;公園帰宅
[bg storage="park_day.png" time="1000"]
;莉子ちゃん愛情UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;公園フラグ　１
;[eval exp="f.park_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]
#
和莉子在公园H，刺激满满[p]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;-ゲーセンデート
*arcade
#
[bg storage="arcade.png" time="1000"]
[playbgm storage="dance.ogg" loop="true"]
ゲームセンターにやってきた[p]
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_001.ogg" buf="0"]
大叔，能拿到那个吗？[p]
#
抓娃娃游戏是吧[r]
好了，交给我吧！[p]
…………[p]
果然没拿到[p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#
正在挑战抓娃娃游戏！[p]
哦，要上咯[p]
啊………………[p]
#莉子
[playse storage="riko/rk29_005.ogg" buf="0"]
大叔，完全不行啊！[p]
#
果然没拿到[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_006.ogg" buf="0"]
莉子跳舞的时候，你是不是在用下流的眼神在看着！[p]
#
嗯~……无法否认[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_007.ogg" buf="0"]
大叔，要一起拍大头贴吗？[p]
#
ぜひお願いします！[p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_009.ogg" buf="0"]
大叔好像没有节奏感啊！[p]
#
我经常被人这么说！[p]
[endif]

;ゲーセン帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="arcade.png" time="500"]
[fadeoutbgm]
[stopse]
#
在游戏厅花了2000日元[p]
[eval exp="f.money = f.money - 2000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-カフェデート
*cafe
#
[bg storage="cafe.png" time="1000"]
[playbgm storage="osyare.ogg" loop="true"]
来到咖啡店[p]
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_001.ogg" buf="0"]
大叔，莉子要草莓芭菲！[p]
#
可以，什么都满足你！[p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_002.ogg" buf="0"]
莉子要喝可乐[p]
#
来杯咖啡吧[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_003.ogg" buf="0"]
咖啡什么的好喝吗？虽然好像很苦[p]
#
因为莉子是小孩子，长大了就知道味道了[r]
（虽然没有牛奶和糖我也喝不了）[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_004.ogg" buf="0"]
我可以吃蛋糕吗？[p]
#
我也想吃了[p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_005.ogg" buf="0"]
对姐姐保密啊[p]
#
吃太多的话莉菜会生气的[p]
[endif]

;ゲーセン帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="cafe.png" time="500"]
[fadeoutbgm]
[stopse]
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
;-カラオケデート
*karaoke
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[playbgm storage="ways.ogg" loop="true"]


;■一回目
[if exp="f.karaoke_riko ==  undefined"]
#莉子
[bgmovie storage="mov_31_7.webm"]
来到卡拉OK歌厅[p]
[playse storage="riko/rk31_001.ogg" buf="0"]
大叔，莉子唱 魔法少女爱 给你听♪[p]
[stop_bgmovie]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playbgm storage="Shining_dream.ogg" loop="true"]
[bgloop mov="mov_31_5.webm" ]
[stopbgm]
[eval exp="f.karaoke_riko = true"]
[bgmovie storage="mov_31_7.webm"]
[menuwindows]
#
听了莉子的歌后感到很满足[p]
[jump target="*karaoke_return"]
[endif]
;***********************************************************************************************************************
;莉子ランダム会話
;ランダム数値の取り出し
[if exp="f.karaoke_riko_h == undefined"]
[bgmovie storage="mov_31_7.webm"]
[else]
[bgmovie storage="mov_31_9.webm"]
[endif]

来唱卡拉ok了[p]

[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk31_002.ogg" buf="0"]
大叔，去唱歌了吧![p]
#
哈哈！……我是不是还算唱得马马虎虎呢……[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk31_005.ogg" buf="0"]
大叔得分太低了～！[p]
#
音痴的现实被刺穿了……[p]
[endif]

[if exp="tf.rand == 2"]
#
看起来马上就到时间了[p]
#莉子
[playse storage="riko/rk31_006.ogg" buf="0"]
延长吧！[p]
#
收到！[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk31_008.ogg" buf="0"]
大叔那首歌是什么？没听过，停下来吧！[p]
#
哈……我被打断了！我的18号……[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk31_008.ogg" buf="0"]
大叔那首歌是什么？没听过，停下来吧！[p]
#
哈……我被打断了！我的18号……[p]
[endif]
;***********************************************************************************************************************
;カラオケＨ判別
[if exp="f.riko_h >= 20 && f.karaoke_riko_h == undefined"]
[jump target="*karaoke_h1"]
[endif]
[if exp="f.riko_h >= 40 && f.karaoke_riko_h == 1"]
[jump target="*karaoke_h2"]
[endif]
;***********************************************************************************************************************
*karaoke_return
;カラオケ帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="karaoke.png" time="500"]
[fadeoutbgm]
[stopse]
#
唱卡拉ok花了3000日元[p]
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
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_31_1.webm"]
#莉子
[playse storage="riko/rk31_009.ogg" buf="0"]
真是的，在这种地方也对小孩子产生情欲[r]
怎么办？ 接下来[p]
#
莉子，那么弄的话……[p]
#莉子
[playse storage="riko/rk31_010.ogg" buf="0"]
你不是自己叫我做的吗，你这个大变态！[p]
#
莉……莉子……好想插进去……[p]
#莉子
[playse storage="riko/rk31_011.ogg" buf="0"]
肯定不行吧！ 对付你这变态用手就够了！[p]
#
莉子……好舒服……[p]
#莉子
[playse storage="riko/rk31_012.ogg" buf="0"]
射了吗？ 射了吧？ 用小孩子的手射了是吗？ [p]
#
啊，啊啊啊啊啊[p]
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_31_2.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_31_8.webm"]
#莉子
[playse storage="riko/rk31_013.ogg" buf="0"]
啊，啊……射了这么多[p]
#
;カラオケ帰宅
[bg storage="karaoke.png" time="500"]
;莉子ちゃん愛情UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;カラオケフラグ　１
[eval exp="f.karaoke_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

#
莉子亲手帮我射出来了[p]
在卡拉OK是3000日元的费用[p]
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
[stop_bgmovie]
[fadeoutbgm]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_31_3.webm"]
#莉子
[playse storage="riko/rk31_014.ogg" buf="0"]
大叔你有一到卡拉OK包厢，就想露出小弟弟的病吗！[p]
#
啊……哦，叔叔只是想插进莉子身体里而已！[p]
#莉子
[playse storage="riko/rk31_015.ogg" buf="0"]
我不是说了不行吗 大叔什么的用小孩子的脚欺负正合适呢！[p]
#
啊，是啊。怎么说……也许用脚也不错[p]
#莉子
[playse storage="riko/rk31_016.ogg" buf="0"]
那么被莉子的脚欺负就行了吗 莉子的脚很舒服吗？[p]
#
莉子的脚很舒服[r]
请多用莉子的脚欺负我[p]
#莉子
[playse storage="riko/rk31_017.ogg" buf="0"]
嘿嘿，用莉子的脚尽力，欺负你[r]
喂，你看！快点射出来吧！[p]
#
嗯，莉子，糟了，要去了……啊啊啊 ~ ![p]
[stop_bgmovie]

[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_31_4.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
;カラオケ帰宅
[bg storage="karaoke.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;カラオケフラグ　１
;[eval exp="f.karaoke_riko_h = 1"]
[iscript]
delete f.karaoke_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

#
唱卡拉ok花了3000日元[p]
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
[bgmovie storage="mov_33_3.webm"]
[playbgm storage="sizukana.ogg" loop="true"]
漫画咖啡店来了[p]

;***********************************************************************************************************************
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk33_001.ogg" buf="0"]
叔叔，莉子要喝可乐！[p]
#
明白了，莉子大小姐！[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk33_002.ogg" buf="0"]
那个漫画有趣吗？[p]
#
很有趣哦!我马上就看完了。[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk33_005.ogg" buf="0"]
我现在正在认真阅读，别跟我说话！[p]
#
被凶了……[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk33_006.ogg" buf="0"]
大叔，看快点！[r]
等一会追上来吧[p]
#
等等，等一下啊～[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk33_003.ogg" buf="0"]
反正大叔，你看过色情漫画吧[p]
#
如你所言[p]
[endif]
;***********************************************************************************************************************
;漫画喫茶Ｈ判別
[if exp="f.riko_h >= 30 && f.cartooncafe_riko_h == undefined"]
[jump target="*cartooncafe_h1"]
[endif]
[if exp="f.riko_h >= 90 && f.cartooncafe_riko_h == 1"]
[jump target="*cartooncafe_h2"]
[endif]
;***********************************************************************************************************************
;漫画喫茶帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="cartooncafe.png" time="500"]
[fadeoutbgm]
[stopse]
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
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_33_1.webm"]
[playse storage="riko/rk33_007.ogg" buf="0" loop ="true"]
#
莉子，好舒服！[p]
莉子的小穴就在我眼前！[p]
我想在莉子的这里插上肉棒[p]
#莉子
[playse storage="riko/rk33_009.ogg" buf="0"]
我不是说了不行吗！下次再说吧！[p]
[playse storage="riko/rk33_007.ogg" buf="0" loop ="true"]
#
诶～……怎么能这样～[p]

;漫画喫茶帰宅
[bg storage="cartooncafe.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stopse buf="0"]
[stop_bgmovie time="1000"]
;漫画喫茶フラグ　１
[eval exp="f.cartooncafe_riko_h = 1"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

#
在漫画咖啡店花了3000日元[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
被莉子玩弄一番，没有做就闷闷不乐的回家了。[p]
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--漫画喫茶Ｈ2
*cartooncafe_h2
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_33_4.webm"]
[playse storage="riko/rk33_010.ogg" buf="0"]
#莉子
快~看！快看！大叔，想插入莉子这里吧？[p]
#
嗯……莉子，我想插进去[p]
#莉子
[playse storage="riko/rk33_011.ogg" buf="0"]
哼哼，但是不～行！　不能让你插进去！[p]
#
怎！　怎么能这样！　莉子……[p]
#莉子
[playse storage="riko/rk33_012.ogg" buf="0"]
但是，前端好像已经进去了哦！　大叔[p]
#
啊啊……莉子将……就这么继续吧！！[p]
#莉子
[playse storage="riko/rk33_013.ogg" buf="0"]
不是吧！　果然还是不～行！[p]
#
莉，莉子酱……请你了！　让我插进去！[p]
#莉子
[playse storage="riko/rk33_014.ogg" buf="0"]
诶～干嘛？[p]
#
请让叔叔的肉棒插进去[p]
#莉子
[playse storage="riko/rk33_015.ogg" buf="0"]
哪里？[p]
#
莉！　莉子的小穴里！[p]
#莉子
[playse storage="riko/rk33_016.ogg" buf="0"]
嗯～……该怎么办呢～[p]
#
拜！　拜托了！莉子大人，无论如何请让我插进去！[p]
#莉子
[playse storage="riko/rk33_017.ogg" buf="0"]
既然说到这份上了，没办法就让你插进来吧[p]
[stop_bgmovie]
[cm]
[clearfix]
[stopse buf="0"]
[stopse buf="3"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_33_7.webm" skip="true"]
[movie storage="mov_33_12.webm" skip="true"]
[playse storage="riko/rk33_020.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop ="true"]
[bgloop mov="mov_33_8.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_33_9.webm" skip="true"]
[playse storage="riko/rk36_021.ogg" buf="0" loop ="true"]
[movie storage="mov_33_10.webm" skip="true"]
[bgloop mov="mov_33_11.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]


;漫画喫茶帰宅
[bg storage="cartooncafe.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;漫画喫茶フラグ　１
;[eval exp="f.cartooncafe_riko_h = 1"]
[iscript]
delete f.cartooncafe_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]


[stopse buf="0"]
[stop_bgmovie time="1000"]
[menuwindows]
#
在漫画咖啡店花了3000日元[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
被莉子责备了，不知为什么有点兴奋的感觉……[p]
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-遊園地
*amusement
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="yuuenti.ogg" loop="true"]

;***********************************************************************************************************************
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]
[if exp="f.riko_h >= 50 && f.amusement_riko_h == undefined"]
[eval exp="tf.rand = 3"]
[endif]
[if exp="f.riko_h >= 70 && f.amusement_riko_h == 1"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[endif]

;タイトスカート
[if exp="tf.rand == 0"]
[bgmovie storage="mov_32_6.webm"]
来到了游乐园[p]
#
我该坐什么呢……[p]
有了！[p]
帅气的护送[r]
因走进鬼屋而害怕的莉子吧[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_10.webm" time="1000"]
#莉子
[playse storage="riko/rk31_019.ogg" buf="0"]
大叔……你害怕吗？ 莉子……我不怕……[p]
#主人公
哦……大叔也是……我不怕……[r]
（太糟糕了！好可怕！！）[p]
[endif]
;タイトスカート　
[if exp="tf.rand == 1"]
[bgmovie storage="mov_32_6.webm"]
来到了游乐园[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_9.webm" time="1000"]
#莉子
[playse storage="riko/rk31_021.ogg" buf="0"]
大叔！ 再去一次吧！[p]
#
虽然已经疲惫不堪了，但好像不能提反对意见……[p]
[endif]
;タイトスカート
[if exp="tf.rand == 2"]
[bgmovie storage="mov_32_6.webm"]
来到了游乐园[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_7.webm" time="1000"]
#莉子
[playse storage="riko/rk31_023.ogg" buf="0"]
叔叔，没事吗？[p]
#
唔……连续坐过山车真是辛苦啊……[p]
[endif]
;デニムパンツ
[if exp="tf.rand == 3"]
[bg storage="amusement.png" time="500"]
来到了游乐园[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_8.webm" time="1000"]
#莉子
[playse storage="riko/rk31_022.ogg" buf="0"]
哇，人那么小[p]
#
盯着莉子的大腿移不开视线[p]
[endif]
;***********************************************************************************************************************
;遊園地Ｈ判別
[if exp="f.riko_h >= 50 && f.amusement_riko_h == undefined"]
[jump target="*amusement_h1"]
[endif]
[if exp="f.riko_h >= 70 && f.amusement_riko_h == 1"]
[jump target="*amusement_h2"]
[endif]
;***********************************************************************************************************************
;遊園地帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="amusement.png" time="500"]
[fadeoutbgm]
[stopse]
#
和莉子在游乐园玩得很尽兴[p]
花了六千日元[p]
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
;[bg storage="amusement.png" time="500"]
;遊園地にやってきた[p]
[bg storage="black.png" time="1000"]
[stop_bgmovie time="1000"]
[fadeoutbgm]


[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[playse storage="riko/rk31_025.ogg" buf="0" loop ="true"]
[bgloop mov="mov_32_1.webm"  ti="2000"]
[stopse buf="0"]

[movie storage="mov_32_2.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutse time="500"]
[stop_bgmovie time="1000"]

;遊園地フラグ　１
[eval exp="f.amusement_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
和莉子在游乐园玩得很尽兴[r]
在游览车里做了那样的事情，大满足[p]
花了六千日元[p]
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
;[bgmovie storage="mov_32_6.webm"]
;遊園地にやってきた[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="riko/rk31_028.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop ="true"]
[bgloop mov="mov_32_3.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_32_4.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
;[eval exp="f.amusement_riko_h = 1"]
[iscript]
delete f.amusement_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
和莉子在游乐园玩得很尽兴[r]
在游览车里做了那样的事情，大满足[p]
花了六千日元[p]
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
[bgmovie storage="mov_36_12.webm"]
[playbgm storage="sitamati.ogg" loop="true"]
来参加了祭会[p]

;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk36_001.ogg" ]
叔叔，快去钓鱼！[p]
#
好的，我要钓得满满的！[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk36_002.ogg"]
莉子想吃刨冰[p]
#
每天都很热啊～[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk36_003.ogg" ]
浴衣可爱吗？[p]
#
莉子穿着浴衣很可爱哦[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk36_004.ogg" ]
大叔，莉子穿着浴衣的样子，你在用下流的眼神在看着吧！[p]
#
无法否认[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk36_005.ogg"]
炒面，炖牛肉，章鱼烧，日式煎饼，鱿鱼烧，吃什么～[p]
#
莉子吃多了[p]
[endif]

;***********************************************************************************************************************
;お祭りＨ判別
[if exp="f.riko_h >= 60 && f.maturi_riko_h == undefined"]
[jump target="*maturi_h1"]
[endif]
[if exp="f.riko_h >= 80 && f.maturi_riko_h == 1"]
[jump target="*maturi_h2"]
[endif]
;***********************************************************************************************************************


;お祭り帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="maturi.png" time="500"]
[fadeoutbgm]
[stopse]
#
和莉子一起在祭会上玩得很尽兴[p]
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
[bgmovie storage="mov_36_13.webm"]
#
莉子，烟花好厉害啊！[p]
#莉子
[playse storage="riko/rk36_007_2.ogg"]
总觉得，来到了一个完全没有人的地方，是吧！ 大叔！[p]
#
是吗……这不是巧合吗！[p]
#莉子
[playse storage="riko/rk36_008.ogg"]
你是想对莉子做些下流的事吧[p]
#
诶！ 不是的！[p]
#莉子
[playse storage="riko/rk36_009.ogg"]
因为莉子很可爱，所以没办法啊！[r]
你对穿着浴衣的莉子很有情欲吧[p]
#
的确，莉子穿着浴衣……好可爱啊[p]
#莉子
[playse storage="riko/rk36_010.ogg"]
莉子很可爱吗？[p]
#
嗯，莉子很可爱哦！ 浴衣也很适合你[p]
#莉子
[playse storage="riko/rk36_011.ogg"]
是，是吗？ 莉子太可爱了，没办法啊！[p]
#
是啊，因为莉子太可爱了！[p]
#莉子
[playse storage="riko/rk36_012.ogg"]
那，莉子来和大叔做H的事吧[p]
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[stopse buf="0"]
[movie storage="mov_36_1.webm" skip="true"]
[movie storage="mov_36_2.webm" skip="true"]
[bgloop mov="mov_36_3.webm"  ti="1000"]
[movie storage="mov_36_4.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
[eval exp="f.maturi_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
和莉子一起在祭会上玩得很尽兴[p]
穿着浴衣，连口交都做了，特别满足[p]
花了5000日元[p]
[eval exp="f.money = f.money - 5000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--お祭りＨ２
*maturi_h2
[fadeoutbgm]
[playbgm storage="night.ogg" loop="true"]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_36_13.webm"]
#莉子
[playse storage="riko/rk36_015.ogg"]
大叔，你又来了没有人的地方了吧！[p]
#
是吗……确实，周围没有人啊！[p]
#莉子
[playse storage="riko/rk36_016.ogg"]
大叔你那么想和莉子做色色的事吗[p]
#
这……那当然是因为莉子很可爱……[p]
#莉子
[playse storage="riko/rk36_017.ogg"]
真是的，对穿着浴衣的小孩产生情欲！[r]
叔叔萝莉控到什么程度了啊！你那么想和莉子H吗[p]
#
想，想做[p]
#莉子
[playse storage="riko/rk36_018.ogg"]
真是拿你没办法，那就和叔叔做爱吧[p]
[fadeoutbgm]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="riko/rk36_019.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]

[bgloop mov="mov_36_5.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_36_6.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
;[eval exp="f.maturi_riko_h = 1"]
[iscript]
delete f.maturi_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
和莉子在祭会上一起玩得很尽兴[r]
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
;-スクール水着
*mizugi

;エッチ度判定
[if exp="f.riko_h < 50"]
#
果然还是不愿意穿啊……[p]
接下来，干嘛呢？
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_11.webm"]
#莉子
[playse storage="riko/rk65_012.ogg"]
这是什么，校泳衣？[p]
#
是的，我想让莉子穿上这个！[p]
#莉子
[playse storage="riko/rk65_013.ogg"]
哈～……大叔已经是个十足的变态了！[r]
以后就叫你萝莉控之王[p]
#
拜托了，莉子！穿吧穿吧！[p]
#莉子
[playse storage="riko/rk65_014.ogg"]
真拿你没办法，穿给你看好了……只是穿而已啊！[p]
#
[stop_bgmovie]
[cm]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_12.webm"]
#莉子
[playse storage="riko/rk65_015.ogg"]
怎么样？大叔，莉子穿什么都很可爱吧！[p]
#
嗯，很可爱哦莉子[p]
#莉子
[playse storage="riko/rk65_016.ogg"]
大叔的眼神好下流……[p]
#
莉子，转过身去，手像这样[p]
[stop_bgmovie]
[bgmovie storage="mov_65_13.webm"]
#莉子
[playse storage="riko/rk65_017.ogg"]
嗯，这样？这样子吗[p]
#
对对，就是那样[p]
#莉子
[playse storage="riko/rk65_018.ogg"]
嗯……那么，这样看的话感觉兴奋起来了[p]
[stop_bgmovie]
[bgmovie storage="mov_65_14.webm"]
#
是……是的[p]
#莉子
[playse storage="riko/rk65_020.ogg"]
这样掀开怎么样？[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[movie storage="mov_65_15.webm" skip="true"]
[bgmovie storage="mov_65_16.webm"]
[menuwindows]
#
哈……哈……莉子，可以摸吗？[p]
#莉子
[playse storage="riko/rk65_021.ogg"]
哈？当然不行啦！[p]
#
拜托了……莉子太可爱了……已经忍不住了！[p]
#莉子
[playse storage="riko/rk65_022.ogg"]
因为莉子太可爱所以忍不住了吗？[p]
#
莉子太可爱了，太可爱了……已经忍耐到极限了。[p]
#莉子
[playse storage="riko/rk65_023.ogg"]
呼~，那么……只是稍微……[p]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="riko/rk65_024.ogg" loop="true"]
[bgloop mov="mov_65_17.webm"  ti="2000"]
[bgloop mov="mov_65_19.webm"  ti="2000"]
[menuwindows]
[bgmovie storage="mov_65_20.webm"]
#
莉子，可以吧……可以插进去吗？[p]
[stopse buf="0"]
#莉子
[playse storage="riko/rk65_025.ogg"]
哈，哈，大叔……[r]
一定要说的话……没关系……可以的[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="riko/rk65_027.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_21.webm"  ti="2000"]
[bgloop mov="mov_65_22.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_65_24.webm" skip="true"]
[playse storage="riko/rk65_028.ogg" loop="true"]
[bgloop mov="mov_65_25.webm"  ti="2000"]
[stopse buf="0"]
;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;水着フラグ　１
[eval exp="f.mizugi_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子穿着泳衣，太令人兴奋了[p]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-バイブ
*vibrator

;エッチ度判定
[if exp="f.riko_h < 80"]
#
果然还是不行吗……[p]
接下来干嘛呢？
[jump storage="main.ks" target="*choice2"]
[endif]


[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]

[bgloop mov="mov_84_1.webm"  ti="2000"]
[movie storage="mov_84_20.webm" skip="true"]
[bgloop mov="mov_84_21.webm"  ti="2000"]

;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;バイブフラグ　１
[eval exp="f.vibrator_riko_h = 1"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子酱看起来很爽的样子[p]
#
回到了房间[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-映画館デート
*movietheater
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bg storage="movietheater/img_34_11_2.png" time="500"]
[playbgm storage="asobiniikuhi.ogg" loop="true"]
来到了电影院[p]
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]

[movie storage="mov_34_1.webm" skip="true"]
[bgmovie storage="mov_34_2.webm"]
[menuwindows]
看什么电影呢?
[glink  color="pink" size="20"  x="900"  width="200"  y="150"  text="アクション"  target="*movie_choice" exp="tf.movie_choice = 1"]
[glink  color="pink" size="20"  x="900"  width="200"  y="220"  text="恋愛"  target="*movie_choice" exp="tf.movie_choice = 2"]
[glink  color="pink" size="20"  x="900"  width="200"  y="290"  text="ドキュメンタリー"  target="*movie_choice" exp="tf.movie_choice = 3"]
[glink  color="pink" size="20"  x="900"  width="200"  y="360"  text="アニメ"  target="*movie_choice" exp="tf.movie_choice = 4"]
[glink  color="pink" size="20"  x="900"  width="200"  y="430"  text="ホラー"  target="*movie_choice" exp="tf.movie_choice = 5"]
[s]
*movie_choice
[stop_bgmovie]

;***********************************************************************************************************************
[if exp="tf.movie_choice == 1"]
[bgmovie storage="mov_34_3_3.webm" time = 2000]
看动作片[p]
莉子好像很高兴，太好了！[p]
[endif]
[if exp="tf.movie_choice == 2"]
[bgmovie storage="mov_34_3_1.webm" time = 2000]
爱情片…[p]
莉子好像很无聊[p]
[endif]
[if exp="tf.movie_choice == 3"]
[bgmovie storage="mov_34_3_4.webm" time = 2000]
记录片好像不行[p]
睡着了…明明这么有趣[p]
[endif]
[if exp="tf.movie_choice == 4"]
[bgmovie storage="mov_34_3_2.webm" time = 2000]
动画片是莉子喜欢的マ魔女女友！[p]
认真的看着[p]
[endif]
[if exp="tf.movie_choice == 5"]
[bgmovie storage="mov_34_3_5.webm" time = 2000]
不太擅长看恐怖片[p]
逞强的样子好可爱[p]
[endif]
;***********************************************************************************************************************
;映画館Ｈ判別
[if exp="f.riko_h >= 65 && f.movietheater_riko_h == undefined && tf.movie_choice == 3"]
[jump target="*movietheater_h1"]
[endif]
[if exp="f.riko_h >= 65 && f.movietheater_riko_h == 1 && tf.movie_choice == 3"]
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_34_5.webm" time = 2000]
#莉子
[playse storage="riko/rk34_008.ogg" buf="0"]
大叔，又是无聊的电影……[r]
这是为了和莉子做色色的事情才来的吧！[p]
[jump target="*movietheater_h2"]
[endif]

;***********************************************************************************************************************
*movietheater_return
;映画帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
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
[movie storage="mov_34_4.webm" skip="true"]
[bgmovie storage="mov_34_5.webm" time = 2000]

#莉子
[playse storage="riko/rk34_001.ogg" buf="0"]
这部电影，好无聊[p]
#
诶！　是吗？　很无聊吗？[p]
#莉子
[playse storage="riko/rk34_002.ogg" buf="0"]
因为，没有其他人……正因为很无聊，所以才完全没有人来看[p]
#
虽然我觉得还挺有趣的[p]
#莉子
[playse storage="riko/rk34_003.ogg" buf="0"]
叔叔，因为是变态所以有点奇怪！[p]
#
莉，莉子！　等一下[p]
#莉子
[playse storage="riko/rk34_004.ogg" buf="0"]
啊，没关系，没关系！　你看电影就行了[p]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_34_7.webm" time = 2000]
#莉子
[playse storage="riko/rk34_005.ogg" buf="0"]
不愧是大叔！舔了一下就这么大了[r]
大叔你看电影就行了[p]
#
无法集中注意力……啊[p]
*movietheater_h2
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="2000"]
[movie storage="mov_34_8.webm" skip="true"]
[playse storage="riko/rk34_006.ogg" buf="0" loop="true"]
[stop_bgmovie time="2000"]
[bgloop mov="mov_34_9.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[stop_bgmovie time="2000"]
[movie storage="mov_34_10.webm" skip="true"]
[menuwindows]
;映画帰宅
[bg storage="movietheater/img_34_11_1.png" time="500"]
;莉子ちゃん愛情UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;映画フラグ　１
[eval exp="f.movietheater_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
#
从莉子口中拔了出来[p]
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
;体操着
*training_wear

;エッチ度判定
[if exp="f.riko_h < 70"]
#
果然还是不愿意穿啊……[p]
接下来干嘛呢？
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_47.webm"]
#莉子
[playse storage="riko/rk102_001.ogg"]
大叔这是什么？[p]
#
这是被称之为体操短裤的古老物品…[p]
#莉子
[playse storage="riko/rk102_002.ogg"]
大叔想让我穿上这个吗？[p]
#
是的！希望你穿上！[p]
#莉子
[playse storage="riko/rk102_003.ogg"]
诶～…怎么办呢～[p]
#
拜托了！莉子酱，请务必穿上！[p]
#莉子
[playse storage="riko/rk102_004.ogg"]
但是这个，感觉好害羞啊[p]
#
没关系的！莉子穿上绝对很可爱！[r]
只是穿一下而已，呐！拜托了莉子！[p]
#莉子
[playse storage="riko/rk102_005.ogg"]
大叔也太拼命了…[p]
#
拜托了，莉子酱！稍微试一试！[r]
稍微试一下，只是穿一下而已，可以吧，可以吧，可以吧！[p]
#莉子
[playse storage="riko/rk102_006.ogg"]
真是的！真拿你没办法那就穿着试试吧，只是穿一下而已哦[p]
#
太好了～[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_48.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_65_50.webm" time="1000"]

#莉子
[playse storage="riko/rk102_007.ogg"]
怎么样？大叔！莉子可爱吗？[p]
#
是的，莉子很可爱！[p]
#莉子
[playse storage="riko/rk102_008.ogg"]
大叔，这样可以吗？　嗯…真变态！[p]
[playse storage="riko/rk102_009.ogg"]
大叔呼吸慌乱了！　不能摸哦！[p]
#
莉子，已经忍不住了！稍微摸一摸好吗？[p]
#莉子
[playse storage="riko/rk102_010.ogg"]
不～行！不能让你摸！[p]
#
怎么这样…[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_52.webm" time="1000"]
#莉子
[playse storage="riko/rk102_011.ogg"]
大叔，这样！很色气是吧？[p]
[playse storage="riko/rk102_012.ogg"]
那个！哇~大叔的眼睛充血了！[p]
[playse storage="riko/rk102_013.ogg"]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_51.webm" time="1000"]
嘿咻！　怎么样？大叔，想看更多吗！[p]
[playse storage="riko/rk102_014.ogg"]
大叔，脸靠太近啦！喂，喂！说了不能摸的…[p]
[stop_bgmovie time="1000"]
[playse storage="riko/rk102_015.ogg" loop="true"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bgloop mov="mov_65_34.webm"  ti="2000"]
[playse storage="riko/rk68_028.ogg" loop="true"]
[playse storage="se/kutyu02.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_35.webm"  ti="2000"]
[bgloop mov="mov_65_35_2.webm"  ti="2000"]
[bgloop mov="mov_65_36.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_65_37.webm" skip="true"]
[playse storage="riko/rk65_028.ogg" loop="true"]
[bgloop mov="mov_65_38.webm"  ti="2000"]
[stopse buf="0"]
;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;体操着フラグ　１
[eval exp="f.training_wear_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子的体操服太让人兴奋了[p]
#
回到了房间[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;ランドセル
*school_bag

;エッチ度判定
[if exp="f.riko_h < 70"]
#
果然还是不愿意穿啊……[p]
接下来干嘛呢？
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_40.webm"]
#莉子
[playse storage="riko/rk101_001.ogg"]
大叔，你是特意去买了这个吗…[p]
#
希望莉子背上这个！制服也一起穿上！[p]
#莉子
[playse storage="riko/rk101_002.ogg"]
哈～，没想到萝莉控到了这个地步…[r]
真是的，你不会感到害臊吗，这个大变态！[p]
#
拜托了，想看看莉子可爱的样子！[p]
#莉子
[playse storage="riko/rk101_003.ogg"]
想看莉子可爱的样子？[p]
#
是啊是啊，因为莉子很可爱，无论如何都很想看！[p]
#莉子
[playse storage="riko/rk101_004.ogg"]
既然都说到这份上了那就传给你看看吧…只是穿一下而已哦！[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_53.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_65_41.webm" time="1000"]
#
莉子背着书包的样子！太可爱了！[p]
#莉子
[playse storage="riko/rk101_005.ogg"]
大叔的表情很变态！原本恶心的脸变得更恶心了[p]
#
没办法啊莉子太可爱了[p]
#莉子
[playse storage="riko/rk101_006.ogg"]
是吗？莉子很可爱吗？[p]
#
非常的可爱哦，莉子酱！[p]
#莉子
[playse storage="riko/rk101_007.ogg"]
好吧，真拿你没办法！稍微给你点好处吧[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_42.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_65_45.webm" time="1000"]
#莉子
[playse storage="riko/rk101_008.ogg"]
怎么样？大叔！[p]
[playse storage="riko/rk101_009.ogg"]
莉子很可爱吧！[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_43.webm" time="1000"]
[playse storage="riko/rk101_010.ogg"]
这样怎么样？[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_44.webm" time="1000"]
[playse storage="riko/rk101_011.ogg"]
哇～！下流的表情！大叔，对着背书包的小孩子发情了[r]
真是个无药可救的萝莉控！[p]
[playse storage="riko/rk101_012.ogg"]
等等！大叔的脸靠的太近了…不许摸！[p]
#
莉子酱太可爱了，忍不住了[r]
拜托了，就稍微摸一下！[p]
#莉子
[playse storage="riko/rk101_013.ogg"]
真是的…！　真是拿你没办法，谁叫莉子太可爱了呢！[r]
只是稍微摸一下哦！[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_46.webm" skip="true"]
[stop_bgmovie]
[playse storage="riko/rk101_014.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_28.webm"  ti="2000"]

[playse storage="riko/rk68_028.ogg" loop="true"]
[playse storage="se/kutyu02.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_29.webm"  ti="2000"]
[playse storage="riko/rk68_031.ogg" loop="true"]
[bgloop mov="mov_65_30.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_65_32.webm" skip="true"]
[playse storage="riko/rk65_028.ogg" loop="true"]
[bgloop mov="mov_65_33.webm"  ti="2000"]
[stopse buf="0"]
;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;ランドセルフラグ　１
[eval exp="f.school_bag_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子背着书包的样子太令人兴奋了[p]
#
返回房间[r]
[jump storage="main.ks" target="*night"]