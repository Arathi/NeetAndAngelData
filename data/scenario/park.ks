;公園

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;樱子消去
#
[chara_hide name="sakurako"]
[playbgm storage="haretahiha.ogg" loop="true"]
@bg storage ="park_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.park_fast == undefined"]
#
来到虹色纪念公园[p]
听说静江下班后经常来这里[r]
莉子也可能会和朋友在这玩[p]
[eval exp="f.park_fast = true"]
[else]
#
来到了公园[p]
[endif]


;-キャラクター判別
;配列変数 f.park_day を日付で判別
;0 樱子　１　莉子　２　莉菜　３　静江
[if exp="f.park_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_park"]
[return]
[endif]

;莉子
[if exp="f.park_day[f.day] == 1"]
[jump target="*riko_park"]
[endif]

;莉菜
[if exp="f.park_day[f.day] == 2"]
[jump target="*rina_park"]
[endif]

;静江
[if exp="f.park_day[f.day] == 3"]
[jump target="*sizue_park"]
[endif]

;-公園イベント　莉子-----------------------------------------------------------------------------------------
*riko_park

;樱子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_park == undefined || f.riko_park == 1"]
#
[bg storage="park/img17_18.png" time="1000"]
是莉子，在和朋友一起玩……[p]
公园里玩耍的女孩……真是不错啊[p]
啊，看到了，莉子！[p]
……总觉得眼神瞪过来了[p]
[bg storage="park/img17_19.png" time="1000"]
#莉子
[playse storage="riko/rk17_028.ogg" buf="0"]
你在做什么！[p]
#
诶……不……散步[p]
#莉子
[playse storage="riko/rk17_029.ogg" buf="0"]
怎么看都是偷拍公园的变态[r]
在被报警之前赶快回去！[p]
#
[bg storage ="park_evening.png" time=1000]
我回去了……[p]



[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

[eval exp="f.riko_park = 2"]
[return]
[endif]

;--②
[if exp="f.riko_park == 2"]
#
[bg storage="park/img17_16.png" time="1000"]
莉子走在路上[p]
从后面有个男孩跑着追上！[p]
#男孩
那个~~[p]
[bg storage="park/img17_02.png" time="1000"]

#莉子
[playse storage="riko/rk17_030.ogg" buf="0"]
啊~~[p]
[bg storage="park/img17_17.png" time="2000"]
#
哦哦[p]
#莉子
[playse storage="riko/rk17_031.ogg" buf="0"]
那个小孩[p]
#
追过去了……[p]
[bg storage ="park_evening.png" time=1000]


;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_park = 1"]


[return]
[endif]

;-公園イベント　静江-----------------------------------------------------------------------------------------
*sizue_park

;樱子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_sizue_goout"]

;--①
[if exp="f.sizue_park == undefined || f.sizue_park == 1"]
#
[bg storage="park/img19_03.png" time="1000"]
静江小姐在玩手机[p]
[bg storage="park/img19_04.png" time="1000"]
#静江
[playse storage="sizue/sz19_011.ogg" buf="0"]
哎呀，哥哥，稍等一下哦[p]
#
难道是口袋妖怪Z是吗？[p]
#静江
[playse storage="sizue/sz19_012.ogg" buf="0"]
啊！被跑掉了[r]
是啊，总是收集不齐[p]
#
我最近也开始玩了[r]
但还完全不知道怎么玩[p]
#静江
[playse storage="sizue/sz19_013.ogg" buf="0"]
哎呀，是这样吗！下次阿姨教你！[p]
[playse storage="sizue/sz19_013_2.ogg" buf="0"]
听好，口袋妖怪可不只是玩哦！[r]
找到稀有小精灵的话就把它拿到阿姨这里来！[p]
#
好的，还请手轻一点[p]
收集了一段时间后决定一起回去了[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 2"]
[return]
[endif]

;--②
[if exp="f.sizue_park == 2"]
#
[bg storage="park/img19_06.png" time="1000"]
感觉人很多啊[r]
为什么呢？大家都在玩口袋妖怪[p]
[bg storage="park/img19_07.png" time="1000"]
#静江
[playse storage="sizue/sz19_014.ogg" buf="0"]
哥哥，快点，快点！[p]
#
诶！静江小姐！[p]
#静江
[playse storage="sizue/sz19_015.ogg" buf="0"]
我们要开始了，零度之战！[p]
#
啊！这就是零度之战吗[r]
所以大家都聚在一起[p]
[bg storage="park/img19_08.png" time="1000"]
#静江
[playse storage="sizue/sz19_016.ogg" buf="0"]
听好了！哥哥，对付“皮卡丸侍”的策略是物理属性哦！[r]
使用“喵太郎“的撕咬攻击很有效呢！[p]
[playse storage="sizue/sz19_016_2.ogg" buf="0"]
如果没有的话就用“仓鼠”的脆弱攻击[r]
就算全军覆没也没问题[p]
[playse storage="sizue/sz19_016_3.ogg" buf="0"]
马上恢复，再重新进入就行了！然后……[p]
#
（从静江小姐身上感受到平时无法想象的气魄)[p]
#静江
[playse storage="sizue/sz19_017.ogg" buf="0"]
明白了吗？[p]
#
是的……我会努力的[p]
……[l]……[l]……[p]
[bg storage="park/img19_09.png" time="1000"]
#静江
[playse storage="sizue/sz19_018.ogg" buf="0"]
哥哥，被逃走了吗？[r]
下次还有机会，没事的[p]
#
……好的[p]

一起讨论口袋妖怪的话题，然后一起回去[p]


;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 3"]
[return]
[endif]

;--③
[if exp="f.sizue_park == 3"]
#
[bg storage="park/img19_06.png" time="1000"]
今天也很多人啊！[p]
[bg storage="park/img19_07.png" time="1000"]
#静江
[playse storage="sizue/sz19_019.ogg" buf="0"]
哥哥，你在做什么？我们得快点[p]
#
静江小姐，发生什么事了？[p]
#静江
[playse storage="sizue/sz19_020.ogg" buf="0"]
那边的池塘里出现了迪亚洛彭[r]
不快点的话就会消失的[p]
#
迪亚罗彭？啊！是小精灵啊！[p]
急忙赶了过去[p]
……[l]……[l]……[p]
[bg storage="park/img19_05.png" time="1000"]
#静江
[playse storage="sizue/sz19_021.ogg" buf="0"]
哥哥，抓到了吗？[p]
#
不……不行没抓到。[p]

我们决定收集小精灵然后一起回去，[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 4"]
[return]
[endif]

;--④
[if exp="f.sizue_park == 4"]
#
[bg storage="park/img19_04.png" time="1000"]
静江小姐！今天也是玩口袋妖怪吗？[p]
#静江
[playse storage="sizue/sz19_022.ogg" buf="0"]
哥哥，来得正好[r]
运动的时候我会去找小精灵的！[p]
#
啊，好的[p]

我们决定收集小精灵然后一起回去，[p]


;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 2"]
[return]
[endif]