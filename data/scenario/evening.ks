;夕方イベント

*start

[cm]

@bg storage ="entrance.png" time=1000"

#
回到家了[p]

;曜日判別
[if exp="f.oneweek ==5 || f.oneweek==6"]
 [return]
[endif]

;パートナー判別
[if exp="f.partner == 0"]
[jump target="*entrance_events"]
[endif]
[if exp="f.partner == 1"]
[jump target="*entrance_riko"]
[endif]
[if exp="f.partner == 2"]
[jump target="*entrance_rina"]
[endif]

[return]
;***********************************************************************************************************************
;-莉子ちゃん同伴帰宅イベント
*entrance_riko
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

;--帰宅イベント①
 [if exp="tf.rand == 0"]
 [freeimage layer="2" time="0"]
#
[bg storage="evening/img14_05.png" time="1000"]
哦哦！这是[p]
[bg storage="evening/img14_04.png" time="1000"]
绝好的走光！[p]
 [endif]
 
;--帰宅イベント②
 [if exp="tf.rand == 1"]
 [freeimage layer="2" time="0"]
#
[bg storage="evening/img14_08.png" time="1000"]
哦哦！这是[p]
[bg storage="evening/img14_07.png" time="1000"]
绝好的走光！[p]
 [endif]

[return]


;***********************************************************************************************************************
;-莉菜ちゃん同伴帰宅イベント
*entrance_rina
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

;--帰宅イベント①
 [if exp="tf.rand == 0"]
 [freeimage layer="2" time="0"]
#
[bg storage="evening/img15_01.png" time="1000"]
哦哦！这是[p]
[bg storage="evening/img15_02.png" time="1000"]
绝好的走光！[p]
 [endif]
 
[return]


;***********************************************************************************************************************
;-帰宅イベント
*entrance_events
;***********************************************************************************************************************
;--莉子帰宅①
[if exp="f.riko_f >= 20 && f.riko_entrance == undefined"]
[freeimage layer="2" time="0"]
#
我回来了~[p]
还没人回来吗……[p]
[bg storage="evening/img14_12.png" time="1000"]
啊，莉子睡在沙发上[p]
睡得真香啊……[p]
[bg storage="evening/img14_13.png" time="1000"]
稍微靠近一下……[p]
莉子……[p]
或者再靠近一点[p]
[bg storage="evening/img14_14.png" time="1000"]
……[l]……[l]……[l]……[p]
我想再看一看，但醒来的话就麻烦了[r]
到此为止吧[p]
[eval exp="f.riko_entrance = 2"]
[return]
[endif]

;--莉子帰宅②
[if exp="f.riko_f >= 40 && f.riko_entrance == 2"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
咦？都去哪了呢？[p]
仓库吗……我去看看[p]

[image storage ="entrance2.png" layer="3" page="fore" visible="true" time="500"]
[bg storage ="evening/img14_02.png" time ="0"]

[keyframe name="run"]
[frame p=100% scale = "2" y="150" opacity = "0"]
[endkeyframe]
[kanim layer="3" keyframe="run" time="2000" easing = "ease-in"]
[wait time="2000"]
[stop_kanim layer="3"]
[freeimage layer="3"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]

[bg storage ="black.png" time="0"]
#
……[l]……[l]……[p]
啊！一片漆黑……[p]
这到底是！？[p]
到底是怎么回事！！[p]
[bg storage ="evening/img14_03.png" time = "1000"]
#莉子
[playse storage="riko/rk14_001.ogg" buf="0"]
……你在做什么?[p]
#
诶~？诶~？[p]
#莉子
[playse storage="riko/rk14_002.ogg" buf="0"]
你这个变态! ![p]
#
[bg storage ="black.png" time = "500"]
[playse storage="se/naguru.ogg" buf="2"]
ぐはっ！[p]
[eval exp="f.riko_entrance = 3"]
[return]
[endif]

;--莉子帰宅③
[if exp="f.riko_f >= 60 && f.riko_entrance == 3"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
咦？都去哪了呢？[p]
仓库吗……我去看看[p]

[image storage ="entrance2.png" layer="3" page="fore" visible="true" time="500"]
[bg storage ="evening/img14_02.png" time ="0"]

[keyframe name="run"]
[frame p=100% scale = "2" y="150" opacity = "0"]
[endkeyframe]
[kanim layer="3" keyframe="run" time="2000" easing = "ease-in"]
[wait time="2000"]
[freeimage layer="3"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_14_14.webm" time="2000"]
#
……[l]……[l]……[p]
嗯……这是……[p]
#莉子
[playse storage="riko/rk14_003.ogg" buf="0"]
为什么会变成这样[p]
#
那个……我不是故意的[p]
#莉子
[playse storage="riko/rk14_004.ogg" buf="0"]
每次都是这样！你这个萝莉控~！[p]
#
[stop_bgmovie]
[playse storage="se/naguru.ogg" buf="2"]
啪！[p]
[eval exp="f.riko_entrance = 4"]
[return]
[endif]

;--莉子帰宅④
[if exp="f.riko_i >= 20 && f.riko_entrance == 4"]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_14_3.webm" time="2000" loop="true"]
#
莉子在吃冰激凌！[p]
看莉子的样子，冰淇淋很好吃啊[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[movie storage="mov_14_3_2.webm" skip="true"]
[movie storage="mov_14_3_3.webm" skip="true"]
[bgloop mov="mov_14_3_4.webm"  ti="2000"]
[menuwindows]
冰淇淋，很好吃。[r]
[eval exp="f.riko_entrance = 5"]
[return]
[endif]

;***********************************************************************************************************************
;--莉菜帰宅①
[if exp="f.rina_f >= 20 && f.rina_entrance == undefined"]
[freeimage layer="2" time="0"]
#
我回来了！[p]
[bg storage ="evening/img15_03.png" time = "1000"]
#
莉菜在叠要洗的衣服[p]
我来帮你吧[p]
#莉菜
[playse storage="rina/rn21_026.ogg" buf="0"]
谢谢你每次都帮我[p]
#
[bg storage ="evening/img15_04.png" time = "1000"]
（哦！珍贵场面——莉菜的内裤）[p]
（不同于莉子的能经常看到，莉菜的很珍贵啊）[p]
[eval exp="f.rina_entrance = 2"]
[return]
[endif]

;--莉菜帰宅②
[if exp="f.rina_f >= 35 && f.rina_entrance == 2"]
[freeimage layer="2" time="0"]
#
我回来了！[p]
[bg storage ="evening/img15_05.png" time = "1000"]
#
莉菜在打扫卫生[p]
一如既往的帮她吧[p]
[bg storage ="evening/img15_06.png" time = "1000"]
#
（哦！珍贵场面——莉菜的乳沟）[p]
（不同于静江小姐的能经常看到，，莉菜的很珍贵啊）[p]
[eval exp="f.rina_entrance = 3"]
[return]
[endif]

;--莉菜帰宅③
[if exp="f.rina_f >= 50 && f.rina_entrance == 3"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
咦？都去哪了呢？[p]
仓库吗……我去看看[p]

[bg storage="entrance2.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]
#
……[l]……[l]……[p]
这软软的东西是怎么回事！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bgloop mov="mov_15_1_1.webm"  ti="2000"]
[bg storage="evening/img15_07.png" time="1000"]
[menuwindows]
#
对！对不起！莉菜[r]
这，这是个意外……[p]
#莉菜
[playse storage="rina/rn15_002.ogg" buf="0"]
不，不……哥哥，我也没看前面，所以……对不起[p]
#
（太好了……看起来没有生气……虽然被摸了屁股……好柔软啊……）[p]
[eval exp="f.rina_entrance = 4"]

[return]
[endif]

;--莉菜帰宅④
[if exp="f.rina_f >= 60 && f.rina_entrance == 4"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
咦？都去哪了呢？[p]
仓库吗……我去看看[p]

[bg storage="entrance2.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]
#
……[l]……[l]……[p]
这是什么柔软的东西![p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bgloop mov="mov_15_2_1.webm"  ti="2000"]
[bg storage="evening/img15_07.png" time="1000"]
[menuwindows]
#
哦，对不起！[r]
莉菜没事吧，我决不是故意的……[p]
#莉菜
[playse storage="rina/rn15_004.ogg" buf="0"]
啊！不，我也被吓了一跳，是我不好。[r]
对不起，哥哥你才是，没事吧[p]
#
我完全没问题[r]
（呼~太好了……没有生气……但是……胸部好大啊……）[p]
[eval exp="f.rina_entrance = 5"]

[return]
[endif]

;***********************************************************************************************************************
;--静江帰宅①
[if exp="f.sizue_f >= 20 && f.sizue_entrance == undefined"]
[freeimage layer="2" time="0"]
#
我回来了！[p]
[bg storage ="evening/img16_04.png" time = "1000"]
#
哦！静江小姐喝醉了[p]
又一次这么早就喝醉在那里……[p]
……[l]……[l]……[l]……[p]
静江小姐……[p]
不要起来啊……再靠近一点……[p]
[bg storage ="evening/img16_03.png" time = "1000"]
静江小姐……[p]
喂喂喂……[p]
完全醉了啊，这是……[p]
[bg storage ="evening/img16_02.png" time = "1000"]
……[p]
哎呀……不妙……醒了就不好了[r]
凝视此为止[p]

[eval exp="f.sizue_entrance = 2"]
[return]
[endif]

;--静江帰宅②
[if exp="f.sizue_f >= 40 && f.sizue_entrance == 2"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
咦？都去哪了呢？[p]
仓库吗……我去看看[p]

[bg storage="entrance3.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]

#
……[l]……[l]……[l]……[p]
一片漆黑！这到底是？[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bgloop mov="mov_16_1_1.webm"  ti="2000"]
[bg storage="evening/img16_00.png" time="1000"]
[menuwindows]
#静江
[playse storage="sizue/sz16_002.ogg" buf="0"]
哥哥，埋进了阿姨的胸部[r]
你这么想要吗？[p]
#
对！对不起！静江小姐，这是……[p]
#静江
[playse storage="sizue/sz16_003.ogg" buf="0"]
哥哥想摸的话，什么时候都可以哦！[p]
#
诶！啊……那个……[p]
#静江
[playse storage="sizue/sz16_004.ogg" buf="0"]
嘿嘿，开玩笑的！不好好看前面的路可不，行，哟[p]
[eval exp="f.sizue_entrance = 3"]
#
[return]
[endif]

;--静江帰宅③
[if exp="f.sizue_f >= 60 && f.sizue_entrance == 3"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
咦？都去哪了呢？[p]
仓库吗……我去看看[p]

[bg storage="entrance3.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]
#
……[l]……[l]……[l]……[p]
啊，一片漆黑！到底怎么回事？[p]

[bgmovie storage="mov_16_2_1.webm" time="2000"]

#静江
[playse storage="sizue/sz16_005.ogg" buf="0"]
啊![p]
#
诶？ 不知道怎么说 这是[p]
#静江
[playse storage="sizue/sz16_006.ogg" buf="0"]
真是的，哥哥，怎么会变成这种状况呢？[p]
#
对！对不起，对不起[p]
#静江
[playse storage="sizue/sz16_007.ogg" buf="0"]
啊……哥哥，在这种情况下说话的话……嗯……[p]
#
啊……唔……唔！[p]
#静江
[playse storage="sizue/sz16_008.ogg" buf="0"]
啊~，你是故意的吗？[p]
[stop_bgmovie]

[bg storage="evening/img16_01.png" time="1000"]
[menuwindows]
#
静！静江小姐……对不起！我不是故意的[p]
#静江
[playse storage="sizue/sz16_009.ogg" buf="0"]
喂~喂！哥哥，不准取笑阿姨！[r]
下次再干就拳头伺候！[p]
[eval exp="f.sizue_entrance = 4"]
#
[return]
[endif]


[return]
;***********************************************************************************************************************
;-夕食後の会話
*evening_events
;会話相手判別
;部屋に戻る
[if exp="tf.evening_select == 0"]
 [return]
[endif]
;莉子
[if exp="tf.evening_select == 1"]
 [jump target="*evening_riko"]
[endif]
;莉菜
[if exp="tf.evening_select == 2"]
[jump target="*evening_rina"]
[endif]
;静江
[if exp="tf.evening_select == 3"]
[jump target="*evening_sizue"]
[endif]
;***********************************************************************************************************************
;--莉子会話
*evening_riko
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 35)
[endscript]
#莉子

[if exp="tf.rand == 0"]
[bg storage="evening/img20_01.png" time="1000"]
[playse storage="riko/rk20_001.ogg" buf="0"]
大叔，来玩游戏吧![p]
[endif]

[if exp="tf.rand == 1"]
[bg storage="evening/img20_06.png" time="1000"]
[playse storage="riko/rk20_002.ogg" buf="0"]
大叔，这是我的作业，这个你会吗？[p]
[endif]

[if exp="tf.rand == 2"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_003.ogg" buf="0"]
健太那家伙！ 气死我了[r]
又掀起了我的裙子[p]
[endif]

[if exp="tf.rand == 3"]
[bg storage="evening/img20_14.png" time="1000"]
[playse storage="riko/rk20_004.ogg" buf="0"]
我去洗个澡[r]
大叔，别偷看啊！[p]
[endif]

[if exp="tf.rand == 4"]
[bg storage="evening/img20_07.png" time="1000"]
[playse storage="riko/rk20_005.ogg" buf="0"]
吃点心吗？[p]
[endif]

[if exp="tf.rand == 5"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_007.ogg" buf="0"]
今天啊，小玛丽很有意思哦[p]

[endif]

[if exp="tf.rand == 6"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_007.ogg" buf="0"]
今天啊，小玛丽很有意思哦[p]
[endif]

[if exp="tf.rand == 7"]
[bg storage="evening/img20_03.png" time="1000"]
[playse storage="riko/rk20_008.ogg" buf="0"]
今天完全没有有趣的电视节目[p]
[endif]

[if exp="tf.rand == 8"]
[bg storage="evening/img20_17.png" time="1000"]
[playse storage="riko/rk20_009.ogg" buf="0"]
果汁~！ 果汁~！ 果汁~！[p]
[endif]

[if exp="tf.rand == 9"]
[bg storage="evening/img20_02.png" time="1000"]
[playse storage="riko/rk20_010.ogg" buf="0"]
他们，又在游戏中进行还击了[p]
[endif]

[if exp="tf.rand == 10"]
[bg storage="evening/img20_17.png" time="1000"]
[playse storage="riko/rk20_009.ogg" buf="0"]
果汁~！ 果汁~！ 果汁~！[p]
[endif]

[if exp="tf.rand == 11"]
[bg storage="evening/img20_14.png" time="1000"]
[playse storage="riko/rk20_012.ogg" buf="0"]
大叔你又用下流的眼神看莉子了吧[p]
[endif]

[if exp="tf.rand == 12"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_013.ogg" buf="0"]
告诉姐姐不要放青椒[p]
[endif]

[if exp="tf.rand == 13"]
[bg storage="evening/img20_06.png" time="1000"]
[playse storage="riko/rk20_014.ogg" buf="0"]
糟了！ 我忘了做作业！[p]
[endif]

[if exp="tf.rand == 14"]
[bg storage="evening/img20_02.png" time="1000"]
[playse storage="riko/rk20_015.ogg" buf="0"]
大叔，这周的周刊少年BANBI你买了吗？[p]
[endif]

[if exp="tf.rand == 15"]
[bg storage="evening/img20_18.png" time="1000"]
[playse storage="riko/rk20_016.ogg" buf="0"]
冰淇淋!冰淇淋!冰淇淋![p]
[endif]

[if exp="tf.rand == 16"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_017.ogg" buf="0"]
太热了，把空调调低一点吧[p]
[endif]

[if exp="tf.rand == 17"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_018.ogg" buf="0"]
喜欢的歌，魔女芙蕾的开场！[r]
魔法少女Lovely，下次我来唱给你听[p]
[endif]

[if exp="tf.rand == 18"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_018.ogg" buf="0"]
喜欢的歌，魔女芙蕾的开场！[r]
魔法少女Lovely，下次我来唱给你听[p]
[endif]

[if exp="tf.rand == 19"]
[bg storage="evening/img20_20.png" time="1000"]
[playse storage="riko/rk20_021.ogg" buf="0"]
大叔，陪我练习躲避球吧！ 为了班上爆发的男女战争！[p]
[endif]

[if exp="tf.rand == 20"]
[bg storage="evening/img20_16.png" time="1000"]
[playse storage="riko/rk20_022.ogg" buf="0"]
姐姐说下次给我做点心[p]
[endif]

[if exp="tf.rand == 21"]
[bg storage="evening/img20_19.png" time="1000"]
[playse storage="riko/rk20_023.ogg" buf="0"]
妈妈，姐姐都是大胸，莉子也会变成巨乳吧！[p]
[endif]

[if exp="tf.rand == 22"]
[bg storage="evening/img20_15.png" time="1000"]
[playse storage="riko/rk20_024.ogg" buf="0"]
祭会的时候给你看莉子超可爱的浴衣[p]
[endif]

[if exp="tf.rand == 23"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_025.ogg" buf="0"]
大叔你是萝莉控吧 莉子一早就知道了[p]
[endif]

[if exp="tf.rand == 24"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_026.ogg" buf="0"]
大叔的房间里全是女孩子的手办[p]
[endif]

[if exp="tf.rand == 25"]
[bg storage="evening/img20_09.png" time="1000"]
[playse storage="riko/rk20_027.ogg" buf="0"]
莉子是个优等生啊[p]
[endif]

[if exp="tf.rand == 26"]
[bg storage="evening/img20_16.png" time="1000"]
[playse storage="riko/rk20_028.ogg" buf="0"]
莉子太可爱了，所以大叔一直看着对吧[p]
[endif]

[if exp="tf.rand == 27"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_029.ogg" buf="0"]
大叔房间的手办好像动了，是我的错觉吗？[p]
[endif]

[if exp="tf.rand == 28"]
[bg storage="evening/img20_01.png" time="1000"]
[playse storage="riko/rk20_030.ogg" buf="0"]
妈妈，好香啊！ 不许发情哟[p]
[endif]

[if exp="tf.rand == 29"]
[bg storage="evening/img20_05.png" time="1000"]
[playse storage="riko/rk20_031.ogg" buf="0"]
新闻之类的看不下去，可以换个频道吗？[p]
[endif]

[if exp="tf.rand == 30"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_032.ogg" buf="0"]
不打扫房间的话会被姐姐骂的吧！ 真麻烦[p]
[endif]

[if exp="tf.rand == 31"]
[bg storage="evening/img20_15.png" time="1000"]
[playse storage="riko/rk20_033.ogg" buf="0"]
每天都很热，想去游泳池啊！ 你在想象莉子穿泳衣的样子吧[p]
[endif]

[if exp="tf.rand == 32"]
[bg storage="evening/img20_09.png" time="1000"]
[playse storage="riko/rk20_034.ogg" buf="0"]
姐姐的饭真好吃啊！[p]
[endif]

[if exp="tf.rand == 33"]
[bg storage="evening/img20_07.png" time="1000"]
[playse storage="riko/rk20_035.ogg" buf="0"]
大叔偶尔一个人咕噜地说话，很恶心，请不要再这样了[p]
[endif]

[if exp="tf.rand == 34"]
[bg storage="evening/img20_04.png" time="1000"]
[playse storage="riko/rk20_020.ogg" buf="0"]
不能早点放暑假吗[p]
[endif]

;莉子ちゃん好感度増加
[riko_f]

#
和莉子闲聊了！[p]

[return]

;***********************************************************************************************************************
;--莉菜会話
*evening_rina
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 30)
[endscript]
#莉菜

[if exp="tf.rand == 0"]
[bg storage="evening/img21_00.png" time="1000"]
[playse storage="rina/rn21_001.ogg" buf="0"]
哥哥，请等一下！ 东西就要洗完了[p]
[endif]

[if exp="tf.rand == 1"]
[bg storage="evening/img21_01.png" time="1000"]
[playse storage="rina/rn21_002.ogg" buf="0"]
最近蔬菜很贵。[p]
[endif]

[if exp="tf.rand == 2"]
[bg storage="evening/img21_01.png" time="1000"]
[playse storage="rina/rn21_003.ogg" buf="0"]
哥哥，明天有什么想吃的东西吗?[p]
[endif]

[if exp="tf.rand == 3"]
[bg storage="evening/img21_02.png" time="1000"]
[playse storage="rina/rn21_004.ogg" buf="0"]
东城开了一家新的蛋糕店[p]
[endif]

[if exp="tf.rand == 4"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_005.ogg" buf="0"]
我喜欢甜点……不许浪费。[p]
[endif]

[if exp="tf.rand == 5"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_006.ogg" buf="0"]
最喜欢的是栗子蛋糕吧[p]
[endif]

[if exp="tf.rand == 6"]
[bg storage="evening/img21_05.png" time="1000"]
[playse storage="rina/rn21_007.ogg" buf="0"]
在西宫神社许愿的话，好像就能实现哦[p]
[endif]

[if exp="tf.rand == 7"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_008.ogg" buf="0"]
今天连洗澡盆都洗过了，很闪亮哦[p]
[endif]

[if exp="tf.rand == 8"]
[bg storage="evening/img21_01.png" time="1000"]
[playse storage="rina/rn21_009.ogg" buf="0"]
今天的饭怎么样？ 因为是第一次做所以有点担心[p]
[endif]

[if exp="tf.rand == 9"]
[bg storage="evening/img21_06.png" time="1000"]
[playse storage="rina/rn21_010.ogg" buf="0"]
哥哥！ 你又帮莉子吃了青椒对吧[p]
[endif]

[if exp="tf.rand == 10"]
[bg storage="evening/img21_10.png" time="1000"]
[playse storage="rina/rn21_011.ogg" buf="0"]
啊！ 又是空调的温度，这么冷！[p]
[endif]

[if exp="tf.rand == 11"]
[bg storage="evening/img21_10.png" time="1000"]
[playse storage="rina/rn21_011.ogg" buf="0"]
啊！ 又是空调的温度，这么冷！[p]
[endif]

[if exp="tf.rand == 12"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_013.ogg" buf="0"]
下次我要试着做点心[p]	
[endif]

[if exp="tf.rand == 13"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_014.ogg" buf="0"]
我上的是女子学校哦[p]
[endif]

[if exp="tf.rand == 14"]
[bg storage="evening/img21_05.png" time="1000"]
[playse storage="rina/rn21_015.ogg" buf="0"]
妈妈，虽然在家里很懒散，但是工作很能干哦![p]
[endif]

[if exp="tf.rand == 15"]
[bg storage="evening/img21_09.png" time="1000"]
[playse storage="rina/rn21_016.ogg" buf="0"]
朋友好像在电车里遇到了色狼。[p]
[endif]

[if exp="tf.rand == 16"]
[bg storage="evening/img21_11.png" time="1000"]
[playse storage="rina/rn21_017.ogg" buf="0"]
妈妈，你半夜躲着吃杯面了吧！[r]
你以为我没注意到吗[p]
[endif]

[if exp="tf.rand == 17"]
[bg storage="evening/img21_12.png" time="1000"]
[playse storage="rina/rn21_018.ogg" buf="0"]
妈妈总是会把酒全喝了，所以要将日本酒藏起来。不能说哦[p]
[endif]

[if exp="tf.rand == 18"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_019.ogg" buf="0"]
商店街的叔叔们会为我们提供很多服务哦[p]
[endif]

[if exp="tf.rand == 19"]
[bg storage="evening/img21_02.png" time="1000"]
[playse storage="rina/rn21_020.ogg" buf="0"]
商店街有福引活动，一等奖好像是温泉旅行[p]
[endif]

[if exp="tf.rand == 20"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_019.ogg" buf="0"]
商店街的叔叔们会为我们提供很多服务哦[p]
[endif]

[if exp="tf.rand == 21"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_022.ogg" buf="0"]
下次我要和莉子去游泳池[p]
[endif]

[if exp="tf.rand == 22"]
[bg storage="evening/img21_09.png" time="1000"]
[playse storage="rina/rn21_023.ogg" buf="0"]
哥哥，不能因为热而从冷的东西开始喝[p]
[endif]

[if exp="tf.rand == 23"]
[bg storage="evening/img21_09.png" time="1000"]
[playse storage="rina/rn21_024.ogg" buf="0"]
哥哥，不要总是和莉子玩游戏[p]
[endif]

[if exp="tf.rand == 24"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_025.ogg" buf="0"]
我很喜欢看电影[r]
经常会去看[p]
[endif]


[if exp="tf.rand == 25"]
[bg storage="evening/img21_08.png" time="1000"]
[playse storage="rina/rn21_027.ogg" buf="0"]
今天和朋友一起唱卡拉OK，嗓子又干又渴[p]
[endif]

[if exp="tf.rand == 26"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_028.ogg" buf="0"]
哥哥，你熟悉电脑吗？ 我用起来总是不顺利……[p]
[endif]

[if exp="tf.rand == 27"]
[bg storage="evening/img21_02.png" time="1000"]
[playse storage="rina/rn21_029.ogg" buf="0"]
这是我和朋友拍的大头贴[p]
[endif]

[if exp="tf.rand == 28"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_030.ogg" buf="0"]
我拉了商店街的福引，拿到了纸巾[p]
[endif]

[if exp="tf.rand == 29"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_031.ogg" buf="0"]
在御所许愿的话好像能实现，所以和朋友一起去了[r]
诶，许了什么愿？ ……这是秘密。[p]
[endif]

;莉菜ちゃん好感度増加
[rina_f]

#
和莉菜闲聊了！[p]
[return]

;***********************************************************************************************************************
;--静江会話
*evening_sizue
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 30)
[endscript]
#静江

[if exp="tf.rand == 0"]
[bg storage="evening/img22_00.png" time="1000"]
[playse storage="sizue/sz22_001.ogg" buf="0"]
哥哥，要一起喝吗？[p]
[endif]

[if exp="tf.rand == 1"]
[bg storage="evening/img22_01.png" time="1000"]
[playse storage="sizue/sz22_002.ogg" buf="0"]
啤~酒！ 啤~酒！ 啤~酒！[p]
[endif]

[if exp="tf.rand == 2"]
[bg storage="evening/img22_00.png" time="1000"]
[playse storage="sizue/sz22_003.ogg" buf="0"]
哎呀，哥哥，想和阿姨聊聊吗[p]
[endif]

[if exp="tf.rand == 3"]
[bg storage="evening/img22_05.png" time="1000"]
[playse storage="sizue/sz22_004.ogg" buf="0"]
那个笨蛋老头！ 你自己去做啊~[p]
[endif]

[if exp="tf.rand == 4"]
[bg storage="evening/img22_07.png" time="1000"]
[playse storage="sizue/sz22_005.ogg" buf="0"]
哥哥，快看快看！ 特派团的邀请函来了！[p]
[endif]

[if exp="tf.rand == 5"]
[bg storage="evening/img22_08.png" time="1000"]
[playse storage="sizue/sz22_006.ogg" buf="0"]
可爱的果然还是喵太郎吧！ [p]
[endif]

[if exp="tf.rand == 6"]
[bg storage="evening/img22_15.png" time="1000"]
[playse storage="sizue/sz22_008.ogg" buf="0"]
最近有点胖了啊……[r]
虽然几乎没什么变化，但是有一点……对吧[p]
[endif]

[if exp="tf.rand == 7"]
[bg storage="evening/img22_15.png" time="1000"]
[playse storage="sizue/sz22_008.ogg" buf="0"]
最近有点胖了啊……[r]
虽然几乎没什么变化，但是有一点……对吧[p]
[endif]

[if exp="tf.rand == 8"]
[bg storage="evening/img22_13.png" time="1000"]
[playse storage="sizue/sz22_009.ogg" buf="0"]
啊，真是的！不甘心[r]
明明遇到了梦幻的奥林波康，却被逃掉了~[p]
[endif]

[if exp="tf.rand == 9"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_0.10" buf="0"]
呼……总觉得变开心起来了[p]
[endif]

[if exp="tf.rand == 10"]
[bg storage="evening/img22_03.png" time="1000"]
[playse storage="sizue/sz22_011.ogg" buf="0"]
果然，毛豆是最好的[p]
[endif]

[if exp="tf.rand == 11"]
[bg storage="evening/img22_10.png" time="1000"]
[playse storage="sizue/sz22_012.ogg" buf="0"]
卓三和元太，又没打开礼物！[r]
啊，我说的是玩口袋妖怪的朋友[p]
[endif]

[if exp="tf.rand == 12"]
[bg storage="evening/img22_19.png" time="1000"]
[playse storage="sizue/sz22_013.ogg" buf="0"]
咦~报告书是到明天为止的吗？不过总会有办法的吧[p]
[endif]

[if exp="tf.rand == 13"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_014.ogg" buf="0"]
好像在南城开了一家很棒的酒吧[p]
[endif]

[if exp="tf.rand == 14"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_015.ogg" buf="0"]
卡拉OK的话，怎么说呢~ 你喜欢老歌吗[p]
[endif]

[if exp="tf.rand == 15"]
[bg storage="evening/img22_06.png" time="1000"]
[playse storage="sizue/sz22_016.ogg" buf="0"]
跟你说件好事，水对火很强哟！ 啊，我说的是口袋妖怪[p]
[endif]

[if exp="tf.rand == 16"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_017.ogg" buf="0"]
莉菜，太严肃认真了吧！ 像我吗？ [p]
[endif]

[if exp="tf.rand == 17"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_018.ogg" buf="0"]
莉菜和莉子都成长为好孩子，妈妈很高兴！[p]
[endif]

[if exp="tf.rand == 18"]
[bg storage="evening/img22_09.png" time="1000"]
[playse storage="sizue/sz22_019.ogg" buf="0"]
还在维护呢！ 口袋妖怪！[r]
如果不按时做的话会我很困扰的！[p]
[endif]

[if exp="tf.rand == 19"]
[bg storage="evening/img22_18.png" time="1000"]
[playse storage="sizue/sz22_020.ogg" buf="0"]
悬疑剧要开始了[p]
[endif]

[if exp="tf.rand == 20"]
[bg storage="evening/img22_19.png" time="1000"]
[playse storage="sizue/sz22_021.ogg" buf="0"]
不知道为什么在看电影的时候会睡着[p]
[endif]

[if exp="tf.rand == 21"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_022.ogg" buf="0"]
我很喜欢尖叫系的交通工具[p]
[endif]

[if exp="tf.rand == 22"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_023.ogg" buf="0"]
下次一起去喝酒？ 阿姨我很强的哟[p]
[endif]

[if exp="tf.rand == 23"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_024.ogg" buf="0"]
电池很快就没电了，所以我随身带着电池。[p]
[endif]

[if exp="tf.rand == 24"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_025.ogg" buf="0"]
不快点洗澡的话莉菜会生气的[r]
哥哥要一起吗[p]
[endif]

[if exp="tf.rand == 25"]
[bg storage="evening/img22_00.png" time="1000"]
[playse storage="sizue/sz22_026.ogg" buf="0"]
终于到了啤酒花园的季节了[r]
期待[p]
[endif]

[if exp="tf.rand == 26"]
[bg storage="evening/img22_04.png" time="1000"]
[playse storage="sizue/sz22_027.ogg" buf="0"]
每天都好热啊~[p]
[endif]

[if exp="tf.rand == 27"]
[bg storage="evening/img22_02.png" time="1000"]
[playse storage="sizue/sz22_028.ogg" buf="0"]
喂~ 哥哥！不要喝阿姨的酒啊~！[p]
[endif]

[if exp="tf.rand == 28"]
[bg storage="evening/img22_19.png" time="1000"]
[playse storage="sizue/sz22_029.ogg" buf="0"]
真是的，莉菜总是对我生气啊！[r]
莉子不也玩了很多游戏吗，对吧……[p]
[endif]

[if exp="tf.rand == 29"]
[bg storage="evening/img22_01.png" time="1000"]
[playse storage="sizue/sz22_030.ogg" buf="0"]
干满工作之后喝啤酒真是美味啊[p]
[endif]

;静江さん好感度増加
[sizue_f]

#
和静江闲聊了！[p]

[return]

;***********************************************************************************************************************
;-お風呂イベント
*bath
[if exp="f.riko_f >= 80 && f.riko_bath == undefined"]
 [jump target="*bath_riko"]
[endif]

[if exp="f.riko_h >= 50 && f.riko_bath2 == undefined"]
 [jump target="*bath_riko2"]
[endif]

[if exp="f.rina_f >= 80 && f.rina_bath == undefined"]
 [jump target="*bath_rina"]
[endif]

[if exp="f.rina_h >= 50 && f.rina_bath2 == undefined"]
 [jump target="*bath_rina2"]
[endif]

[if exp="f.sizue_f >= 80 && f.sizue_bath == undefined"]
 [jump target="*bath_sizue"]
[endif]

[if exp="f.sizue_h >= 75 && f.sizue_bath2 == undefined"]
 [jump target="*bath_sizue2"]
[endif]

[return]
;***********************************************************************************************************************
;--莉子お風呂
*bath_riko
[bg storage ="room_night.png" time="1000"]
[menuwindows]
#
接下来，去洗个澡吧[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

[movie storage="mov_14_4.webm" skip="true"]


[bg storage="evening/img14_10.png" time="1000"]

[menuwindows]
#莉子
[playse storage="riko/rk14_005.ogg" buf="0"]
呀！！[p]
#
哇哇哇！！[p]
[bg storage="evening/img14_09.png" time="1000"]
#莉子
[playse storage="riko/rk14_006.ogg" buf="0"]
大叔，你故意的吧![p]
#
不!不是的。[r]
真的是弄错了……[p]
#莉子
[playse storage="riko/rk14_007.ogg" buf="0"]
嗯，怎么说呢?大叔的眼神就像萝莉控……[p]
#
饶了我吧……[p]
#莉子
[playse storage="riko/rk14_008.ogg" buf="0"]
好吧，算了[r]
这次就算了!下次请我吃东西![p]
#
太好了……总算是得到了原谅……[p]
[eval exp="f.riko_bath = true"]
[return]

;***********************************************************************************************************************
;--	莉菜お風呂
*bath_rina
[bg storage ="room_night.png" time="1000"]
[menuwindows]
#
接下来，去洗个澡吧[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

[movie storage="mov_15_3_1.webm" skip="true"]


[menuwindows]
[bg storage="evening/img15_08.png" time="1000"]
#
……[l]……[l]……[p]
那个……莉菜……刚才对不起。[p]
#莉菜
[playse storage="rina/rn15_006.ogg" buf="0"]
我才是……没有锁门[r]
哥哥请不要介意[p]
#
太好了，得到了原谅[p]

[eval exp="f.rina_bath = true"]
[return]

;***********************************************************************************************************************
;--	静江お風呂
*bath_sizue
[bg storage ="room_night.png" time="1000"]
[menuwindows]
#
接下来，去洗个澡吧[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

[movie storage="mov_16_3_1.webm" skip="true"]


[menuwindows]
[bg storage="evening/img16_05.png" time="1000"]
#静江
[playse storage="sizue/sz16_011.ogg" buf="0"]
怎么了？定在了那里……[p]
[playse storage="sizue/sz16_011_2.ogg" buf="0"]
啊！真是的，看到阿姨裸体很开心吗？你不是在开玩笑吧？[p]
呃！[p]
[playse storage="sizue/sz16_012.ogg" buf="0"]
我不是说了下一次要拳头伺候的嘛？[p]
#
对，对不起。[p]

[eval exp="f.sizue_bath = true"]
[return]

;***********************************************************************************************************************
;--莉子お風呂2
*bath_riko2
[bg storage ="room_night.png" time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
#
接下来，去洗个澡吧[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="bass.ogg" loop="true"]
[bgmovie storage="mov_14_16.webm"]
#
哇哇，莉子！[p]
#莉子
[playse storage="riko/rk14_012.ogg" buf="0"]
大叔，一起洗吧[p]
[stop_bgmovie]
[bgmovie storage="mov_14_17.webm"]
#莉子
[playse storage="riko/rk14_013.ogg" buf="0"]
大叔，好好洗啊[p]
#
额，嗯！！[p]
#莉子
[playse storage="riko/rk14_014.ogg" buf="0"]
大叔，好像有什么东西在打我的背[p]
#
啊……不……那是[p]
#莉子
[playse storage="riko/rk14_015.ogg" buf="0"]
因为小孩的裸体而产生了情欲？[p]
#
不……不是那样的……[p]
#莉子
[playse storage="riko/rk14_016.ogg" buf="0"]
即使它已经那么大了？[p]
#
…………[p]
#莉子
[playse storage="riko/rk14_017.ogg" buf="0"]
我惩罚你说谎[p]
[stop_bgmovie]
[bgmovie storage="mov_14_18.webm"]

#莉子
[playse storage="riko/rk14_018.ogg" buf="0"]
大叔你现在在做什么？[p]
#
嗯？[p]
#莉子
[playse storage="riko/rk14_019.ogg" buf="0"]
你在干什么！[p]
#
额，肉棒正在被……[p]
肉棒正在被……莉子脚玩弄着[p]
#莉子
[playse storage="riko/rk14_020.ogg" buf="0"]
为什么会变成这样？[p]
#
这……这是因为……我对小孩的裸体[r]
……产生了情欲[p]
#莉子
[playse storage="riko/rk14_021.ogg" buf="0"]
你反省了吗？[p]
#
嗯，我反省了[p]
#莉子
[playse storage="riko/rk14_022.ogg" buf="0"]
那，想让我停下来吗？[p]
#
诶！不……也……请更多…一点[p]
[stop_bgmovie]
[bgmovie storage="mov_14_20.webm"]

#莉子
[playse storage="riko/rk14_024.ogg" buf="0"]
舒服吗？[p]
#
好……好舒服[p]
#莉子
[playse storage="riko/rk14_025.ogg" buf="0"]
被小孩的脚玩弄到舒服，大叔真是变态啊[p]
#
嗯……叔叔我就是个变态[p]
[stop_bgmovie]
[bgmovie storage="mov_14_19.webm"]

#莉子
[playse storage="riko/rk14_026.ogg" buf="0"]
大叔的肉棒要放进来吗？[p]
#
诶！……啊……不…想……想放进去[p]
#莉子
[playse storage="riko/rk14_027.ogg" buf="0"]
你想把它放在哪里？大叔的肉棒[r]
你想把它放在哪里？[p]
#
我想放到莉子的小穴里！[p]
#莉子
[playse storage="riko/rk14_028.ogg" buf="0"]
想塞入小孩的小穴里，大叔果然很变态呢[r]
但是……不行，大变态用脚就很足够了[p]
#
诶，怎么会……[p]
#莉子
[playse storage="riko/rk14_029.ogg" buf="0"]
快点用脚完事吧，你个变态！[p]
#

[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_14_21.webm" skip="true"]
[stop_bgmovie]
[menuwindows]

[bgmovie storage="mov_14_22.webm"]

#莉子
[playse storage="riko/rk14_030.ogg" buf="0"]
啊~啊，射出了这么多……脚都弄脏了！[p]
#

;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[stop_bgmovie]
[fadeoutbgm]

[eval exp="f.riko_bath2 = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

#
莉子的足交感觉真棒！[p]
#
回到了房间[r]

[return]

;***********************************************************************************************************************
;--莉菜お風呂2
*bath_rina2
[bg storage ="room_night.png" time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
#
接下来，去洗个澡吧[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="bass.ogg" loop="true"]
[bgmovie storage="mov_15_16.webm"]
#
哦哦！莉菜来了啊！[p]
#莉菜
[playse storage="rina/rn15_020.ogg" buf="0"]
真是的，是哥哥你拜托我……拿你没办法我才来的！[p]
#
莉菜，不要这么藏着，多给我看看[p]
[stop_bgmovie]
[bgmovie storage="mov_15_17.webm"]
#莉菜
[playse storage="rina/rn15_021.ogg" buf="0"]
诶！不…不行啦…好害羞…[p]
#
来嘛，莉菜的大胸部，给我看看[p]
#莉菜
[playse storage="rina/rn15_022.ogg" buf="0"]
哥，哥哥…… 被这么看着的话…… 好好难为情啊……[p]
#
莉菜，我帮你好好洗一洗[p]
[stop_bgmovie]
[bgmovie storage="mov_15_18.webm"]
#莉菜
[playse storage="rina/rn15_023.ogg" buf="0" loop="true"]
啊……啊…… 嗯…… 啊…… 嗯…… 哈……哈[r]
呀！嗯…… 哥哥…… 嗯…哈…啊嗯[p]
#莉菜
[playse storage="rina/rn15_024.ogg" buf="0"]
啊嗯！……不……不要……哥哥……这……[p]
[stop_bgmovie]
[playse storage="rina/rn15_025.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgmovie storage="mov_15_19.webm"]
莉菜的这里我也帮你好好洗一洗[p]
#莉菜
[playse storage="rina/rn15_026.ogg" buf="0"]
已，已经……不行了！　哥哥……这次我来洗！[p]

#
那，你来当清洗的人，莉菜 [p]
[stop_bgmovie]
[bgmovie storage="mov_15_20.webm"]
[playse storage="rina/rn15_025.ogg" loop="true"]
#
莉菜……好舒服……[p]
[playse storage="rina/rn15_027.ogg" buf="0"]
啊，啊……嗯……哥哥……哥哥……嗯，[r]
啊嗯……不，不行……哥哥……莉菜……好舒服！[p]
[playse storage="rina/rn15_025.ogg" loop="true"]
#
莉菜……射了……一起去吧[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_15_21.webm" skip="true"]
[playse storage="rina/rn15_029_1.ogg" loop="true"]
[bgloop mov="mov_15_22.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[stop_bgmovie]
[fadeoutbgm]

[eval exp="f.rina_bath2 = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
和莉菜洗澡，真舒服啊！[p]
#
返回了房间[r]

[return]

;***********************************************************************************************************************
;--静江お風呂2
*bath_sizue2
[bg storage ="room_night.png" time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
#
接下来，去洗个澡吧[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="bass.ogg" loop="true"]

[bgmovie storage="mov_16_14.webm"]
#静江
[playse storage="sizue/sz16_023.ogg" buf="0"]
哥哥，阿姨给你擦背[p]
#
哇！　啊……等等[p]
[stop_bgmovie]
[bgmovie storage="mov_16_15.webm"]
#静江
[playse storage="sizue/sz16_024.ogg" buf="0"]
喂，有什么好藏的。既然是男孩子，就应该直接一点！[r]
哎呀哎呀！　已经这样了吗……年轻人啊[p]
[playse storage="sizue/sz52_009.ogg" buf="0"]
#静江
哥哥，舒服吗？[r]
哥哥一脸舒服的表情，真可爱！[p]
#
很舒服！静江小姐！[p]
[stop_bgmovie]
[bgmovie storage="mov_16_16.webm"]
[playse storage="sizue/sz16_025.ogg" buf="0"]
#静江
用哥哥最喜欢的胸部，给你做！　你喜欢胸部对吧？[p]
#
是，是的……喜欢……静江小姐的胸部……我很喜欢[p]
[playse storage="sizue/sz16_026.ogg" buf="0"]
#静江
舒服吗？　哥哥的肉棒[r]
在阿姨的胸部当中一跳一跳的[p]
#
糟糕……太舒服了……好像要去了……[p]
[playse storage="sizue/sz16_027.ogg" buf="0"]
#静江
嘿嘿……可以哟，可以在阿姨的胸部里面[r]
满满的，biubiu～的射出来[p]
#
啊！到极限了！射了！啊啊啊！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_16_17.webm" skip="true"]
[stop_bgmovie]
[movie storage="mov_16_18.webm" skip="true"]
[stopse buf="0"]
[stopse buf="3"]


;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[stop_bgmovie]
[fadeoutbgm]

[eval exp="f.sizue_bath2 = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
和静江小姐洗澡，真舒服啊！[p]
#
返回了房间[r]

[return]