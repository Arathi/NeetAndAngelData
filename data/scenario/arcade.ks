;游戏中心

*start
[update_title]

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;樱子消去
#
[chara_hide name="sakurako"]
[playbgm storage="dance.ogg" loop="true"]
@bg storage ="arcade.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.arcade_fast == undefined"]
#
来到了游戏中心[p]
听说莉子会经常来这里[p]

[eval exp="f.arcade_fast = true"]
[else]
#
来到了游戏中心[p]
[endif]


;-キャラクター判別
;配列変数 f.arcade_day を日付で判別
;0 樱子 １ 莉子 ２ 莉菜 ３ 静江
[if exp="f.arcade_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_arcade"]
[return]
[endif]

;莉子
[if exp="f.arcade_day[f.day] == 1"]
[jump target="*riko_arcade"]
[endif]

;莉菜
[if exp="f.arcade_day[f.day] == 2"]
[jump target="*rina_arcade"]
[endif]

;静江
[if exp="f.arcade_day[f.day] == 3"]
[jump target="*sizue_arcade"]
[endif]

;-ゲームセンターイベント 莉子-----------------------------------------------------------------------------------------
*riko_arcade

;樱子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_arcade == undefined || f.riko_arcade == 1"]
#
[bg storage="arcade/img17_21.png" time="1000"]
哦！莉子和朋友一起来了[r]
好像在拍大头贴[p]
[bg storage="arcade/img17_22.png" time="1000"]
#玛丽
莉子，再见[p]
#莉子
[playse storage="riko/rk17_025.ogg" buf="0"]
拜拜[p]
#
[bg storage="arcade/img17_23.png" time="1000"]
嗨，莉子酱[p]
#莉子
[playse storage="riko/rk17_026.ogg" buf="0"]
啊！跟踪狂！[p]
#
谁是跟踪狂！[p]
刚才拍的大头贴，可以给我看看吗？[p]
#莉子
[playse storage="riko/rk17_027.ogg" buf="0"]
我不会给你看的，你这个萝莉控！[p]
#
[bg storage ="arcade.png" time="1000"]

莉子回去了[p]
[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

;パートナー�?�子ちゃん変更
;[eval exp="f.partner = 1"]

[eval exp="f.riko_arcade = 2"]
[return]
[endif]

;--②
[if exp="f.riko_arcade == 2"]
#
[bg storage="arcade/img17_24.png" time="1000"]
啊，莉子在玩游戏！[p]
好的……我要加入挑战！[r]
如果赢了的话，可以让她刮目相看[p]
……[l]……[l]……[p]
……被秒杀了[p]
[bg storage="arcade/img17_25.png" time="1000"]
#莉子
[playse storage="riko/rk17_027_1.ogg" buf="0"]
啊……是大叔啊？[r]
太弱了，吓我一跳！[p]
#
[bg storage ="arcade.png" time="1000"]
稍微练习练习再来吧。[p]
……[p]
……[p]


;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_arcade = 3"]


[return]
[endif]

;--③
[if exp="f.riko_arcade == 3"]
#
[bg storage="arcade/img17_26.png" time="1000"]
莉子在和朋友玩抓娃娃机[p]
想要抓什么呢？[r]
[bg storage="arcade/img17_27.png" time="1000"]
……[p]
……[p]
……[p]
（来这里，感觉压力很大啊……）[p]

没办法……回家吧[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_arcade = 1"]


[return]
[endif]



