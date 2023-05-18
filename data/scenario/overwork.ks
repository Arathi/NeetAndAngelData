;***********************************************************************************************************************
;-過労シナリオ

*start
[cm]
[clearfix]

@bg storage ="room_day.png" time=1000
[menuwindows]
#
咦？……眼冒金光……[p]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[mask time="500"]



;■恋人状態か判別
[if exp="f.riko_lover == 2 || f.rina_lover == 2 || f.sizue_lover == 2"]
;愛情度判別にジャンプ
 [jump target="*love"]
[endif]

;***********************************************************************************************************************
;-好感度判定
[if exp="f.riko_f >= f.rina_f && f.riko_f >= f.sizue_f"]
;お見舞い判定　莉子
[eval exp="tf.omimai = 4"]
[endif]

[if exp="f.rina_f > f.riko_f && f.rina_f >= f.sizue_f"]
;お見舞い判定　莉菜
[eval exp="tf.omimai = 5"]
[endif]

[if exp="f.sizue_f > f.riko_f && f.sizue_f > f.rina_f"]
;お見舞い判定　静江
[eval exp="tf.omimai = 6"]
[endif]

;***********************************************************************************************************************
;-好感度お見舞い判別
;莉子
[if exp="tf.omimai == 4 && f.riko_f > = 30"]
;莉子お見舞い4[p]
[jump target="*riko_nursing"]
[endif]
;莉菜
[if exp="tf.omimai == 5 && f.rina_f >= 30"]
;莉菜お見舞い5[p]
[jump target="*rina_nursing"]
[endif]
;静江
[if exp="tf.omimai == 6 && f.sizue_f >= 30"]
;静江お見舞い6[p]
[jump target="*sizue_nursing"]
[endif]
[eval exp="tf.omimai =0"]
[jump target="*omimai_sakurako"]

;-愛情判別-----------------------------------------------------------------------
*love

;[if exp="f.riko_i >= f.rina_i && f.riko_i >= f.sizue_i"]
;お見舞い判定　莉子
;[eval exp="tf.omimai = 1"]
;[endif]

;[if exp="f.rina_i > f.riko_i && f.rina_i >= f.sizue_i"]
;お見舞い判定　莉菜
;[eval exp="tf.omimai = 2"]
;[endif]

;[if exp="f.sizue_i > f.riko_i && f.sizue_i > f.rina_i"]
;お見舞い判定　静江
;[eval exp="tf.omimai = 3"]
;[endif]

*omimai_loop
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand ==0"]
 [if exp="f.riko_lover == 2"]
 [eval exp="tf.omimai = 1"]
 [jump target="*riko_nursing2"]
 [endif]
[endif]

[if exp="tf.rand ==1"]
 [if exp="f.rina_lover == 2"]
 [eval exp="tf.omimai = 2"]
 [jump target="*rina_nursing2"]
 [endif]
[endif]

[if exp="tf.rand ==2"]
 [if exp="f.sizue_lover == 2"]
 [eval exp="tf.omimai = 3"]
 [jump target="*sizue_nursing2"]
 [endif]
[endif]

[jump target="*omimai_loop"]

;-愛情お見舞い判別---------------------------------------------------------------
;莉子
[if exp="tf.omimai == 1"]
;莉子お見舞い1
[jump target="*riko_nursing2"]
[endif]
;莉菜
[if exp="tf.omimai == 2"]
;莉菜お見舞い
[jump target="*rina_nursing2"]
[endif]
;静江
[if exp="tf.omimai == 3"]
;静江お見舞い
[jump target="*sizue_nursing2"]
[endif]
;



;全員判定以下の場合お見舞いイベント無-----------------------------------------------------
*omimai_sakurako
[if exp="tf.omimai == 0"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
[endif]

[return]

;-莉子ちゃん好感度判定-----------------------------------------------------------------------
*riko_nursing
;--好感度80以上
[if exp="f.riko_f >= 80 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
@bg storage ="nursing/img08_02.png" time=1000
#
莉子？[p]
[playse storage="riko/rk08_005.ogg" buf="0"]
大叔，这是粥！你能吃吗？[p]
啊～把嘴张开我喂你？[p]
@bg storage ="room_evening.png" time=1000
#
因为莉子的照顾，打起精神起来了！[p]
[return]
[endif]

;--好感度60以上
[if exp="f.riko_f >= 60 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
@bg storage ="nursing/img08_01.png" time=1000
#
莉子？[p]
[playse storage="riko/rk08_004.ogg" buf="0"]
你没事吧，大叔？发烧了吗？[p]
@bg storage ="room_evening.png" time=1000
#
因为莉子的照顾，打起精神来了！[p]

[return]
[endif]

;--好感度30以上
[if exp="f.riko_f >= 30 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
@bg storage ="nursing/img08_00.png" time=1000
#
莉子？[p]
[playse storage="riko/rk08_003.ogg" buf="0"]
大叔，你没事吧？有什么想要的吗？[p]
@bg storage ="room_evening.png" time=1000
#
因为莉子的照顾，打起精神来了！[p]

[return]
[endif]

;-莉菜ちゃん好感度判定-----------------------------------------------------------------------
*rina_nursing
;--好感度80以上
[if exp="f.rina_f >= 80 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
@bg storage ="nursing/img09_01.png" time=1000
#
莉菜？[p]
[playse storage="rina/rn09_005.ogg" buf="0"]
哥哥，粥准备好了[r]
你能吃吗？[p]
[playse storage="rina/rn09_005_1.ogg" buf="0"]
可能会很烫……我来喂你吃吧[p]
@bg storage ="room_evening.png" time=1000
#
因为莉菜的照顾，打起精神来了！[p]

[return]
[endif]

;--好感度60以上
[if exp="f.rina_f >= 60 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
@bg storage ="nursing/img09_02.png" time=1000
#
莉菜？[p]
[playse storage="rina/rn09_004.ogg" buf="0"]
哥哥，发烧好点了吗？[r]
啊~还是很烫啊[p]
@bg storage ="room_evening.png" time=1000
#
因为莉菜的照顾，打起精神来了！[p]

[return]
[endif]

;--好感度30以上
[if exp="f.rina_f >= 30 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
@bg storage ="nursing/img09_00.png" time=1000
#
莉菜？[p]
[playse storage="rina/rn09_001.ogg" buf="0"]
哥哥，我做了粥[r]
如果可以的话请吃吧[p]
@bg storage ="room_evening.png" time=1000
#
因为莉菜的照顾，打起精神来了！[p]

[return]
[endif]

;-静江さん好感度判定-----------------------------------------------------------------------
*sizue_nursing
;--好感度80以上
[if exp="f.sizue_f >= 80 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
@bg storage ="nursing/img10_00.png" time=1000
#
静江小姐？[p]
[playse storage="sizue/sz10_003.ogg" buf="0"]
哎呀哎呀，能吃粥吗？[r]
阿姨喂你吃吧？[p]
[playse storage="sizue/sz10_003_1.ogg" buf="0"]
来！啊~[p]
@bg storage ="room_evening.png" time=1000
#
因为静江小姐的照顾，打起精神来了！[p]

[return]
[endif]

;--好感度60以上
[if exp="f.sizue_f >= 60 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
@bg storage ="nursing/img10_01.png" time=1000
#
静江小姐？[p]
[playse storage="sizue/sz10_004.ogg" buf="0"]
还在发烧呢~[r]
不好好躺着可不行啊！[p]
@bg storage ="room_evening.png" time=1000
#
因为静江小姐的照顾，打起精神来了！[p]

[return]
[endif]

;--好感度30以上
[if exp="f.sizue_f >= 30 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
@bg storage ="nursing/img10_02.png" time=1000
#
静江小姐？[p]
[playse storage="sizue/sz10_001.ogg" buf="0"]
哥哥，你怎么样了？[r]
看样子是感冒了呢[p]
@bg storage ="room_evening.png" time=1000
#
因为静江小姐的照顾，打起精神来了！[p]

[return]
[endif]

;-莉子ちゃん愛情度判定------------------------------------------------------------------------------------------------------
*riko_nursing2

;--莉子お見舞いイベント①　スカート-------------------------------------------------

[if exp="f.nursing_riko == undefined"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_3_1.webm" skip="true"]
[movie storage="mov_08_3_2.webm" skip="true"]
[movie storage="mov_08_3_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
看了莉子的内裤，就打起精神来了[p]

;お見舞い胸見せフラグ
[eval exp="f.nursing_riko = 2"]

[return]
[endif]

;--莉子お見舞いイベント②　胸見せ-------------------------------------------------

[if exp="f.nursing_riko == 2"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_4_1.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
看到莉子的胸部就有力气了[p]

;お見舞い胸見せフラグ
[eval exp="f.nursing_riko = 3"]

[return]
[endif]

;--莉子お見舞いイベント③　クパァ-------------------------------------------------

[if exp="f.nursing_riko == 3"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_5_1.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
多亏了莉子，某个地方变得精神起来了？[p]

;お見舞いクパァフラグ
[eval exp="f.nursing_riko = 4"]

[return]
[endif]

;--莉子お見舞いイベント④　足コキ-------------------------------------------------

[if exp="f.nursing_riko == 4"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_6_1.webm" skip="true"]
[movie storage="mov_08_6_2.webm" skip="true"]
[movie storage="mov_08_6_4.webm" skip="true"]
[movie storage="mov_08_6_5.webm" skip="true"]
[movie storage="mov_08_6_6.webm" skip="true"]
[movie storage="mov_08_6_7.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
因为莉子的照顾，所以打起精神来了……是吗？[p]

;お見舞い足コキ１回目フラグ
[eval exp="f.nursing_riko = 5"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;--莉子お見舞いイベント⑤　フェラ１回目-------------------------------------------------
[if exp="f.nursing_riko == 5"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_7_1.webm" skip="true"]
[movie storage="mov_08_7_2.webm" skip="true"]
[movie storage="mov_08_7_3.webm" skip="true"]
[movie storage="mov_08_7_4.webm" skip="true"]
[bgloop mov="mov_08_7_5.webm" ]
[movie storage="mov_08_7_6.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
因为莉子的照顾，所以打起精神来了……是吗？[p]

;お見舞いフェラ１回目フラグ
[eval exp="f.nursing_riko = 6"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;--莉子お見舞いイベント⑥　フェラ２回目以降-------------------------------------------------
[if exp="f.nursing_riko == 6"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_7_1.webm" skip="true"]
[bgloop mov="mov_08_7_5.webm" ]
[movie storage="mov_08_7_6.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
因为莉子的照顾，所以打起精神来了……是吗？[p]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;-莉菜ちゃん愛情度判定------------------------------------------------------------------------------------------------------
*rina_nursing2

;--莉菜お見舞いイベント①　胸見せ-------------------------------------------------

[if exp="f.nursing_rina == undefined"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
[bg storage ="nursing/img09_04.png" time="1000"]
#莉菜
[playse storage="rina/rn09_008.ogg" buf="0"]
感冒怎么样了？哥哥[r]
我很担心你[p]
#
没事的莉菜[r]
只要保持静养，很快就会好起来的[p]
不过，我有办法更快的恢复精神……[p]
#莉菜
[playse storage="rina/rn09_009.ogg" buf="0"]
是什么方法？[p]
#
那是啊……[p]
是莉菜的胸部啊[r]
只要看到莉菜的胸部马上就会好起来的[p]
[bg storage ="nursing/img09_05.png" time="500"]
#莉菜
[playse storage="rina/rn09_010.ogg" buf="0"]
诶！[r]
……真是的……哥哥是色鬼……[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[stopse buf="0"]
[freeimage layer="base" time="500"]

[movie storage="mov_09_4_1.webm" skip="true" time="500"]
[movie storage="mov_09_4_2.webm" skip="true"]
[movie storage="mov_09_4_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
多亏了莉菜的胸部，打起精神来了！！[p]

;お見舞い胸見せフラグ
[eval exp="f.nursing_rina = 2"]

[return]
[endif]

;--莉菜お見舞いイベント②　下見せ-------------------------------------------------

[if exp="f.nursing_rina == 2"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
[bg storage ="nursing/img09_06.png" time="1000"]
#莉菜
[playse storage="rina/rn09_012.ogg" buf="0"]
哥哥，请不要太勉强哦[r]
身体状况怎么样？[p]
#
嗯……没什么精神了[p]
#莉菜
[playse storage="rina/rn09_013.ogg" buf="0"]
要给您拿药来吗？[p]
#
不……我知道怎么能恢复精神[p]
如果那里精神好了，心也会好起来的！[p]
为了让那里变得健康莉菜，拜托了！[r]
让我看看莉菜的重要之处[p]
[bg storage ="nursing/img09_07.png" time="500"]
#莉菜
[playse storage="rina/rn09_014.ogg" buf="0"]
什！……为什么会变成这样啊[p]
#
只要看到莉菜那里我就能恢复精神，一发感冒就好了[r]
莉菜，拜托了！[p]
#莉菜
[playse storage="rina/rn09_015.ogg" buf="0"]
真是的~，哥哥你一直想着这种事[r]
下，下不为例哦……[p]
#
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[stopse buf="0"]
[freeimage layer="base" time="500"]

[movie storage="mov_09_5_1.webm" skip="true" time="500"]
[movie storage="mov_09_5_2.webm" skip="true"]
[menuwindows]
[bg storage ="nursing/img09_03.png" time="500"]

谢谢你莉菜[r]
想快点打起精神，插入莉菜的体内！[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[movie storage="mov_09_5_3.webm" skip="true" time="500"]


@bg storage ="room_evening.png" time=1000
[menuwindows]
#
看了莉子的那里，我很满足[p]

;お見舞い下見せフラグ
[eval exp="f.nursing_rina = 3"]

[return]
[endif]

;--莉菜お見舞いイベント③　手コキ-------------------------------------------------

[if exp="f.nursing_rina == 3"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]

[bg storage ="nursing/img09_08.png" time="1000"]
#莉菜
[playse storage="rina/rn09_017.ogg" buf="0"]
哥哥，感冒的时候最好多睡一觉[p]
#
不……莉菜，我也想睡一觉……[r]
有一件糟糕的事[p]
#莉菜
[playse storage="rina/rn09_018.ogg" buf="0"]
什么事？[p]
#
看！这个，[r]
这里这么有精神我根本睡不着[p]
[bg storage ="nursing/img09_09.png" time="1000"]
#莉菜
[playse storage="rina/rn09_019.ogg" buf="0"]
哥哥怎么连感冒的时候也这样[p]
#
莉菜啊！求你了用手就行了，好吧！[p]
#莉菜
[playse storage="rina/rn09_020.ogg" buf="0"]
真拿你没办法啊……[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[freeimage layer="base" time="500"]
[playse storage="se/tekoki_oso.ogg" buf="3" loop="true"]
[bgloop mov="mov_09_6_1.webm"]
[stopse buf="3"]
[movie storage="mov_09_6_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
多亏了莉菜精神恢复了……吗？[p]

;お見舞いテコキフラグ
[eval exp="f.nursing_rina = 4"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;--莉菜お見舞いイベント④　フェラ-------------------------------------------------

[if exp="f.nursing_rina == 4"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]

[bg storage ="nursing/img09_10.png" time="1000"]
#莉菜
[playse storage="rina/rn09_023.ogg" buf="0"]
哥哥，你又身体不适了吗？[r]
话说你是真的身体不适吗？[p]
#
是啊，莉菜我想多休息一下早点治好[r]
这家伙是不会听我说的[p]
求你了！莉菜酱[r]
你能用嘴把这家伙镇住吗？[p]
[bg storage ="nursing/img09_11.png" time="1000"]
#莉菜
[playse storage="rina/rn09_024.ogg" buf="0"]
真是的，哥哥总是这样！[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[stopse buf="0"]
[freeimage layer="base" time="500"]
;[playse storage="rina/rn09_025.ogg" buf="0" loop="true"]
[bgloop mov="mov_09_7_1.webm" ]
[stopse buf="0"]
[movie storage="mov_09_7_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
多亏了莉菜才有精神……吗?[p]

;お見舞いフェラフラグ
[eval exp="f.nursing_rina = 4"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;-静江さん愛情度判定------------------------------------------------------------------------------------------------------
*sizue_nursing2

;--静江お見舞いイベント①　キス-------------------------------------------------

[if exp="f.nursing_sizue == undefined"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]

[bg storage ="nursing/img10_03.png" time="1000"]
#静江
[playse storage="sizue/sz10_005.ogg" buf="0"]
你没事吧[r]
给你健康的咒语[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[playse storage="sizue/sz10_006.ogg" buf="0" loop="true"]
[movie storage="mov_10_3_1.webm" skip="true"]
[stopse buf="0"]
@bg storage ="room_evening.png" time=1000
[menuwindows]
#
静江小姐的吻让我精神十足！[p]

;お見舞いキスフラグ
[eval exp="f.nursing_sizue = 2"]

[return]
[endif]

;--静江お見舞いイベント②　胸-------------------------------------------------

[if exp="f.nursing_sizue == 2"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]

[bg storage ="nursing/img10_04.png" time="1000"]
#静江
[playse storage="sizue/sz10_007.ogg" buf="0"]
哎呀哎呀，你还好吗？[r]
这样就好起了吗？[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[bgloop mov="mov_10_4_1.webm" ]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
静江小姐的胸部太棒了！[p]

;お見舞い胸みせフラグ
[eval exp="f.nursing_sizue = 3"]

[return]
[endif]

;--静江お見舞いイベント③　あそこ-------------------------------------------------

[if exp="f.nursing_sizue == 3"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]

[bg storage ="nursing/img10_05.png" time="1000"]
#静江
[playse storage="sizue/sz10_009.ogg" buf="0"]
可怜的……哥哥，好像很痛苦啊[r]
但是这样阿姨也很痛苦呢[p]
[playse storage="sizue/sz10_009_1.ogg" buf="0"]
来吧，看[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[playse storage="sizue/sz10_010.ogg" buf="0"]
[movie storage="mov_10_5_1.webm" skip="true"]
[bgloop mov="mov_10_5_2.webm" ]


@bg storage ="room_evening.png" time=1000
[menuwindows]
#
多亏了静江小姐，某个地方恢复了精神[p]

;お見舞いあそこフラグ
[eval exp="f.nursing_sizue = 4"]

[return]
[endif]

;--静江お見舞いイベント④　フェラ-------------------------------------------------

[if exp="f.nursing_sizue == 4"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
看来因为太累而晕倒了[p]
?[p]
静江小姐！[p]

[bg storage ="nursing/img10_06.png" time="1000"]
#静江
[playse storage="sizue/sz10_017.ogg" buf="0"]
要让你振作起来，这是最好的办法[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[bgloop mov="mov_10_6_1.webm" ]
[movie storage="mov_10_6_3.webm" skip="true"]


@bg storage ="room_evening.png" time=1000
[menuwindows]
#
多亏了静江小姐，身体好起来了……吗？[p]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;お見舞いあそこフラグ
[eval exp="f.nursing_sizue = 4"]

[return]
[endif]

