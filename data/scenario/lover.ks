;告白イベント
;好感度100で告白待ち状態 f.riko_lover = 1になります
;この状態で帰宅時に告白イベント開始
;イベント終了で恋人状態 f.riko_lover = 2になります

*start

[cm]
[clearfix]
;***********************************************************************************************************************
;誰とも恋人でない場合
[if exp="f.riko_lover == undefined && f.rina_lover == undefined && f.sizue_lover == undefined"]

 [if exp="f.riko_f >= 100"]
  [jump target="*riko_lover"]
 [endif]
 [if exp="f.rina_f >= 100"]
  [jump target="*rina_lover"]
 [endif]
 [if exp="f.sizue_f >= 100"]
  [jump target="*sizue_lover"]
 [endif]
 
[endif]

;***********************************************************************************************************************
;誰かと恋人の場合エンディング済みならフリーモード
[if exp="f.ending == 1"]

 ;■莉子
 [if exp="f.riko_lover == undefined "]
  [if exp="f.riko_f >= 100"]
   [jump target="*riko_lover"]
  [endif]
 [endif]
 ;■莉菜
 [if exp="f.rina_lover == undefined "]
  [if exp="f.rina_f >= 100"]
   [jump target="*rina_lover"]
  [endif]
 [endif]
 ;■静江
 [if exp="f.sizue_lover == undefined "]
  [if exp="f.sizue_f >= 100"]
   [jump target="*sizue_lover"]
  [endif]
 [endif]
 
[endif]

[return]


;-莉子ちゃん恋人判定------------------------------------------------------------------
*riko_lover
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[p]
#樱子
[playse storage="sakurako/sa75_011.ogg" buf="0"]
和莉子做爱，和莉子做爱，和莉子做爱，和莉子做爱，[p]
#
[bg storage="room_night.png" time="1000"]
[chara_show name="sakurako" face="akubi03" left=100]
你在吵什么？[p]
快去睡觉！！[p]
[fadeoutse]
;樱子消去
#
[chara_hide name="sakurako"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[l]
被说了奇怪的话， 所以变得特别在意……[p]
难道我对莉子……[p]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="我喜欢莉子"  target="*riko_lover_1"]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="不，只是错觉……"  target="*riko_lover_2"]
[s]

;--莉子ちゃん好きかも
*riko_lover_1
#
我喜欢莉子……[p]
[eval exp="f.riko_lover = 1"]
如果明天开始在意了怎么办……[p]
……[l]……[l]……[l]
呼~呼~……[p]
[return]

;--そんなことはなかった
*riko_lover_2
#
不不，应该不会吧……[p]
睡吧[p]
[eval exp="f.riko_f = 80"]
[return]

;-莉菜ちゃん恋人判定-------------------------------------------------------------------------
*rina_lover
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[p]
#樱子
[playse storage="sakurako/sa75_012.ogg" buf="0"]
和莉菜做那种事啊这种事！和莉菜做那种事啊这种事！[r]
和莉菜做那种事啊这种事！和莉菜做那种事啊这种事！[p]
#
[bg storage="room_night.png" time="1000"]
[chara_show name="sakurako" face="akubi03" left=100]
你在吵什么？[p]
快去睡觉！！[p]
[fadeoutse]
;樱子消去
#
[chara_hide name="sakurako"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[l]
被说了奇怪的话， 所以变得特别在意……[p]
难道我对莉菜……[p]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="我喜欢莉菜吗?"  target="*rina_lover_1"]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="不，只是错觉……"  target="*rina_lover_2"]
[s]

;--莉菜ちゃん好きかも
*rina_lover_1
#
我喜欢莉菜……[p]
[eval exp="f.rina_lover = 1"]
如果明天开始在意了怎么办……[p]
……[l]……[l]……[l]
嗯~嗯~……[p]
[return]

;--そんなことはなかった
*rina_lover_2
#
不，应该不会吧……[p]
睡吧[p]
[eval exp="f.rina_f = 80"]
[return]

;-静江さん恋人判定--------------------------------------------------------------------------------
*sizue_lover
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[p]
#樱子
[playse storage="sakurako/sa75_013.ogg" buf="0"]
静江小姐的胸部！静江小姐的胸部！静江小姐的胸部！静江小姐的胸部！[p]
#
[bg storage="room_night.png" time="1000"]
[chara_show name="sakurako" face="akubi03" left=100]
你在吵什么？[p]
快去睡觉！！[p]
[fadeoutse]
;樱子消去
#
[chara_hide name="sakurako"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[l]
被说了奇怪的话， 所以变得特别在意……[p]
难道我对静江小姐……[p]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="可能喜欢静江小姐"  target="*sizue_lover_1"]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="不，只是错觉……"  target="*sizue_lover_2"]
[s]

;--静江さん好きかも
*sizue_lover_1
#
我喜欢静江小姐……[p]
[eval exp="f.sizue_lover = 1"]
如果明天开始在意了的话怎么办……[p]
……[l]……[l]……[l]
嗯~嗯~……[p]
[return]

;--そんなことはなかった
*sizue_lover_2
#
不，应该不会吧……[p]
我们睡吧[p]
[eval exp="f.sizue_f = 80"]
[return]
;***********************************************************************************************************************
;-告白イベント
*confession
;土日なら延期
[if exp="f.oneweek == 5 || f.oneweek == 6"]
 [eval exp="tf.enki = 1"]
 [return]
[endif]

;パートナー判別樱子以外延期
[if exp="f.partner > 0"]
 [eval exp="tf.enki = 1"]
 [return]
[endif]
;***********************************************************************************************************************
;***********************************************************************************************************************
;--莉子ちゃん告白イベント
[if exp="f.riko_lover == 1"]
[freeimage layer="2" time="0"]
[bg storage="entrance.png" time="1000"]
#
回到家了[p]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_23_1.webm" time="1000" loop="true"]
莉子我回来了[p]
莉菜和静江还没回来吗[p]
#莉子
[playse storage="riko/rk23_001.ogg" buf="0"]
姐姐说要和朋友在学习，会晚回来哦[r]
妈妈说是有酒会[p]
#
（莉子，看到内裤了！）[p]
（一如既往的走光！）[p]
（如何在不被发现的情况下仔细地看，这就是手臂发挥作用之处！）[p]
晚饭已经准备好了，不愧是莉菜（瞥！）[p]
#莉子
[playse storage="riko/rk23_002.ogg" buf="0"]
大叔来玩游戏吧！[p]
#
哦，可以啊！这次我不会输的（瞥！）[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_23_2.webm" time="1000" loop="true"]
不行，根本打不过！[p]
莉子真强啊[p]
#莉子
[playse storage="riko/rk23_003.ogg" buf="0"]
大叔啊~[p]
#
嗯？[p]
#莉子
[playse storage="riko/rk23_004.ogg" buf="0"]
你一直都在看莉子的内裤吧[p]
#
! ![p]
那个……没看见啊![p]
#莉子
[playse storage="riko/rk23_005.ogg" buf="0"]
没……我没看到！[p]
#
诶……啊……嗯……没，没看到……没有啊[p]
#莉子
[playse storage="riko/rk23_006.ogg" buf="0"]
嗯，那……你想看吗？[p]
#
诶……啊……莉子……[p]
#莉子
[playse storage="riko/rk23_007.ogg" buf="0"]
你想看莉子的内裤吗？[p]
#
想……我想看……大概[p]
[stop_bgmovie time = "0"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_23_3.webm" time="0" skip="true" ]


[bgmovie storage="mov_23_4.webm" time="2000" loop="true"]
[menuwindows]
#莉子
[playse storage="riko/rk23_009.ogg" buf="0"]
怎么样？莉子的内裤[r]
这么近的地方看起来很兴奋吧！[p]
#
莉子……这样……不妙啊[p]
#莉子
[playse storage="riko/rk23_010.ogg" buf="0"]
大叔，你喜欢莉子吧?[p]
#
诶……嗯，喜欢……但是……[p]
#莉子
[playse storage="riko/rk23_011.ogg" buf="0"]
哇……萝莉控……恶心![p]
#
那么……莉子呢?[p]
[stop_bgmovie time = "0"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_23_5.webm" time="0" skip="true"]
[bgmovie storage="mov_23_6.webm" time="1000" loop="true"]
[menuwindows]
#莉子
[playse storage="riko/rk23_013.ogg" buf="0" loop="true"]
嗯……[p]
[playse storage="riko/rk23_014.ogg" buf="0"]
这是莉子的初吻，怎么样？[p]
#
怎么样呢？那就当莉子的仆人吧[p]
还想看看莉子的胸部啊[p]
#莉子
[playse storage="riko/rk23_015.ogg" buf="0"]
大叔，你是萝莉控，所以你喜欢贫乳的吧？[p]
#
是的，最喜欢了[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_7.webm" time="2000" loop="true"]
#莉子
[playse storage="riko/rk23_016.ogg" buf="0"]
但是莉子，再过几年就会变成像姐姐一样的巨乳哦[p]
#
只要是莉子的胸部，我都很喜欢哦[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_8.webm" time="0" loop="true"]
#
[playse storage="riko/rk23_017.ogg" buf="0" loop="true"]
莉子可爱的胸部[p]
快要成长的胸部！[p]
这么模下去的话会变成什么状况！[p]
不妙啊……莉子……大叔，已经停不下来了[p]
莉子的重要的地方也……给我看看！[p]
[stop_bgmovie time = "500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_23_9.webm" time="1000" skip="true"]

[bgmovie storage="mov_23_10.webm" time="1000" loop="true"]
[menuwindows]
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
#
（莉子可爱的小穴就在眼前。）[p]
[stopse buf="0"]
#莉子
[playse storage="riko/rk23_025.ogg" buf="0"]
大叔，如果被这么抚摸的话……奇怪的感觉[p]
#
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
你自己经常摸吗？[p]
#莉子
[playse storage="riko/rk23_026.ogg" buf="0" clear="true"]
不，不知道……[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_11.webm" time="1000" loop="true"]
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
#
莉子的小穴就在眼前[p]
#莉子
[playse storage="riko/rk23_028.ogg" buf="0"]
大叔，这样好害羞……[p]
#
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
莉子……已经……无法忍受啊……[p]
#莉子
[playse storage="riko/rk23_029.ogg" buf="0"]
嗯……不要弄疼我哦[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[fadeoutse buf="0"]
[stop_bgmovie time = "1000"]
[movie storage="mov_23_12.webm" time="1000" skip="true"]
[bgmovie storage="mov_23_13.webm" time="1000" loop="true"]
[menuwindows]
#莉子
[playse storage="se/kutyu00.ogg" buf="3" loop="true"]
[playse storage="riko/rk26_013.ogg" buf="0"]
大叔……好痛……这个，会变的舒服吗?[p]
#
[playse storage="riko/rk26_014.ogg" buf="0" loop="true"]
习惯了会越来越舒服的，莉子！[p]
我会慢慢来的[p]
哈……哈……好舒服啊，莉子[p]
莉子……舒服，想再更多……已经忍不住了[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_16.webm" time="1000" loop="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop="true"]
#莉子
啊!啊!嗯……[p]
#
莉子，对不起……我忍不住了[p]
莉子里面插进了大叔的肉棒哦[p]
哈……哈……莉子，真舒服啊……[p]
莉子！莉子！唔……啊！[p]
[stop_bgmovie time = "0"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[movie storage="mov_23_14.webm" skip="true"]

[movie storage="mov_23_15.webm" skip="true"]
[menuwindows]
[bgmovie storage="mov_23_17.webm" time="2000" loop="true"]
#莉子
[playse storage="riko/rk26_018.ogg" buf="0"]
大叔，疼死了![p]
#
唔……对不起，莉子[p]
我忍不住了……让我做什么都行，请原谅我[p]
#莉子
[playse storage="riko/rk26_019.ogg" buf="0"]
什么都行？嗯，该怎么办呢？[r]
容我考虑一下！[p]
#
啊……糟了……说了多余的话[p]
[stop_bgmovie time="2000"]
[stopse buf="0"]
;パートナー樱子変更
[eval exp="f.partner = 0"]

[bg storage="room_night.png" time="1000"]
#
返回了房间[p]
沉浸在和莉子的做爱余韵中[r]
今天睡吧[p]

;莉子恋人ステータス
[eval exp="f.riko_lover = 2"]
[eval exp="f.riko_i = 10"]
[eval exp="f.energy = 0"]
[return]
[endif]

;***********************************************************************************************************************
;***********************************************************************************************************************
;--莉菜ちゃん告白イベント
[if exp="f.rina_lover == 1"]
[freeimage layer="2" time="0"]
[bg storage="entrance.png" time="1000"]
#
回到家了[p]
[bg storage="black.png" time="1000"]
[bg storage="lover/img24_00.png" time="1000"]
我回来了~[p]
#莉菜
[playse storage="rina/rn24_001.ogg" buf="0"]
哥哥，欢迎回家[r]
今天莉子和妈妈都不在哦[p]
#
是这样啊[p]
#莉菜
[playse storage="rina/rn24_002.ogg" buf="0"]
妈妈说工作上好像出了问题，所以会迟点回来[r]
莉子住在了朋友家[p]
#
那今天就和莉菜两个人了吧！[p]
[bg storage="lover/img24_01.png" time="1000"]
#莉菜
[playse storage="rina/rn24_003.ogg" buf="0"]
……[p]
#
（哎呀，说了不太好的话）[p]
[bg storage="lover/img24_02.png" time="1000"]
#莉菜
[playse storage="rina/rn24_004.ogg" buf="0"]
今天很难得，所以很努力的做了饭菜[r]
马上就能做好了，请稍等[p]
#
恩~恩[p]
[bg storage="lover/img24_03.png" time="1000"]
#莉菜
[playse storage="rina/rn24_005.ogg" buf="0"]
哥哥，让你久等了！ 我做好了[r]
我很担心能不能合您的口味[p]
#
莉菜做的什么都很好吃哦[p]
哦哦！ 仿佛餐馆一样的体验啊，莉菜 [p]

#
莉菜看起来超好吃 要是每天只有两个人就好了！[p]
[bg storage="lover/img24_04.png" time="1000"]
#莉菜
[playse storage="rina/rn24_007.ogg" buf="0"]
……[p]
#
（糟了！ 又说了恶心的话……）[p]
#
那，那么，来吧！ 我开动了[p]
[bg storage="lover/img24_05.png" time="1000"]
#
莉菜，很好吃哦！ 哎呀莉菜能来真是太好了[p]
#
因为一直都是速食之类的东西，所以几年没做过像样的料理了……[p]
#
嗯？ 莉菜怎么了，你有什么事吗？[p]
[bg storage="lover/img24_06.png" time="1000"]
#莉菜
[playse storage="rina/rn24_008.ogg" buf="0"]
不，不……没什么……[p]
#
[bg storage="black.png" time="1000"]
[bg storage="lover/img24_07.png" time="1000"]
#莉菜
[playse storage="rina/rn24_009.ogg" buf="0"]
哥哥，请看电视。[p]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[movie storage="mov_24_22.webm" time="0" skip="true"]
[wait_bgmovie]
[freeimage layer="base"]
[stop_bgmovie]
#
[menuwindows]
[freeimage layer="base"]
……[p]
[bgmovie storage="mov_24_23.webm" time="1000" loop="true"]

#莉菜
[playse storage="rina/rn24_014.ogg" buf="0"]
啊……那个……[p]
#
（糟了！ 该怎么办？回过神来，发行已经停不下来……）[p]
（好了不管了！ 不管行不行都要上……）[p]
我……我喜欢……莉菜……[p]
#莉菜
……[p]
#
对不起……给你添麻烦了吗?[p]
#莉菜
[playse storage="rina/rn24_016.ogg" buf="0"]
不！ 不是的……我也是我也是，哥哥……喜欢……我也喜欢哥哥！[p]
#
莉菜……[p]
#莉菜
[playse storage="rina/rn24_017.ogg" buf="0"]
一直……喜欢……不过，如果被拒绝就会变得尴尬……[p]
我……我该怎么办……如此不安着……[p]
[stop_bgmovie]
[stopse buf="0"]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_24_24.webm" skip="true"]
[bgmovie storage="mov_24_2_1.webm" time="1000" loop="true"]
[menuwindows]
#莉菜
[playse storage="rina/rn24_019.ogg" buf="0" loop="true"]
我……[p]
#
（莉菜的嘴唇……柔软的……）[p]
（我再也忍不住了……）[p]
莉菜……我……已经[p]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_24_3_1.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_24_4_1.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_024_1.ogg" buf="0" loop="true"]
莉菜的胸部，好大！[p]
#莉菜
[playse storage="rina/rn24_022.ogg" buf="0"]
被这么盯着看……好害羞……[p]
[playse storage="rina/rn24_024_2.ogg" buf="0" loop="true"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_24_5_1.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_24_6_1.webm" time="1000" loop="true"]
[stopse buf="0"]
#莉菜
[playse storage="rina/rn24_026.ogg" buf="0" loop="true"]
哦，哥哥！ ……那种地方……不要……嗯！[p]
#
（莉菜的小穴就在我眼前……）[p]
（不行……我想插进去）[p]
#
莉菜……可以吧[p]
#莉菜
[playse storage="rina/rn24_027.ogg" buf="0"]
是……因为是第一次……请温柔一点……[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_24_7.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_24_8.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_024_2.ogg" buf="0" loop="true"]
对不起！莉菜，痛吗?[p]
#莉菜
[playse storage="rina/rn24_029.ogg" buf="0"]
没关系……没关系，哥哥。[p]
[playse storage="rina/rn24_024_2.ogg" buf="0" loop="true"]
#
我会再轻点[p]
莉菜我要开始动了[p]
[stop_bgmovie time="0"]
[stopse buf="0"]
[bgmovie storage="mov_24_9.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_032.ogg" buf="0" loop="true"]
[playse storage="se/kutyu00.ogg" buf="3" loop="true"]
啊……啊……真舒服……[p]
莉菜里面太舒服了……[p]
已经……停不下来……[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_24_10.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_033.ogg" buf="0" loop="true"]
莉菜酱！莉菜酱！[p]
真舒服……莉菜酱！很舒服哦！[p]
啊……莉菜，不行！好像要去了！[p]
莉菜酱！啊！啊！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_24_11.webm" skip ="true"]
[movie storage="mov_24_13.webm" skip ="true"]


;[bgmovie storage="mov_24_12.webm" time="1000" loop="true"]
[playse storage="rina/rn24_036.ogg" buf="0" loop="true"]
[bgloop mov="mov_24_12.webm" ti="1000"]
[stop_bgmovie time="2000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]

;パートナー樱子変更
[eval exp="f.partner = 0"]

[bg storage="room_night.png" time="1000"]
#
返回了房间[p]
没想到能和莉菜交往……[p]
想象着那个胸部，好像又要恢复精神了。[p]
今天就老老实实地睡吧[p]


;莉菜恋人ステータス
[eval exp="f.rina_lover = 2"]
[eval exp="f.rina_i = 10"]
[eval exp="f.energy = 0"]
[return]
[endif]

;***********************************************************************************************************************
;***********************************************************************************************************************
;--静江さん告白イベント
[if exp="f.sizue_lover == 1"]
[freeimage layer="2" time="0"]
[bg storage="entrance.png" time="1000"]
#
回到家了[p]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_25_15.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_001.ogg" buf="0"]
我回来了~哥哥！[p]
#
欢迎回来，静江小姐。 [p]
#静江
[playse storage="sizue/sz25_002.ogg" buf="0"]
啊，对了！ 莉菜和莉子今天都要晚点才回来[p]
#
莉菜说要参加学习会[r]
莉子说要住在朋友家[p]
莉菜说今天她不能准备晚餐了[p]
#静江
[playse storage="sizue/sz25_003.ogg" buf="0"]
也就是说，今天……[p]
#
啊……[p]
#静江
[playse storage="sizue/sz25_004.ogg" buf="0"]
叫外卖披萨吧[p]
#
啊……好的[p]
#静江
[playse storage="sizue/sz25_005.ogg" buf="0"]
莉菜的料理虽然很好吃，但偶尔还是要这样啊！[r]
你也会想无节制地吃垃圾食品吧[p]
#
回来后会被骂的！ [p]
#静江
[playse storage="sizue/sz25_006.ogg" buf="0"]
应该有美味的日本酒！ 我早就知道被莉菜藏在什么地方[r]
今天呆在家里真是太走运了。[p]
#
哪里哪里[r]
我很乐意陪你[p]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_25_16.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_007.ogg" buf="0"]
喂喂，哥哥！ 你有好好喝吗？[p]
#
好，好的……尽量[p]
#静江
[playse storage="sizue/sz25_008.ogg" buf="0"]
你抓到宝可梦了吗？[r]
这可不是在玩哟！这就是人生！[p]
#
是！是按照静江小姐教的那样收集了[p]
#静江
[playse storage="sizue/sz25_009.ogg" buf="0"]
嘿嘿，哥哥真是个好孩子，好孩子[r]
抚摸着头[p]
[playse storage="sizue/sz25_010.ogg" buf="0"]
啊，对了！杯面也被藏起来了[r]
现在正是拿出来吃的时候！[p]
#
你吃得太多了！[p]
#静江
[playse storage="sizue/sz25_011.ogg" buf="0"]
明天就要努力减肥了[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
#
[stop_bgmovie time="2000"]
[movie storage="mov_25_17.webm" skip="true"]
[menuwindows]
啊!危险[p]
…………[p]
[bg storage="lover/img25_18_00.png" time="1000"]
#静江
[playse storage="sizue/sz25_012.ogg" buf="0"]
哥哥，谢谢你[r]
喝多了吗？[p]
[playse storage="sizue/sz25_013.ogg" buf="0"]
嗯？……[p]
#
静江小姐……我……[p]
#静江
[playse storage="sizue/sz25_014.ogg" buf="0"]
怎么了？ 哥哥[p]
#
我……我喜欢静江小姐！[p]
#静江
[playse storage="sizue/sz25_015.ogg" buf="0"]
嘿嘿，谢谢你[r]
阿姨也最喜欢哥哥了[p]
#
不，不是！ 不是那样，我真的很喜欢……[r]
我一直在想静江小姐的事[p]
#静江
[playse storage="sizue/sz25_016.ogg" buf="0"]
喂喂！ 你可不要开你阿姨的玩笑[r]
哥哥，是喝醉了吗？ [p]
#
没，我没醉！[p]
我……我是认真的……静江小姐不喜欢我吗[p]
[bg storage="lover/img25_18_02.png" time="1000"]
#静江
[playse storage="sizue/sz25_017.ogg" buf="0"]
怎么可能讨厌，讨厌……[r]
不，不行！ 啊~[p]
[playse storage="sizue/sz25_017_1.ogg" buf="0"]
你知道吧！ 不行的！[p]
#
不知道[r]
我完全不知道[p]
#静江
[playse storage="sizue/sz25_018.ogg" buf="0"]
真是的，别为难阿姨！ 来吧，放开我的手[p]
#
不，不……不放开……如果你真的不愿意，就请告诉我你真的讨厌……[p]
#静江
[playse storage="sizue/sz25_019.ogg" buf="0"]
你在说什么啊……哥哥[p]
#
如果你说我讨厌的话……我就放手……[p]
[bg storage="lover/img25_18_01.png" time="1000"]
#静江
[playse storage="sizue/sz25_020.ogg" buf="0"]
……真是个为难的孩子啊……哥哥，真是的[r]
怎么能说出口呢……对吧？[p]
#
[bg storage="black.png" time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="sizue/sz25_021.ogg" buf="0" loop="true"]
[bgloop mov="mov_25_1.webm" ti="1000"]
[stopse buf="0"]
[movie storage="mov_25_2.webm" skip ="true"]
[menuwindows]
#
[cm]
[bgmovie storage="mov_25_3.webm" time="1000" loop="true"]
#
[playse storage="sizue/sz25_024.ogg" buf="0" loop="true"]
静江小姐的胸部好大[p]
太软了……大……[p]
静江小姐……让我看看更多……[p]
[stop_bgmovie time="1000"]
[stopse buf="0"]
[bgmovie storage="mov_25_4.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_026.ogg" buf="0"]
哥哥……不要那么看……这中年人的身体[p]
#
很有魅力啊，静江小姐……我很兴奋。[p]
[stop_bgmovie]
[bgmovie storage="mov_25_5.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_029.ogg" buf="0" loop="true"]
啊，嗯……[p]
#
静江小姐……你已经这么湿了[p]
#静江
[playse storage="sizue/sz25_028.ogg" buf="0"]
真是的……哥哥……欺负人[p]
#
[stop_bgmovie]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_25_6.webm" skip ="true"]
[menuwindows]
[stop_bgmovie]
[bgmovie storage="mov_25_7.webm" time="1000" loop="true"]
[playse storage="sizue/sz25_035.ogg" buf="0" loop="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop="true"]
#
啊，啊，静江小姐[p]
静江小姐里面……真舒服[p]
[stop_bgmovie]
[bgmovie storage="mov_25_8.webm" time="1000" loop="true"]
[playse storage="sizue/sz25_036.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
静江小姐！啊……好舒服！很舒服啊静江小姐[p]
静江小姐……好像要射了……[p]
#静江
[playse storage="sizue/sz25_037.ogg" buf="0"]
没关系，哥哥……满满的射出来……可以哟[p]
#
[playse storage="sizue/sz25_036.ogg" buf="0" loop="true"]
静江小姐，我喜欢你，啊……啊……非常喜欢！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_25_9.webm" skip ="true"]
[playse storage="sizue/sz25_040_1.ogg" buf="0" loop="true"]
[movie storage="mov_25_10.webm" skip ="true"]
[bgloop mov="mov_25_11.webm" ti="1000"]
[stopse buf="0"]
[movie storage="mov_25_12.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_25_13.webm" time="0"]
#静江
[playse storage="sizue/sz25_041.ogg" buf="0"]
哥哥，至此一次下不为例。[r]
今天的事情，忘了吧[p]
#
静江……我……[p]
#静江
[playse storage="sizue/sz25_042.ogg" buf="0"]
好了，明天开始还和往常一样哦! 明白了吗?[p]
#
……[p]
[stop_bgmovie time="2000"]
[stopse buf="0"]
[stopse buf="3"]
;パートナー樱子変更
[eval exp="f.partner = 0"]

[bg storage="room_night.png" time="1000"]
#
返回了房间[p]
和静江小姐的H……好舒服啊……[p]
虽然被说了那种话……[p]
要放弃吗……[p]
不，不要……[p]
……[l]……[l]……[p]

总之，今天先睡吧[p]


;静江恋人ステータス
[eval exp="f.sizue_lover = 1.5"]
[eval exp="f.sizue_i = 0"]
[eval exp="f.energy = 0"]
[return]
[endif]
;***********************************************************************************************************************