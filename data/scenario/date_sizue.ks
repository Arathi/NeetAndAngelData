;***********************************************************************************************************************
;-静江さんデート
;静江さんデートエッチ数値
;カラオケ １回目　60　　２回目　75
;遊園地   １回目　65　　２回目　80
;お祭り   １回目　70　　３回目　85
;カフェ   １回目  90
;居酒屋   １回目  90


*start
;樱子消去
#
[chara_hide name="sakurako"]
;***********************************************************************************************************************
;-ナース服判別
[if exp="tf.date_select == 8"]
[jump target="*na_su"]
[endif]
;***********************************************************************************************************************
;-バイブ判別
[if exp="tf.date_select == 9"]
[jump target="*vibrator"]
[endif]
;***********************************************************************************************************************
;-好感度80以下で断られた
[if exp="f.sizue_f < 80"]
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz49_006.ogg" buf="0"]
对不起。[r]
我今天就要出门了[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz49_007.ogg" buf="0"]
不要和阿姨开玩笑哦[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz49_008.ogg" buf="0"]
嘿嘿，下次吧[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz49_009.ogg" buf="0"]
阿姨今天宿醉了……对不起[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz49_010.ogg" buf="0"]
阿姨我，今天有事[p]
[endif]

#
被拒绝了[p]
接下来干嘛呢？
[jump storage="main.ks" target="*choice2"]
[endif]

;***********************************************************************************************************************
;-デートOK

;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz49_001.ogg" buf="0"]
可以哦，哥哥[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz49_002.ogg" buf="0"]
和阿姨约会什么的，这样好吗？[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz49_003.ogg" buf="0"]
哥哥是在邀请我吗[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz49_004.ogg" buf="0"]
哎呀，你看起来很开心啊[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz49_005.ogg" buf="0"]
嘿嘿，是邀请我约会吗？[p]
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
;■遊園地
[if exp="tf.date_select == 6"]
[jump target="*amusement"]
[endif]
;■お祭り
[if exp="tf.date_select == 7"]
[jump target="*maturi"]
[endif]
;■居酒屋
[if exp="tf.date_select == 11"]
[jump target="*pub"]
[endif]
;***********************************************************************************************************************
;-公園デート
*park
#
[bg storage="park_day.png" time="1000"]
[playbgm storage="haretahiha.ogg" loop="true"]
来到了公园！[p]

[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_51_2.webm"]

;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz51_001.ogg" buf="0"]
好了，我要去寻口袋妖怪了！[p]
#
天气这么热，静江还这么有精神[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz51_002.ogg" buf="0"]
每天都好热啊~[p]
#
我的喉咙很干啊。[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz51_004.ogg" buf="0"]
好了好了，哥哥，我们走吧~[p]
#
体力已经到极限了[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz51_005.ogg" buf="0"]
快到抓捕的时间了！[p]
#
一切都准备好了[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz51_006.ogg" buf="0"]
我会争取小精灵蛋的距离的！[r]
哥哥，围着公园走一圈吧！[p]
#
又要走吗！[p]
[endif]

;公園帰宅
;静江ちゃん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutbgm]
[stopse]

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
[bgmovie storage="mov_54_1.webm"]

;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz54_001.ogg" buf="0"]
要加牛奶吗？[p]
#
是，请多加一点。[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz54_002.ogg" buf="0"]
这样看来咖啡是黑色的哦![p]
#
糖和牛奶是必需的[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz54_003.ogg" buf="0"]
这个蛋糕很好吃[p]
#
真是美味啊[p]
[endif]
;***********************************************************************************************************************
;ロータープレイ
[if exp="f.item[6] == true && f.sizue_h >= 90"]
怎么办？
[glink  color="pink" size="20"  x="950"  width="150"  y="300"  text="使用跳蛋"  target="*rotor_play"]
[glink  color="pink" size="20"  x="950"  width="150"  y="400"  text="不用"  target="*cafe_return"]
[s]
[else]
[jump target="*cafe_return"]
[endif]
*rotor_play
[eval exp="tf.rotor = 0"]
[stop_bgmovie time="1000"]
[fadeoutbgm]
#
按下跳蛋的开关！
[playse storage="sizue/sz54_004.ogg" buf="0" loop="true"]
[playse storage="se/rotor.ogg" buf="3" loop="true"]
[bgmovie storage="mov_54_2_2.webm" time="1000"]
[jump target="*rotor_play2"]
*rotor_play1
#
[if exp="tf.rotor < 0"]
[eval exp="tf.rotor = 0"]
[endif]
[if exp="tf.rotor > 3"]
[eval exp="tf.rotor = 3"]
[endif]
[stop_bgmovie time="2000"]
[if exp="tf.rotor == 0"]
[bgmovie storage="mov_54_2_2.webm" time="1000"]
[endif]
[if exp="tf.rotor == 1"]
[bgmovie storage="mov_54_3.webm" time="1000"]
[endif]
[if exp="tf.rotor == 2"]
[bgmovie storage="mov_54_6.webm" time="1000"]
[endif]
[if exp="tf.rotor == 3"]
[bgmovie storage="mov_54_4.webm" time="1000"]
[endif]
;セリフランダム--------------------------------------
*rotor_random
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == tf.rand_old"]
[jump target="*rotor_random"]
[endif]
[if exp="tf.rand == 0"]
[playse storage="se/rotor.ogg" buf="3" loop="true"]
#静江
[playse storage="sizue/sz54_005.ogg" buf="0"]
哥哥，不要！
[endif]
[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz54_006.ogg" buf="0"]
已经……哥哥！！
[endif]
[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz54_007.ogg" buf="0"]
哥哥…我就要…
[endif]
[eval exp="tf.rand_old = tf.rand"]
;---------------------------------------------------------
[wse]
[playse storage="sizue/sz54_004.ogg" buf="0" loop="true"]
*rotor_play2
[eval exp="tf.button_y = 300"]
[if exp="tf.rotor != 3"]
[glink  color="pink" size="20"  x="950"  width="150"  y="&tf.button_y"  text="加强"  target="*rotor_play1" exp="tf.rotor = tf.rotor + 1" ]
[eval exp="tf.button_y = tf.button_y + 100"]
[endif]
[if exp="tf.rotor != 0"]
[glink  color="pink" size="20"  x="950"  width="150"  y="&tf.button_y"  text="减弱"  target="*rotor_play1" exp="tf.rotor = tf.rotor - 1" ]
[eval exp="tf.button_y = tf.button_y + 100"]
[endif]
[glink  color="pink" size="20"  x="950"  width="150"  y="&tf.button_y"  text="结束"  target="*cafe_return"]
[s]
;***********************************************************************************************************************
*cafe_return
;カフェ帰宅
#
;静江さん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="cafe.png" time="500"]
[fadeoutbgm]
[stopse buf="0"]
[stopse buf="3"]
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
;-ゲーセンデート
*arcade
#
[bg storage="arcade.png" time="1000"]
[playbgm storage="dance.ogg" loop="true"]
来到了游戏中心[p]

[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_50_1.webm"]


;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz50_002.ogg" buf="0"]
猫太郎的玩偶！[r]
哥哥能拿到吗[p]
#
我会加油的[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz50_003.ogg" buf="0"]
要哥哥，去拍大头贴吧[p]
#
好啊！[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz50_006.ogg" buf="0"]
好厉害好厉害![p]
#
奇迹般地拿到了！[p]
[endif]

;ゲーセン帰宅
;静江さん好感度UP
[sizue_f]
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
;-カラオケデート
*karaoke
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[playbgm storage="ways.ogg" loop="true"]
;***********************************************************************************************************************
;静江ランダム会話

[bgmovie storage="mov_52_8.webm"]
#
来唱卡拉ok了[p]

;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 7)
[endscript]
[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz52_001.ogg" buf="0"]
阿姨，我不太知道最近流行的曲子[p]
#
我也只会唱动画歌曲[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz52_002.ogg" buf="0"]
哥哥要喝什么？ 阿姨是啤酒！[p]
#
咖啡牛奶加糖[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz52_003.ogg" buf="0"]
嗯……歌声真好听啊……[p]
#
太好了！被表扬了……[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz52_004.ogg" buf="0"]
将时间延长吧[p]
#
好啊[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz52_005.ogg" buf="0"]
嘿嘿，莉子喜欢的曲子？ 很棒哦[p]
#
不能说这是自己喜欢的曲子[p]
[endif]

[if exp="tf.rand == 5"]
#静江
[playse storage="sizue/sz52_006.ogg" buf="0"]
我们去吃披萨吧[p]
#
你吃太多了啦[p]
[endif]

[if exp="tf.rand == 6"]
#静江
[playse storage="sizue/sz52_007.ogg" buf="0"]
唱什么呢！[p]
#
静江小姐的歌，很期待[p]
[endif]
;***********************************************************************************************************************
;カラオケＨ判別
[if exp="f.sizue_h >= 60 && f.karaoke_sizue_h == undefined"]
[jump target="*karaoke_h1"]
[endif]
[if exp="f.sizue_h >= 75 && f.karaoke_sizue_h == 1"]
[jump target="*karaoke_h2"]
[endif]
;***********************************************************************************************************************
;カラオケ帰宅
;静江ちゃん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="karaoke.png" time="500"]
[fadeoutbgm]
[stopse]
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
[fadeoutbgm]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_52_5.webm" time="1000"]

[playse storage="sizue/sz52_008.ogg" buf="0"]
#静江
哎呀哎呀，哥哥[r]
变得这么大了[p]
#
哇，嘘！静江小姐……[p]
#静江
[playse storage="sizue/sz52_009.ogg" buf="0"]
哥哥，舒服吗？[r]
哥哥那很舒服的表情，好可爱[p]
#
静江小姐，不行啊！ 在这种地方[p]
#静江
[playse storage="sizue/sz52_010.ogg" buf="0"]
很舒服吧，哥哥，周围的人很吵[r]
发出声音没事的[p]
[playse storage="sizue/sz52_010_1.ogg" buf="0"]
阿姨让你舒服[p]
#
啊，啊，静江小姐……好舒服[p]
#静江
[playse storage="sizue/sz52_011.ogg" buf="0"]
哥哥，好可爱，舒服吗？[r]
什么时候都可以射出来哦，好好地射出来就好了哦！。[p]
#
啊，静江小姐！ 不行，射，射了！ 啊啊啊[p]
[stop_bgmovie]
[stopse buf="0"]
[movie storage="mov_52_6.webm" skip="true"]

[stop_bgmovie time="1000"]
[bg storage="karaoke.png" time="1000"]
;カラオケ帰宅
;静江ちゃん愛情UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;カラオケフラグ　１
[eval exp="f.karaoke_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

#
静江小姐用手帮我弄出来了，真舒服啊[p]
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
[fadeoutbgm]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[bgloop mov="mov_52_1.webm"  ti="1000"]
[movie storage="mov_52_2.webm" skip="true"]


;カラオケ帰宅
[bg storage="karaoke.png" time="1000"]
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;カラオケフラグ　2
;[eval exp="f.karaoke_sizue_h = 1"]
[iscript]
delete f.karaoke_sizue_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

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
;-遊園地
*amusement
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[playbgm storage="yuuenti.ogg" loop="true"]


;***********************************************************************************************************************
;遊園地Ｈ判別
[if exp="f.sizue_h >= 65 && f.amusement_sizue_h == undefined"]
[jump target="*amusement_h1"]
[endif]
[if exp="f.sizue_h >= 80 && f.amusement_sizue_h == 1"]
[jump target="*amusement_h2"]
[endif]
;***********************************************************************************************************************
;静江ランダム会話
;ランダム数値の取り出し
*rand
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[bgmovie storage="mov_53_7.webm"]
来到了游乐园[p]
#
我们玩什么呢……[p]
有了！[p]
帅气的护送[r]
因走进鬼屋而害怕的静江小姐吧[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_53_8.webm" time="1000"]
#静江
[playse storage="sizue/sz53_001.ogg" buf="0"]
哎呀哎呀！ 害怕吗？[r]
有阿姨在，没事的[p]
#
相反，我是被护送的那个[p]
[endif]

[if exp="tf.rand == 1"]
[bgmovie storage="mov_53_7.webm"]
来到了游乐园[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_53_10.webm" time="1000"]
#静江
[playse storage="sizue/sz53_002.ogg" buf="0"]
哥哥，我们再坐一次吧！[p]
#
是！我会努力的[p]
[endif]

[if exp="tf.rand == 2"]
[bgmovie storage="mov_53_7.webm"]
来到了游乐园[p]
;恋人状態以外はやり直し
[if exp="f.sizue_lover  != 2"]
[jump target="*rand"]
[endif]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_53_9.webm" time="1000"]
#静江
[playse storage="sizue/sz53_006.ogg" buf="0"]
牵手吗，有点害羞啊！[p]
#
好了，自然的牵着手吧[p]
[endif]

[if exp="tf.rand == 3"]
[bgmovie storage="mov_53_7.webm"]
来到了游乐园[p]
#静江
[playse storage="sizue/sz53_003.ogg" buf="0"]
在这里当然也要抓宝可梦！[p]
[endif]

;遊園地帰宅
;静江ちゃん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="amusement.png" time="500"]
[fadeoutbgm]
[stopse]
#
和静江小姐在游乐场玩得很尽兴[p]
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
[bg storage="amusement.png" time="500"]
来到了游乐园[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]
[bg storage="black.png" time="1000"]


[bgmovie storage="mov_53_1.webm" time="1000"]
#静江
[playse storage="sizue/sz53_007.ogg" buf="0"]
哥哥，你很喜欢阿姨的胸部啊！[r]
阿姨用奶子让你舒服起来[p]
#
我喜欢胸部！ 我最喜欢静江小姐的胸部了[p]
#静江
[playse storage="sizue/sz53_008.ogg" buf="0"]
肉棒被胸部夹在中间一跳一跳的呢！？[r]
怎么样？ 胸部舒服吗？[p]
#
静江小姐！ 好棒！ 静江小姐的胸部，好舒服[p]
#静江
[playse storage="sizue/sz53_009.ogg" buf="0"]
哥哥，你舒服起来了！[r]
爽吗？　胸部，舒服吗？[p]
[playse storage="sizue/sz53_009_1.ogg" buf="0"]
嘿嘿，可以哦[r]
再一次从肉棒里biubiu~的射就好！[p]
#
静江小姐！ 啊啊啊啊啊啊[p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_53_2.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="1000"]
;静江ちゃん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
[eval exp="f.amusement_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
静江的胸部真大啊！[p]
很舒服，十分满足[p]
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

[bg storage="amusement.png" time="500"]
来到了游乐园[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]
[bg storage="black.png" time="1000"]

[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgmovie storage="mov_53_3.webm" time="1000"]
#静江
[playse storage="sizue/sz53_012.ogg" buf="0"]
啊，啊，哥哥，阿姨的小穴，舒服吗？[r]
你可以随心所欲地放进去哦……嗯，哈，哈……[p]
#
静江小姐，很舒服，静江小姐里面非常舒服！[p]
#静江
[playse storage="sizue/sz53_013.ogg" buf="0"]
嗯，啊，哥哥，一脸舒服的表情……啊，好可爱啊[r]
啊啊，阿姨的小穴，变得特别舒服起来了……。嗯，哈，哈[p]
#
[playse storage="sizue/sz53_014.ogg" buf="0" loop="true"]
静江小姐！ 啊，哈，哈[p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_53_4.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="1000"]
;静江ちゃん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
;[eval exp="f.amusement_sizue_h = 1"]
[iscript]
delete f.amusement_sizue_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
和静江小姐一起在游乐园玩得很尽兴[r]
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
[bgmovie storage="mov_55_8.webm"]
[playbgm storage="sitamati.ogg" loop="true"]
来参加了祭会[p]
;***********************************************************************************************************************
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz55_001.ogg" buf="0"]
看到阿姨穿浴衣很高兴吗？[p]
#
静江小姐很适合你哦[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz55_002.ogg" buf="0"]
我不能吃太多，我正在减肥。[p]
#
感觉已经吃得够多了[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz55_003.ogg" buf="0"]
吃刨冰吗？[p]
#
好啊[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz55_004.ogg" buf="0"]
诶？ 喝什么？当然是啤酒[p]
#
我就知道是这样[p]
[endif]
;***********************************************************************************************************************
;お祭りＨ判別
[if exp="f.sizue_h >= 70 && f.maturi_sizue_h == undefined"]
[jump target="*maturi_h1"]
[endif]
[if exp="f.sizue_h >= 85 && f.maturi_sizue_h == 1"]
[jump target="*maturi_h2"]
[endif]
;***********************************************************************************************************************
;お祭り帰宅
;静江さん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="maturi.png" time="500"]
[fadeoutbgm]
[stopse]
#
和静江小姐一起在祭会上玩得很尽兴[p]
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
[bgmovie storage="mov_55_9.webm" time="1000"]

#静江
[playse storage="sizue/sz55_005.ogg" buf="0"]
带我到这样一个没有人的地方[r]
怎么办？哥哥 [p]
#
这……这个嘛……[p]
#静江
[playse storage="sizue/sz55_006.ogg" buf="0"]
嘿嘿，过来，哥哥！ 阿姨让你舒服[p]
#
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[stopse buf="0"]
[bgloop mov="mov_55_1.webm"  ti="1000"]
[movie storage="mov_55_2.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
[eval exp="f.maturi_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
和静江小姐一起在祭会上玩得很开心[r]
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
[bgmovie storage="mov_55_9.webm" time="1000"]

#静江
[playse storage="sizue/sz55_009.ogg" buf="0"]
又把阿姨带到了没什么人的地方[r]
要做什么呢？[p]
#
那……那个……[p]
#静江
[playse storage="sizue/sz55_010.ogg" buf="0"]
可以哟，哥哥，哥哥想做什么就做的[p]

[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[stopse buf="0"]
[playse storage="sizue/sz55_011.ogg" buf="0"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_55_3.webm"  ti="1000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_55_4.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;静江ちゃん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
;[eval exp="f.maturi_sizue_h = 1"]
[iscript]
delete f.maturi_sizue_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
和静江小姐一起在祭会上玩得很开心[r]
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
;-ナース服
*na_su

;エッチ度判定
[if exp="f.sizue_h < 70"]
#
果然还是不行啊……[p]
接下来干嘛呢？
[jump storage="main.ks" target="*choice2"]
[endif]
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_67_10.webm"]
#静江
[playse storage="sizue/sz67_009.ogg"]
哥哥，想让我穿这个吗？[p]
#
是，是的……请务必穿上[p]
#静江
[playse storage="sizue/sz67_010.ogg"]
嘿嘿，护士服吗，是个色鬼！好吧！穿给你看好了[p]
#静江
[playse storage="sizue/sz67_011.ogg"]
哥哥，不用转过身去的啦～[p]
[stop_bgmovie]
[bgmovie storage="mov_67_11.webm"]
#静江
[playse storage="sizue/sz67_012.ogg"]
哥哥，我换好了！怎么样？[p]
#
静江小姐，太糟糕了！总之摆一个pose！[p]
#静江
[playse storage="sizue/sz67_013.ogg"]
是这样吗！[p]
#
再来一个这样的姿势！[p]
#静江
[playse storage="sizue/sz67_014.ogg"]
嘿嘿！这样？[p]
#
是啊，静江小姐……好色情！[p]
#静江
[playse storage="sizue/sz67_015.ogg"]
真是的！哥哥！哥哥喜欢的是胸部对吧！[p]
[stop_bgmovie]
[bgmovie storage="mov_67_12.webm"]
#静江
[playse storage="sizue/sz67_016.ogg"]
医生！我的胸部，肿胀得很厉害！请帮我看看！[p]
#
确实……肿胀得很大啊！[p]
#静江
[playse storage="sizue/sz67_017.ogg"]
快来！多仔细看看，医生！我心脏跳得非常厉害！[p]
#静江
[playse storage="sizue/sz67_018.ogg"]
医生，请帮我触诊！请仔细检查胸部的每一个角落！[p]
#静江
[playse storage="sizue/sz67_019.ogg"]
医生！ 注射器准备好了吗？ 我已经准备好了！
#静江
[playse storage="sizue/sz67_020.ogg"]
哎呀哎呀，这么大的注射器！得好好消毒才行！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="sizue/sz67_021.ogg" loop="true"]
[bgloop mov="mov_67_13.webm"  ti="2000"]
[stop_bgmovie]
[stopse buf="0"]
[bgmovie storage="mov_67_15.webm"]
[menuwindows]
#静江
[playse storage="sizue/sz67_022.ogg"]
医生……快点……快给我注射……你看！这么大的注射器……[r]
否则，就要忍不住了……医生……快注射进来！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="sizue/sz67_025.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_67_16.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_67_17.webm" skip="true"]

;帰宅
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;ナース服フラグ　１
[eval exp="f.na_su_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
穿着护士服做，太令人兴奋了[p]
#
回到了房间[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-バイブ
*vibrator

;エッチ度判定
[if exp="f.sizue_h < 80"]
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

[bgloop mov="mov_86_1.webm"  ti="2000"]
[movie storage="mov_86_3.webm" skip="true"]
[bgloop mov="mov_86_4.webm"  ti="2000"]

;帰宅
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;バイブフラグ　１
[eval exp="f.vibrator_sizue_h = 1"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
静江看起来很爽[p]
#
回到了房间[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-居酒屋
*pub
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_56_1.webm"]
[playbgm storage="roujintoneko.ogg" loop="true"]
来到了小酒馆[p]
;***********************************************************************************************************************
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 2)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz56_002.ogg" buf="0"]
嘿嘿，阿姨要是喝醉了你会怎么办？[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz56_005.ogg" buf="0"]
阿姨我，有点喝醉了[p]
[endif]

;***********************************************************************************************************************
;居酒屋Ｈ判別
[if exp="f.sizue_h >= 90 && f.hotel_sizue_h == undefined && f.money >= 10000"]
[jump target="*hotel_h1"]
[endif]
;***********************************************************************************************************************
;居酒屋帰宅
;静江さん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="black.png" time="1000"]
[fadeoutbgm]
[stopse]
#
喝得很尽兴啊…[p]
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
;ホテルH1
*hotel_h1
[stopse]
[fadeoutbgm]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[movie storage="mov_56_2.webm" skip="true"]
[bg storage="pub/img_56_12.png"]
[menuwindows]
#
静江小姐，你喝太多了！[p]
而且时间已经很晚了[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_56_3.webm" skip="true"]
[menuwindows]
#
不不不，不是那样的！[p]
我还想和你在一起[p]
[cm]
[clearfix]
[bg storage="black.png" time="1000"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_56_4.webm" skip="true"]
[bg storage="hotel/hotel.png" time="2000"]
[menuwindows]
来到了旅店[p]
[bg storage="black.png" time="1000"]
[cm]
[clearfix]
[bg storage="black.png" time="1000"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_56_5.webm" skip="true"]
[bgloop mov="mov_56_7.webm"  ti="2000"]
[playse storage="sizue/sz70_016.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_56_9.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[bgloop mov="mov_56_13.webm"  ti="2000"]
[movie storage="mov_56_10.webm" skip="true" ti="200"]
[playse storage="sizue/sz55_012_1.ogg" buf="0" loop="true"]
[bgloop mov="mov_56_11.webm"  ti="2000"]
;***********************************************************************************************************************
;ホテル帰宅
[stopse]
[bg storage="hotel/hotel.png" time="2000"]
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;ホテルフラグ　１
;[eval exp="f.maturi_sizue_h = 1"]
;[iscript]
;delete f.hoteru_sizue_h;
;[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
和静江在旅店做爱就像做梦一样[p]
在小酒馆和旅店花了10000日元[p]
[eval exp="f.money = f.money - 10000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
回到家了[r]
[jump storage="main.ks" target="*night"]

