;おねだりエッチ
*start


;f.riko_orgasm  絶頂経験ありでフラグオン
;f.riko_sex エッチしたらフラグオン
;f.riko_libido 性欲 エッチしないと増加

;***********************************************************************************************************************
;おねだり判別　莉子
;f.riko_libido　8以上でおねだり
[if exp="f.riko_libido >= 8"]
[p]
[freeimage layer="2" time="0"]
[stop_bgmovie]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_58_1.webm" time="2000"]
#
哎呀，莉子酱[r]
你怎么了[p]
#莉子
[playse storage="riko/rk58_001.ogg" buf="0"]
大叔……莉子，想做爱……[p]
#
诶？[p]
#莉子
[playse storage="riko/rk58_002.ogg" buf="0"]
莉子，想做爱！[p]
#
莉子……[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_58_2.webm" time="2000"]
#莉子
[playse storage="riko/rk58_003.ogg" buf="0"]
你看，大叔……莉子，已经这样了……大叔也想插进莉子里面对吧？[p]
#
うん[p]
#莉子
[playse storage="riko/rk58_004.ogg" buf="0"]
想插入莉子的小穴吗？[p]
#
嗯，想插进去[p]
#莉子
[playse storage="riko/rk58_005.ogg" buf="0"]
大叔的肉棒，想插入莉子的小穴？[p]
#
想插进去[p]
#莉子
[playse storage="riko/rk58_006.ogg" buf="0"]
都说到这份上了，莉子就满足你和你做爱吧[p]
#
嗯？[p]
#莉子
[playse storage="riko/rk58_007.ogg" buf="0"]
真没办法，这次就特别对待跟你做爱做到饱吧！　大叔[p]
#
（诶？　……算了，行吧）[r]
莉子大小姐，已经忍不住了！[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[playse storage="riko/rk58_008.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop ="true"]
[bgloop mov="mov_58_3.webm"  ti="2000"]
[playse storage="riko/rk58_009.ogg" buf="0" loop ="true"]
[bgloop mov="mov_58_5.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_58_7.webm" skip="true"]
[playse storage="riko/rk58_011.ogg" buf="0" loop ="true"]
[bgloop mov="mov_58_8.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]

[bg storage="black.png" time="1000"]
@bg storage ="room_night.png" time=1000
[menuwindows]
[uiwindows]
#
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

[call storage="sakurako.ks" target="*orgasm_sakurako"]

[return]
[endif]
;***********************************************************************************************************************
;おねだり判別　莉菜
;f.riko_libido　7以上でおねだり
[if exp="f.rina_libido >= 7"]
[p]
[freeimage layer="2" time="0"]
[stop_bgmovie]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_59_1.webm" time="2000"]
#
诶，莉菜！　你怎么了？[p]
#莉菜
[playse storage="rina/rn59_001.ogg" buf="0"]
哥哥……那个……[p]
#
嗯，什么事？[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[movie storage="mov_59_2.webm" skip="true"]
[menuwindows]
[bg storage="img_59_9.png" time="1000"]
莉菜？[p]
#莉菜
[playse storage="rina/rn59_003.ogg" buf="0"]
一直以来都是哥哥在欺负我，今天就由我来欺负哥哥！[p]
#
诶诶！[p]
#莉菜
[playse storage="rina/rn59_004.ogg" buf="0"]
做好覚悟吧！[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[playse storage="rina/rn59_005.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop ="true"]
[bgloop mov="mov_59_5.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]

[movie storage="mov_59_7.webm" skip="true"]
[playse storage="rina/rn59_009.ogg" buf="0" loop="true"]
[movie storage="mov_59_8.webm" skip="true"]
[stopse buf="0"]
[bg storage="black.png" time="1000"]

@bg storage ="room_night.png" time=1000
[menuwindows]
[uiwindows]

#
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

[call storage="sakurako.ks" target="*orgasm_sakurako"]

[return]
[endif]
;***********************************************************************************************************************
;おねだり判別　静江
;f.riko_libido　6以上でおねだり
[if exp="f.sizue_libido >= 6"]
[p]
[freeimage layer="2" time="0"]
[stop_bgmovie]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_60_2.webm" time="2000"]
#
啊！　静江小姐，你怎么了[p]
#静江
[playse storage="sizue/sz60_001.ogg" buf="0"]
哥哥，阿姨……已经到极限了……[p]
#
诶诶！　什么意思？[p]
#静江
[playse storage="sizue/sz60_002.ogg" buf="0"]
哥哥……已经……不行了……[p]
#
静江小姐！　到底怎么了！[p]
#静江
[playse storage="sizue/sz60_003.ogg" buf="0"]
哥哥……做爱吧！[p]
#
诶诶！[p]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_60_3.webm" time="2000"]
#静江
[playse storage="sizue/sz60_004.ogg" buf="0"]
看着，哥哥…阿姨这里…已经变成这样了！ 想要哥哥的……[r]
湿漉漉的…真是的！都怪哥哥！　阿姨变成了这样……[p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[playse storage="sizue/sz61_009.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop ="true"]
[bgloop mov="mov_60_4.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_60_6.webm" skip="true"]

[bg storage="black.png" time="1000"]
@bg storage ="room_night.png" time=1000
[menuwindows]
[uiwindows]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

[call storage="sakurako.ks" target="*orgasm_sakurako"]

[return]
[endif]

;***********************************************************************************************************************
[return]
