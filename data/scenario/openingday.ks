;初日

*start

[cm]
[clearfix]
[start_keyconfig]

[movie storage="mov_01.webm" skip=true ]

@bg storage ="living.png" time=1000

;メッセージウィンドウの表示
[menuwindows]

那么，我……[l][r][er]
樱子在瞪着我……[r]
应该帮谁呢……[p]
怎么办？

[glink  color="pink" size="20"  x="400"  width="400"  y="150"  text="帮莉子打扫卫生"  target="*riko"  ]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="跟莉菜去购物"  target="*rina"  ]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="帮静江清扫浴室"  target="*sizue"  ]
[s]

*riko
;莉子ちゃんとお掃除
;好感度上昇
[eval exp="f.riko_f = f.riko_f + 5"]


;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

@bg storage ="black.png" time=1000"
[movie storage="mov_02.webm" skip=true ]


@jump target="*dinner"

*rina
;莉菜ちゃんとお買い物
;好感度上昇
[eval exp="f.rina_f = f.rina_f + 5"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

@bg storage ="black.png" time=1000"
[movie storage="mov_03.webm" skip=true ]

@jump target="*dinner"

*sizue
;静江さんとお風呂掃除
;好感度上昇
[eval exp="f.sizue_f = f.sizue_f + 5"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

@bg storage ="black.png" time=1000"
[movie storage="mov_04.webm" skip=true ]

@jump target="*dinner"

*dinner
[movie storage="mov_05.webm" skip=true ]

[movie storage="mov_06.webm" skip=true ]

*room

@bg storage ="room_night.png" time=1000

;メッセージウィンドウの表示
[menuwindows]

回到了自己房间[p]
因为我家有多余的房间，我带她们去了各自的房间[p]
莉菜，莉子住在2楼[l][r]
静江小姐住在一楼的日式房间[p]
最后去洗澡了……
心跳加速……[p]

[chara_show name="sakurako" face="niko" left=100 ]
#樱子
[playse storage="sakurako/sa07_001.ogg" buf="0"]
你已经做过色色的事了吗[p]
#
哈？什么！说什么呢？[p]
#樱子
[chara_mod  name="sakurako" face="akireru" ]
[playse storage="sakurako/sa07_002.ogg" buf="0"]
什么嘛，还没啊……真是个不中用的家伙啊[p]
#
(说什么啊？你这个天使……)[p]
#樱子
[chara_mod  name="sakurako" face="default" ]
[playse storage="sakurako/sa07_003.ogg" buf="0"]
啊，对了，你好像挺有钱的样子[r]
但除了生活费以外禁止使用[p]
#
诶！为什么？[p]
#樱子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa07_004.ogg" buf="0"]
这是当然的！因为这是死宅重生计划[r]
你必须给我出去工作[p]
#
诶诶~工作！[r]
这……这就有点……[p]
#樱子
[playse storage="sakurako/sa07_005.ogg" buf="0"]
嗯？怎么了[p]
#
不，“工作就输了”是我的家训[p]
#樱子
[playse storage="sakurako/sa07_006.ogg" buf="0"]
有那种东西吗！ 如果有的话，不工作的人不就都饿死了吗[p]
#
咕……[p]
#樱子
[chara_mod  name="sakurako" face="default" ]
[playse storage="sakurako/sa07_007.ogg" buf="0"]
我已经找到打工的地方，放心吧[p]
#
在主角的选择中添加了打工。[p]
双休日工作的话工资更多[r]
体力消耗过多就会病倒，还请注意！[p]
#樱子
[playse storage="sakurako/sa07_008.ogg" buf="0"]
从现在开始我每天晚上都可以占卜你的状态[p]
#
状态？[p]
#樱子
[playse storage="sakurako/sa07_009.ogg" buf="0"]
看看你与那一家人的关系有多好啊[p]
#
哦！这很方便啊[p]
#樱子
[chara_mod  name="sakurako" face="niya" ]
[playse storage="sakurako/sa07_010.ogg" buf="0"]
一次500日元[p]
#
还要收钱的吗！[r]
话说你要钱有什么用啊[p]
#樱子
[playse storage="sakurako/sa07_011.ogg" buf="0"]
第一次就免费出血大放送，赶紧试试吧[p]

;占いステータス画面コール
[call storage="status.ks"]

#樱子
[chara_mod  name="sakurako" face="panchi02" ]
[playse storage="sakurako/sa07_013.ogg" buf="0"]
这个用来给你参考与那一家人的H度……要和她们搞好关系啊！[p]

#
好……好的[p]

#樱子
[playse storage="sakurako/sa07_015.ogg" buf="0"]
一天结束时要写日记[p]

#
日记？ 我没写过那种东西[p]

#樱子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa07_016.ogg" buf="0"]
这也是重生计划的一环，给我好好写！[p]

#
在一天结束时写日记可以保存游戏[p]


[chara_mod  name="sakurako" face="akubi" ]
（这位天使一直在我的房间里吗？[r]
……突然有点想逃怎么办……）[p]
总之先写日记然后睡觉吧[p]

;セーブ画面移動
[showsave]
;バージョンが上がったら消す
[eval exp="f.save_v = 1.03"]
;画面暗転
[mask time="500"]
;レイヤ全消去
[cm]
[clearfix]
@layopt layer="message" visible=false
[chara_hide name="sakurako" time="0"]
[freeimage layer="base" time="0"]

[mask_off]
[return]
