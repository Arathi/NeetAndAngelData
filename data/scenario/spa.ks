;温泉旅行
*start
[bg storage="black.png" time="1000"]
#
在电车上摇晃了大概2个小时[p]
对于我这个家里蹲来说，这趟长途旅行太辛苦了…[p]
[fadeinse storage="se/cicada.ogg" buf="2" loop="true" time="2000"]
从车站出发走了不远[r]
就看到了温泉旅馆！[p]

[bg storage="spa/japanese_hotel.png" time="1000"]
真想快点进入混浴池啊～[p]
好期待啊～[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[movie storage="mov_38_1.webm" skip="true" ]
[menuwindows]
[bg storage="spa/img_38_2_1.png" time="1000"]
有猫！[p]
对人的存在已经习惯了[r]
是这个旅馆看板猫吗[p]
[bg storage="spa/img_38_2_2.png" time="1000"]
不，樱子…[p]
在战斗着吗…[p]
叫喊这必杀技，但对手没有理她[p]
[bg storage="spa/img_38_2_4.png" time="1000"]
静江小姐一如既往的痴迷于口袋妖怪[p]
这里有区域独有的非常稀有的小精灵[p]
[bg storage="spa/img_38_2_3.png" time="1000"]
哦哦！这是？[p]
这不是绝好走光的机会吗！[p]
猫的魅力真是名不虚传！[p]
没想到会这么没有防备！[p]
再稍微靠近一点好好享受这一刻吧[p]
[bg storage="spa/img_38_2_6.png" time="1000"]
莉子酱痴迷于小猫[p]
[bg storage="spa/img_38_2_5.png" time="1000"]
莉菜也奉献了绝好的走光！[p]
[bg storage="black.png" time="1000"]
一边与猫一起玩一边走向进房间[p]
[fadeoutse time="2000" buf="2"]
[bg storage="spa/hotel_room.png" time="1000"]
这房间真不错啊！[p]
[bgmovie storage="mov_38_4.webm"]
#莉子
[playse storage="riko/rk38_001.ogg" buf="0"]
房间好～大！[p]
#
换上浴衣的莉子正在玩闹！[p]
[bg storage="spa/img_38_10_8.png" time="0"]
[stop_bgmovie time="1000"]
#莉菜
[playse storage="rina/rn48_008.ogg" buf="0"]
茶放这里了哦[p]
#
谢谢莉菜酱[p]
[bg storage="spa/img_38_10_9.png" time="1000"]
#静江
[playse storage="sizue/sz57_005.ogg" buf="0"]
先来喝一罐啤酒！[p]
静江小姐现在还太早了![p]
#
[bg storage="black.png" time="1000"]
[bg storage="spa/spa01.png" time="1000"]
#
然后就是期待已久的温泉了[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[movie storage="mov_38_5.webm" skip="true" ]
[movie storage="mov_57_2.webm" skip="true" ]
[movie storage="mov_48_11.webm" skip="true" ]
[menuwindows]
[bg storage="spa/spa01.png" time="1000"]
#
怎么会～…[p]
混浴竟然不能进…[p]
[chara_show name="sakurako" face="niya" left=100 ]
…一起，进温泉吗？[p]
[chara_mod  name="sakurako" face="okori02" ]
#樱子
[playse storage="sakurako/sa80_089.ogg" buf="0"]
谁要去啊！你这大变态[r]
我要和大家一起去女浴池！[p]
;樱子消去
#
[chara_hide name="sakurako"]
[stopse]
一个人寂寞的进去吗…[p]
[fadeinbgm storage="bass.ogg" time="2000" loop="true"]
[bg storage="spa/spa02.png" time="1000"]
嗯嗯[p]
这浴池真是不错啊[p]
这面墙的另一面就是女浴池吧…[p]
也许这正是发挥特殊能力——妄想的时候了[p]
来吧～[p]
;エッチ度70以上で選択肢出現
[if exp="f.riko_h >= 70"]
[glink  color="pink" size="20"  x="700"  width="400"  y="150"  text="妄想和莉子"  target="*spa_riko"]
[endif]
[if exp="f.rina_h >= 70"]
[glink  color="pink" size="20"  x="700"  width="400"  y="250"  text="妄想和莉菜"  target="*spa_rina"]
[endif]
[if exp="f.sizue_h >= 70"]
[glink  color="pink" size="20"  x="700"  width="400"  y="350"  text="妄想和静江"  target="*spa_sizue"]
[endif]
[s]
;***********************************************************************************************************************
;莉子ちゃん女湯
*spa_riko
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_1.png" time="4000"]
……[p]
看到了！看到女浴池了！[p]
看到莉子了！[p]
啊…啊…[p]
还不够！还要进步一解放妄想力！[p]
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_2.png" time="4000"]
[eval exp="tf.choice = 1"]
[jump target="*spa_night"]
;***********************************************************************************************************************
;莉菜ちゃん女湯
*spa_rina
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_4.png" time="4000"]
……[p]
看到了！看到女浴池了！[p]
看到莉菜了！[p]
啊…啊…[p]
还不够！还要进步一解放妄想力！[p]
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_5.png" time="4000"]
[eval exp="tf.choice = 2"]
[jump target="*spa_night"]
;***********************************************************************************************************************
;静江さん女湯
*spa_sizue
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_6.png" time="4000"]
……[p]
看到了！看到女浴池了！[p]
看到静江小姐了！[p]
啊…啊…[p]
还不够！还要进步一解放妄想力！[p]
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_7.png" time="4000"]
[eval exp="tf.choice = 3"]
[jump target="*spa_night"]
;***********************************************************************************************************************
;温泉夜
*spa_night
啊……啊…[p]
我这美妙的妄想力啊[p]
…[p]
[stopse buf="2"]
要泡到什么时候呢，感觉有点上火了[p]
差不多该上去了[p]
[fadeoutbgm time="1000"]
[bg storage="black.png" time="1000"]
真是一个愉快的夜晚啊[p]
[stopse buf="0"]
[stopse buf="2"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[if exp="tf.choice == 1"]
[movie storage="mov_38_12.webm" skip="true" ]
[endif]
[if exp="tf.choice == 2"]
[movie storage="mov_48_12.webm" skip="true" ]
[endif]
[if exp="tf.choice == 3"]
[movie storage="mov_57_3.webm" skip="true" ]
[endif]
[bg storage="spa/hoter_room2.png" time="1000"]
[menuwindows]
……[p]
在屋檐下被赶走了[p]
好吧…没办法了[p]
睡觉吧[p]
[bg storage="black.png" time="2000"]
[if exp="tf.choice == 1"]
[jump target="*spa_riko_h"]
[endif]
[if exp="tf.choice == 2"]
[jump target="*spa_rina_h"]
[endif]
[if exp="tf.choice == 3"]
[jump target="*spa_sizue_h"]
[endif]
;***********************************************************************************************************************
;莉子ちゃん女湯
*spa_riko_h
[bgmovie storage="mov_38_13.webm" time="2000"]
#
嗯……嗯嗯……嗯？　莉子酱！[p]
#莉子
[playse storage="riko/rk38_008.ogg" buf="0"]
怎么，不要自作主张的就睡了！　走，要去包租的浴池咯！[p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_38_15.webm" skip="true" ]
[movie storage="mov_38_16.webm" skip="true" ]
[fadeinbgm storage="bass.ogg" time="2000" loop="true"]
[menuwindows]
[bgmovie storage="mov_38_17.webm" time="2000"]
#
和莉子一起进入温泉！[p]
怀着感激，必须洗得干干净净才行[p]
莉子大小姐，召唤仆从来把身体洗干净[p]
#莉子
[playse storage="riko/rk38_009.ogg" buf="0"]
要好好地，洗干净哦！[p]
#
[stopse]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_38_19.webm" skip="true" ]
[menuwindows]
#莉子
[playse storage="riko/rk38_011.ogg" buf="0"]
喂，喂喂！　这里是！[p]
[fadeinbgm storage="bass2.ogg" time="2000" loop="true"]
[bgmovie storage="mov_38_20.webm" time="2000"]
#
莉子大小姐，这里也请让我仔细洗干净[p]
#
这么黏糊糊的很脏啊！　[r]
作为仆从就应该从外到内把活干得漂漂亮亮的[p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_38_21.webm" skip="true" ]
[playse storage="riko/rk38_013.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_38_22.webm"  ti="2000"]
[playse storage="riko/rk38_014.ogg" buf="0" loop="true"]
[bgloop mov="mov_38_23.webm"  ti="2000"]
[playse storage="riko/rk38_015.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop="true"]
[bgloop mov="mov_38_24.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_38_25.webm" skip="true"]
[playse storage="riko/rk36_021.ogg" buf="0" loop="true"]
[bgloop mov="mov_38_26.webm"  ti="2000"]
[stopse buf="0"]
[movie storage="mov_38_27.webm" skip="true ]
[bg storage="black.png" time = 500]
[stop_bgmovie]
;温泉帰りフラグ
[eval exp="f.spa = 4"]
;莉子ちゃん温泉エッチフラグ
[eval exp="f.spa_riko_h = 1"]
;莉子ちゃん愛情UP
[riko_i]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[return]
;***********************************************************************************************************************
;莉菜ちゃん女湯
*spa_rina_h
[bgmovie storage="mov_48_13.webm" time="2000"]
#
嗯，嗯嗯……哎呀，莉菜酱！[p]
#莉菜
[playse storage="rina/rn48_011.ogg" buf="0"]
哥哥……抱歉，还醒着吗？　我睡不着……[p]
#
莉菜能来我这里，我很高兴[r]
对了，我们去包租的浴池吧[p]
#莉菜
[playse storage="rina/rn48_012.ogg" buf="0"]
诶，好……好啊[p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_48_15.webm" skip="true" ]
[movie storage="mov_48_16.webm" skip="true" ]
[movie storage="mov_48_17.webm" skip="true" ]
[fadeinbgm storage="bass2.ogg" time="2000" loop="true"]
[menuwindows]
[bgmovie storage="mov_48_18.webm" time="2000"]
#
和莉菜一起进入温泉！[p]
怀着感激，必须洗得干干净净才行[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_48_19.webm" time="2000"]
#莉菜
[playse storage="rina/rn48_013.ogg" buf="0"]
啊嗯……哥哥……这么摸的话……不行……[p]
[playse storage="rina/rn48_014.ogg" buf="0" loop="true"]
#
毕竟莉菜的胸部这么大，必须好好洗干净才行[p]
莉菜，乳头立起来了！　舒服吗？[p]
#莉菜
[playse storage="rina/rn48_015.ogg" buf="0"]
讨厌！　哥哥，请不要说奇怪的话！[p]
但是，莉菜，是因为舒服乳头才会立起来的吧[r]
不是吗？　不舒服吗？[p]
#莉菜
…………[p]
不舒服吗？　莉菜酱[p]
#莉菜
[playse storage="rina/rn48_017.ogg" buf="0"]
舒……舒服……[p]
那就，来让你更舒服吧[p]
#莉菜
[playse storage="rina/rn48_018.ogg" buf="0"]
啊，哥哥……那里……[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_48_20.webm" time="2000"]
这里也，帮你认认真真洗干净[p]
这么湿湿黏黏的，很舒服吗？　莉菜酱？[p]
#莉菜
[playse storage="rina/rn48_019.ogg" buf="0"]
……很舒服……[p]
#
哪里很舒服？　莉菜酱[p]
#莉菜
[playse storage="rina/rn48_020.ogg" buf="0"]
诶？[p]
#
莉菜，哪里很舒服，请莉菜用说话告诉我[p]
#莉菜
[playse storage="rina/rn48_021.ogg" buf="0"]
才，才不说呢……这种话……[p]
#
很舒服对吧？　莉菜酱[r]
不告诉我哪里舒服的话我就停下来咯[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_48_21.webm" time="2000"]
#莉菜
[playse storage="rina/rn48_022.ogg" buf="0"]
嗯……哥哥……欺负人……[p]
#
我想亲自从莉菜的口中听到[r]
哪里很舒服！　说吧，莉菜酱[p]
#莉菜
[playse storage="rina/rn48_023.ogg" buf="0"]
……小，小穴里面……[p]
#
我听不见，莉菜酱[p]
#莉菜
[playse storage="rina/rn48_024.ogg" buf="0"]
小穴里面，很舒服……[p]
#
说出口了啊，不过莉菜的小穴[r]
想要更加舒服！　从刚才开始就一直在说插进来，插进来！[p]
#莉菜
[playse storage="rina/rn48_025.ogg" buf="0"]
没……没有说……[p]
#
诶～！　说了哦，莉菜的小穴！[r]
你看！　插进来，插进来！　这么在说哦[p]
#莉菜
…………[p]
#
想要什么插进来呢？　莉菜，告诉我？[p]
#莉菜
[playse storage="rina/rn48_027.ogg" buf="0"]
不，不知道……[p]
#
但是，莉菜的小穴，就这样插进来 这样说了哦！[r]
来吧，莉菜酱，快说吧[p]
#莉菜
[playse storage="rina/rn48_028.ogg" buf="0"]
肉，肉棒……[p]
#
嗯？　肉棒怎么样？[p]
#莉菜
[playse storage="rina/rn48_029.ogg" buf="0"]
哥哥的肉棒，请……插进我的小穴中……[p]	
#
莉菜酱，真是个下流的孩子啊～　哥哥要给你很多惩罚才行啊！[p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="rina/rn48_031.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_48_23.webm"  ti="2000"]
[bgloop mov="mov_48_24.webm"  ti="2000"]
[playse storage="rina/rn48_032.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop="true"]
[bgloop mov="mov_48_25.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_48_26.webm" skip="true"]
[playse storage="rina/rn48_033.ogg" buf="0" loop="true"]
[bgloop mov="mov_48_27.webm"  ti="2000"]
[stopse buf="0"]
[movie storage="mov_48_28.webm" skip="true ]
[bg storage="black.png" time = 500]
[stop_bgmovie]
;温泉帰りフラグ
[eval exp="f.spa = 4"]
;莉菜ちゃん温泉エッチフラグ
[eval exp="f.spa_rina_h = 1"]
;莉菜ちゃん愛情UP
[rina_i]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[return]
;***********************************************************************************************************************
;静江さん女湯
*spa_sizue_h
[bgmovie storage="mov_57_4.webm" time="2000"]
#
嗯……啊……静，静江小姐！[p]
#静江
[playse storage="sizue/sz57_007.ogg" buf="0"]
喂喂！　哥哥，睡什么睡！[p]
#
好，好的，对不起！[p]
#静江
[playse storage="sizue/sz57_008.ogg" buf="0"]
夜才刚刚开始！　我们去包租的浴池吧！[p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_57_5.webm" skip="true" ]
[menuwindows]
[fadeinbgm storage="bass2.ogg" time="2000" loop="true"]
[bgmovie storage="mov_57_6.webm" time="2000"]
#
和静江小姐一起进浴池了[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_7.webm" time="2000"]

#静江
[playse storage="sizue/sz57_009.ogg" buf="0"]
哥哥的身体，阿姨来帮你洗干净！[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_8.webm" time="2000"]
#
静江小姐的胸部……好舒服啊[p]
#静江
[playse storage="sizue/sz57_010.ogg" buf="0"]
怎么样？哥哥，阿姨的胸部很舒服吧？[r]
哥哥很喜欢胸部呢，就用胸给你好好洗一洗吧[p]
#
静江小姐！　啊，唔唔唔！[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_9.webm" time="2000"]
#静江
[playse storage="sizue/sz57_012.ogg" buf="0"]
哥哥，舒服吗？[r]
哥哥的肉棒，正在一跳一跳的呢！[p]
#
太，太舒服了！　静江小姐……　[p]
#静江
[playse storage="sizue/sz57_013.ogg" buf="0"]
哥哥，好像很舒服呢！　嘿嘿，好可爱[r]
但是还不行哦！　还不能射哦！　在阿姨也舒服之前不～能～射！[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_10.webm" time="2000"]
#静江
[playse storage="sizue/sz57_014.ogg" buf="0"]
看吧看吧，哥哥！阿姨的小穴已经变成这样了！哥哥的肉棒[r]
还没插入就已经湿漉漉的了……哥哥，要插进来吗？[p]
#
请……请让我插进去[r]
请让我插进静江小姐的小穴里！[p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_57_11.webm" skip="true" ]

[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_57_12.webm"  ti="2000"]
[playse storage="sizue/sz57_016.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop="true"]
[bgloop mov="mov_57_14.webm"  ti="2000"]
[bgloop mov="mov_57_15.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_57_16.webm" skip="true"]
[playse storage="sizue/sz57_017_1.ogg" buf="0" loop="true"]
[bgloop mov="mov_57_17.webm"  ti="2000"]
[stopse buf="0"]
[movie storage="mov_57_18.webm" skip="true ]
[bg storage="black.png" time = 500]
[stop_bgmovie]

;温泉帰りフラグ
[eval exp="f.spa = 4"]
;静江さん温泉エッチフラグ
[eval exp="f.spa_sizue_h = 1"]
;静江さん愛情UP
[sizue_i]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[return]
