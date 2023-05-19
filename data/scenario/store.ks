;駄菓子屋

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
[playbgm storage="so_sweet.ogg" loop="true"]
@bg storage ="store_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.store_fast == undefined"]
#
来到了上岛商店[p]
卖杂货和点心等各种各样的东西[p]
听说莉子会经常来这里[p]

[eval exp="f.store_fast = true"]
[else]
#
来到了上岛商店[p]
[endif]


;-キャラクター判別
;配列変数 f.store_day を日付で判別
;0 樱子　１　莉子　２　莉菜　３　静江
[if exp="f.store_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_store"]
[return]
[endif]

;莉子
[if exp="f.store_day[f.day] == 1"]
[jump target="*riko_store"]
[endif]

;莉菜
[if exp="f.store_day[f.day] == 2"]
[jump target="*rina_store"]
[endif]

;静江
[if exp="f.store_day[f.day] == 3"]
[jump target="*sizue_store"]
[endif]

;-駄菓子屋イベント　莉子-----------------------------------------------------------------------------------------
*riko_store

;樱子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_store == undefined || f.riko_store == 1"]
#
[bg storage="store/img17_09.png" time="1000"]
莉子酱！[p]
#莉子
[playse storage="riko/rk17_032.ogg" buf="0"]
啧，大叔……[r]
莉子买吃的这件事要对姐姐保密啊！[p]
#
[bg storage ="store_evening.png" time="1000"]
吃着点心一起回去了[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[eval exp="f.riko_store = 2"]
[return]
[endif]

;--②
[if exp="f.riko_store == 2"]
#
[bg storage="store/img17_09.png" time="1000"]
莉子在抽卡[p]
“魔法少女芙蕾兹”，[r]
莉子的目标落空了吗？[p]
#莉子
[playse storage="riko/rk17_033.ogg" buf="0"]
大叔，完全不行……明明只差一点了但就是抽也不出来[p]
#
那我来试一下吧[p]
#莉子
[playse storage="riko/rk17_034_2.ogg" buf="0"]
出货了吗？
#
这是？[p]
#莉子
……[p]

[bg storage ="store_evening.png" time="1000"]
#
莉子已经回去了……[p]


;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_store = 1"]


[return]
[endif]


