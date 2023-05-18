;夢精

*start

[cm]
[clearfix]
[menuwindows]

@bg storage ="white.png" time="1000"
;-ランダム判定
;ランダム数値の取り出し
*random
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

;ランダム数字が前回と同じか調べる
[if exp="tf.rand == f.d_before"]
;同じ数字ならやり直し
[jump target="*random"]
[endif]

;-夢判別
;--莉子
[if exp="tf.rand == 0"]
;---莉子夢①
 [if exp="f.dream_riko == undefined || f.dream_riko == 1"]
  [bgmovie storage="mov_11_1_1.webm" time="2000"]
#莉子
[playse storage="riko/rk11_001.ogg" buf="0"]
大叔，看莉子的胸部！ 大叔想看更多吗？[p]
#
　[stop_bgmovie time="2000"]
  [eval exp="f.dream_riko = 2"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---莉子夢②
 [if exp="f.dream_riko == 2"]
  [bgmovie storage="mov_11_4_1.webm" time="2000"]
#莉子
[playse storage="riko/rk11_002.ogg" buf="0"]
叔叔，莉子的小穴，已经变成这样了[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_riko = 3"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---莉子夢③
 [if exp="f.dream_riko == 3"]
  [bgmovie storage="mov_11_1_2.webm" time="2000"]
#莉子
[playse storage="riko/rk11_003.ogg" buf="0"]
大叔，插进来…插进莉子的小穴里…[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_riko = 1"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
[endif]

;--莉菜
[if exp="tf.rand == 1"]
;---莉菜夢①
 [if exp="f.dream_rina == undefined || f.dream_rina == 1"]
  [bgmovie storage="mov_12_1_1.webm" time="2000"]
#莉菜
[playse storage="rina/rn12_001.ogg" buf="0"]
哥哥，莉菜的胸……请看……[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_rina = 2"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---莉菜夢②
 [if exp="f.dream_rina == 2"]
  [bgmovie storage="mov_12_1_3.webm" time="2000"]
#莉菜
[playse storage="rina/rn12_002.ogg" buf="0"]
哥哥，莉菜……已经，成这样……我想要哥哥的[r]
小穴变成这样……湿淋淋的了[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_rina = 3"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---莉菜夢③
 [if exp="f.dream_rina == 3"]
  [bgmovie storage="mov_12_1_2.webm" time="2000"]
#莉菜
[playse storage="rina/rn12_003.ogg" buf="0"]
请插进来…哥哥…莉菜的里面…[r]
想要哥哥的…莉菜已经…变得没有办法了…[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_rina = 1"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
[endif] 

;--静江
[if exp="tf.rand == 2"]
;---静江夢①
 [if exp="f.dream_sizue == undefined || f.dream_sizue == 1"]
  [bgmovie storage="mov_13_1_1.webm" time="2000"]
#静江
[playse storage="sizue/sz13_001.ogg" buf="0"]
真是的，哥哥……你喜欢胸部吗？[r]
可以哦，阿姨的胸部，任随你处置。[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_sizue = 2"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---静江②
 [if exp="f.dream_sizue == 2"]
  [bgmovie storage="mov_13_1_3.webm" time="2000"]
#静江
[playse storage="sizue/sz13_002.ogg" buf="0"]
哥哥，快看[r]
你看，阿姨的小穴……已经变成这样了……[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_sizue = 3"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---静江③
 [if exp="f.dream_sizue == 3"]
  [bgmovie storage="mov_13_1_2.webm" time="2000"]
#静江
[playse storage="sizue/sz13_003.ogg" buf="0"]
哥哥，插进来…お哥哥的肉棒…插进阿姨的小穴里来[r]
然后…在阿姨的小穴里满满的注入哥哥的精液[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_sizue = 1"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
[endif]
