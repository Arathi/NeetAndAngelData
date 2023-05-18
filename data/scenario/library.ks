;図書館

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;樱子消去
#
[chara_hide name="sakurako"]
@bg storage ="library.png" time=0"
[playbgm storage="yuusyokugo.ogg" loop="true"]
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.library_fast == undefined"]
#
来到了虹色图书馆[p]
学生们都在这学习，莉菜有可能会来[p]
也有漫画，这样消磨时间也不错吧？[p]
莉子是来看漫画的吧[p]
[eval exp="f.library_fast = true"]
[else]
#
来到图书馆[p]
[endif]


;-キャラクター判別
;配列変数 f.library_day を日付で判別
;0 樱子　１　莉子　２　莉菜　３　静江
[if exp="f.library_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_library"]
[return]
[endif]

;莉子
[if exp="f.library_day[f.day] == 1"]
[jump target="*riko_library"]
[endif]

;莉菜
[if exp="f.library_day[f.day] == 2"]
[jump target="*rina_library"]
[endif]

;[if exp="f.library_day[f.day] == 3"]
;[call storage="sakurako.ks" target="*sakurako_library"]
;[endif]

;-図書館イベント　莉子-----------------------------------------------------------------------------------------
*riko_library

;樱子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_library == undefined || f.riko_library == 1"]
#
咦？是莉子，没想到你会在图书馆里[p]
[bg storage="library/img17_00.png" time="1000"]
#莉子
[playse storage="riko/rk17_001.ogg" buf="0"]
啊，大叔[p]
#
啊，图书馆里也有漫画啊！[p]
#莉子
[playse storage="riko/rk17_002.ogg" buf="0"]
莉子也会看书的！[p]
#
在看什么书？[p]
[bg storage="library/img17_01.png" time="1000"]
#莉子
[playse storage="riko/rk17_003.ogg" buf="0"]
漫，漫画……[p]
#
[bg storage ="library.png" time=1000]
莉子先回去了[p]
之后该怎么办呢？[p]
[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

[eval exp="f.riko_library = 2"]
[return]
[endif]

;--②
[if exp="f.riko_library == 2"]
#
啊，是莉子！莉子酱~[p]
[bg storage="library/img17_04.png" time="1000"]
#莉子
[playse storage="riko/rk17_004.ogg" buf="0"]
大叔![p]
#
你在做什么?又是漫画?[p]
#莉子
[playse storage="riko/rk17_005.ogg" buf="0"]
现在，和朋友一起做自由研究的调查，正在看书。[r]
不是漫画~[p]
#
朋友?哪一位?[p]
#莉子
[playse storage="riko/rk17_006.ogg" buf="0"]
那边桌子上的孩子们……怎么可能告诉萝莉控嘛！[p]
[bg storage="library/img17_03.png" time="1000"]
[playse storage="riko/rk17_007.ogg" buf="0"]
等等！莉子在学校可是个优等生，来这边的话我会报警的[p]
#
好……好的……我知道了……[p]
;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 3"]
[return]
[endif]

;--③
[if exp="f.riko_library == 3"]
[bg storage="library/img17_05.png" time="1000"]
#莉子
[playse storage="riko/rk17_008.ogg" buf="0"]
啊，大叔![p]
#
喂，莉子[p]
#莉子
[playse storage="riko/rk17_009.ogg" buf="0"]
大叔，图书馆里没有色色的书哦![p]
#
我知道![p]
[bg storage ="library.png" time=1000]
#
莉子已经回去了……[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 4"]
[return]
[endif]

;--④
[if exp="f.riko_library == 4"]
[bg storage="library/img17_06.png" time="1000"]
#
莉子，难得的在学习吗？[p]
#莉子
[playse storage="riko/rk17_010.ogg" buf="0"]
莉子是优等生，也会学习的![p]
#
啊!橡皮掉了![p]
[bg storage="library/img17_07.png" time="1000"]
(噢!露出内裤!)[p]
[bg storage="library/img17_08.png" time="1000"]
#莉子
[playse storage="riko/rk17_011.ogg" buf="0"]
大叔，你刚才看到内裤了吧![p]
#
诶！[p]
没看哟！[p]
（你怎么知道的？）[p]
[bg storage ="library.png" time=1000]
莉子学习结束，好像已经回去了。[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 5"]
[return]
[endif]

;--⑤
[if exp="f.riko_library == 5"]
[bg storage="library/img17_05.png" time="1000"]
#
莉子[p]
#莉子
[playse storage="riko/rk17_012.ogg" buf="0"]
啊!大叔[p]
#
我要回去了，你要一起回去吗？[p]
#莉子
[playse storage="riko/rk17_013.ogg" buf="0"]
放着不管的话很危险，我跟你一起回去吧[p]

;莉子ちゃん好感度UP
[riko_f]
;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 1"]

[return]
[endif]

;-図書館イベント　莉菜-----------------------------------------------------------------------------------------
*rina_library

;樱子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_rina_goout"]

;--①
[if exp="f.rina_library == undefined || f.rina_library == 1"]
#
[bg storage="library/img18_00.png" time="1000"]
是莉菜啊[p]
是在和朋友学习吧……[p]
还是不要去打扰了[p]

[bg storage ="library.png" time=1000]

悄悄的离开了现场[p]
[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]

[eval exp="f.rina_library = 2"]
[return]
[endif]

;--②
[if exp="f.rina_library == 2"]
#
[bg storage="library/img18_01.png" time="1000"]
啊，莉菜!学习?[p]
#莉菜
[playse storage="rina/rn18_003.ogg" buf="0"]
哥哥！嗯，因为这次有考试[p]
但是，我想回去了，要一起回去吗？[p]
#
嗯，好啊[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_library = 3"]
[return]
[endif]

;--③
[if exp="f.rina_library == 3"]
#
莉菜在[p]
[bg storage="library/img18_02.png" time="1000"]
你在看什么书呢？恋爱小说之类的[p]
[bg storage="library/img18_03.png" time="1000"]
专业教授清洁术100选[p]
……很有莉菜的风格啊[p]
[bg storage="library/img18_01.png" time="1000"]
#莉菜
[playse storage="rina/rn18_005.ogg" buf="0"]
哥哥，你现在要回去吗？[p]
#
嗯，一起回去吧。[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_library = 1"]
[return]
[endif]