;本屋

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;樱子消去
#
[chara_hide name="sakurako"]
[playbgm storage="gakou.ogg" loop="true"]
@bg storage ="bookstore_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.bookstore_fast == undefined"]
#
来到了小鹿书店[p]
我经常来买漫画[r]
是新刊吗？[p]
[eval exp="f.bookstore_fast = true"]
[else]
#
来到了书店[p]
[endif]


;-キャラクター判別
;配列変数 f.book_day を日付で判別
;0 樱子 １ 莉子 ２ 莉菜 ３ 静江
[if exp="f.book_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_bookstore"]
[return]
[endif]

;莉子
[if exp="f.book_day[f.day] == 1"]
[jump target="*riko_book"]
[endif]

;莉菜
[if exp="f.book_day[f.day] == 2"]
[jump target="*rina_book"]
[endif]

;静江
[if exp="f.book_day[f.day] == 3"]
[jump target="*sizue_book"]
[endif]

;-本屋イベント　莉子-----------------------------------------------------------------------------------------
*riko_book

;樱子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_book == undefined || f.riko_book == 1"]
#
是莉子，太好了[p]
[bg storage="book/img17_10.png" time="1000"]
#莉子
[playse storage="riko/rk17_014.ogg" buf="0"]
大叔！[r]
啊，难道是来买色情书的吗？[p]
#
不是啊！[p]
#莉子
[playse storage="riko/rk17_015.ogg" buf="0"]
嗯，到底是不是呢……[p]
#
[bg storage ="bookstore_evening.png" time=1000]
莉子先回去了[p]
然后该怎么办呢？[p]
[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

[eval exp="f.riko_book = 2"]
[return]
[endif]

;--②
[if exp="f.riko_book == 2"]
[if exp="f.money >=1000"]
#
莉子在书店里[r]
莉子酱[p]
[bg storage="book/img17_11.png" time="1000"]
#莉子
[playse storage="riko/rk17_016.ogg" buf="0"]
啊，大叔！[r]
……大叔！有什么事吗？[p]
#
哇！什么？这么嫌弃！[p]
#莉子
[playse storage="riko/rk17_017.ogg" buf="0"]
莉子想要这本书，该怎么办呢？[r]
盯，盯！[p]
#
一直被盯着……好吧，好吧，我给你买！[p]
[bg storage="book/img17_12.png" time="1000"]
#莉子
[playse storage="riko/rk17_018.ogg" buf="0"]
哇，大叔！最喜欢你了~♡[p]
#
我真是个好人啊！[p]

给莉子买了书[p]

;所持金上昇
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]

和莉子一起回去[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_book = 3"]

;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[return]
[endif]
[eval exp="f.riko_book = 3"]
[endif]

;--③
[if exp="f.riko_book == 3"]
[bg storage="book/img17_10.png" time="1000"]
#
莉子，买东西吗?[p]
#莉子
[playse storage="riko/rk17_019.ogg" buf="0"]
诶！大叔……[r]
哎呀，大叔，请多关照[p]
#
嗯……又在买什么吗？[p]
[bg storage="book/img17_13.png" time="1000"]
#玛丽
莉子，久等了[r]
咦，莉子的哥哥？[p]
#莉子
[playse storage="riko/rk17_020.ogg" buf="0"]
嗯，我们的仆人[p]
#玛丽
诶~！好厉害啊！[r]
莉子家有仆人吗？[p]
#
(快点回去吧，在这里感觉压力山大啊……）[p][p]
那么，莉子大人……稍后再见[p]
[bg storage ="bookstore_evening.png" time=1000]


;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_book = 4"]
[return]
[endif]

;--④
[if exp="f.riko_book == 4"]
[bg storage="book/img17_14.png" time="1000"]
#
喂，莉子[p]
#莉子
[playse storage="riko/rk17_021.ogg" buf="0"]
又是你，大叔……[r]
你是在跟踪莉子吧[p]
#
不不！只是偶然！[p]

#莉子
就这样放任不管的话会变成罪犯的[r]
我跟你一起回去[p]
#

;莉子ちゃん好感度UP
[riko_f]

;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[eval exp="tf.place = 1"]
[eval exp="f.riko_book = 1"]
[return]
[endif]


;-本屋イベント　莉菜-----------------------------------------------------------------------------------------
*rina_book

;樱子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_rina_goout"]

;--①
[if exp="f.rina_book == undefined || f.rina_book == 1"]
#
[bg storage="book/img18_05.png" time="1000"]
是莉菜啊，拿着什么书[p]
是偶像杂志之类的吗？[p]
美味的烹饪食谱 幸福之饭……[p]
不愧是莉菜[p]
[bg storage="book/img18_04.png" time="1000"]
#莉菜
[playse storage="rina/rn18_006.ogg" buf="0"]
哥哥，来得正好[r]
我们一起回去吧[p]
#
和莉菜一起回家了[p]
;莉子ちゃん好感度UP
[rina_f]

[eval exp="tf.place = 1"]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_book = 2"]
[return]
[endif]

;--②
[if exp="f.rina_book == 2"]
#
[bg storage="book/img18_04.png" time="1000"]
莉菜，现在回家吗?[p]
#莉菜
[playse storage="rina/rn18_007.ogg" buf="0"]
哥哥!正要回去呢![r]
一起回去吧[p]
#
嗯，是啊。[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_book = 1"]
[return]
[endif]

;-本屋イベント　静江-----------------------------------------------------------------------------------------
*sizue_book

;樱子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_sizue_goout"]

;--①
[if exp="f.sizue_book == undefined || f.sizue_book == 1"]
#
[bg storage="book/img19_00.png" time="1000"]
啊，是静江小姐！静江小姐~[p]
#静江
[playse storage="sizue/sz19_001.ogg" buf="0"]
哥哥，你现在回去吗？[p]
#
是啊，我正要回去[p]
#静江
[playse storage="sizue/sz19_002.ogg" buf="0"]
那我们一起回去吧。[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_book = 2"]
[return]
[endif]

;--②
[if exp="f.sizue_book == 2"]
#
[bg storage="book/img19_01.png" time="1000"]
是静江小姐，在买什么书[p]
[bg storage="book/img19_01.png" time="1000"]
#静江
[playse storage="sizue/sz19_003.ogg" buf="0"]
啊，哥哥。[p]
#
你买了什么书？[p]
#静江
[playse storage="sizue/sz19_004.ogg" buf="0"]
嘿嘿，秘密[p]
#
”口袋妖怪Z 彻底攻略“[p]

[bg storage="bookstore_evening.png" time="1000"]
#
静江小姐好像已经回去了[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

[eval exp="f.sizue_book = 3"]
[return]
[endif]

;--③
[if exp="f.sizue_book == 3"]
#
[bg storage="book/img19_01.png" time="1000"]
是静江在买书。[p]
[bg storage="book/img19_01.png" time="1000"]
#静江
[playse storage="sizue/sz19_005.ogg" buf="0"]
哥哥，现在回家吗?[p]
#
我正要回家，你买了什么?[p]
#静江
[playse storage="sizue/sz19_006.ogg" buf="0"]
你这家伙！不能随便问女人的秘密[p]
#
“读了就能减肥的究极食疗法“[p]


#
决定和静江一起回去[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]


[eval exp="f.sizue_book = 1"]
[return]
[endif]