;pcを見る
;***********************************************************************************************************************
*shop
#
;ほほう！コスプレ衣装が売っている[p]
*product
;[eval exp="tf.y_iti = 150"]
;[if exp="tf.sentaku_01  == undefined"]
;[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="スクール水着"  target="*swimwear"]
;[eval exp="tf.y_iti = tf.y_iti + 100"]
;[endif]
;[if exp="tf.sentaku_01  == undefined"]
;[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="メイド服"  target="*maid"]
;[eval exp="tf.y_iti = tf.y_iti + 100"]
;[endif]
;[if exp="tf.sentaku_01  == undefined"]
;[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="ナース服"  target="*narse"]
;[eval exp="tf.y_iti = tf.y_iti + 100"]
;[endif]
;[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="やめる"  target="*return"]

有各种各样的商品啊[p]
[glink  color="pink" size="20"  x="500"  width="200"  y="150"  text="校泳衣"  target="*swimwear"]
[glink  color="pink" size="20"  x="800"  width="200"  y="150"  text="女仆服"  target="*maid"]
[glink  color="pink" size="20"  x="500"  width="200"  y="220"  text="护士服"  target="*narse"]
[glink  color="pink" size="20"  x="800"  width="200"  y="220"  text="振动棒 S"  target="*vibrator_s"]
[glink  color="pink" size="20"  x="500"  width="200"  y="290"  text="振动棒 M"  target="*vibrator_m"]
[glink  color="pink" size="20"  x="800"  width="200"  y="290"  text="振动棒 L"  target="*vibrator_l"]
[glink  color="pink" size="20"  x="500"  width="200"  y="360"  text="跳蛋"  target="*rotor"]
;***********************************************************************************************************************
;fanza特典
;[if exp="f.version_dl == 'fanza'"]
[glink  color="pink" size="20"  x="800"  width="200"  y="360"  text="体操服"  target="*training_wear"]
;[endif]
;***********************************************************************************************************************
;DLsite特典
;[if exp="f.version_dl == 'dlsite'"]
[glink  color="pink" size="20"  x="500"  width="200"  y="430"  text="书包"  target="*school_bag"]
;[endif]
;***********************************************************************************************************************
[glink  color="pink" size="20"  x="650"  width="200"  y="500"  text="算了"  target="*return"]
[s]
;***********************************************************************************************************************
;-スクール水着
*swimwear
[if exp="f.item[0] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 0"]
[eval exp="f.goods_name = '　校泳衣　'"]
[eval exp="f.goods_price = 20000"]
[cm]
旧的校泳装吗……[p]
价格是20000日元……怎么办？[p]
[jump target="*select"]
;***********************************************************************************************************************
;-メイド服
*maid
[if exp="f.item[1] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 1"]
[eval exp="f.goods_name = '　女仆服　'"]
[eval exp="f.goods_price = 18000"]
[cm]
女仆服吗……[p]
价格是18000日元……怎么办？[p]
[jump target="*select"]
;***********************************************************************************************************************
;-ナース服
*narse
[if exp="f.item[2] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 2"]
[eval exp="f.goods_name = '　护士服　'"]
[eval exp="f.goods_price = 16000"]
[cm]
护士服吗……[p]
价格是16000日元……怎么办？[p]
[jump target="*select"]
;***********************************************************************************************************************
;***********************************************************************************************************************
;-バイブS
*vibrator_s
[if exp="f.item[3] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 3"]
[eval exp="f.goods_name = '　振动棒 Ｓ　'"]
[eval exp="f.goods_price = 20000"]
[cm]
震动棒 S型号吗……[p]
价格是20000日元……怎么办？かな？
[jump target="*select"]
;***********************************************************************************************************************
;-バイブM
*vibrator_m
[if exp="f.item[4] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 4"]
[eval exp="f.goods_name = '　振动棒 Ｍ　'"]
[eval exp="f.goods_price = 20000"]
[cm]
震动棒 M型号吗……[p]
价格是20000日元……怎么办？
[jump target="*select"]
;***********************************************************************************************************************
;-バイブL
*vibrator_l
[if exp="f.item[5] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 5"]
[eval exp="f.goods_name = '　振动棒 Ｌ'　"]
[eval exp="f.goods_price = 20000"]
[cm]
震动棒 L型号吗……[p]
价格是20000日元……怎么办？
[jump target="*select"]
;***********************************************************************************************************************
;-ローター
*rotor
[if exp="f.item[6] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 6"]
[eval exp="f.goods_name = '　跳蛋　'"]
[eval exp="f.goods_price = 20000"]
[cm]
跳蛋吗……[p]
价格是20000日元……怎么办？
[jump target="*select"]
;***********************************************************************************************************************
;体操着
*training_wear
[if exp="f.item[7] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 7"]
[eval exp="f.goods_name = '　体操服　'"]
[eval exp="f.goods_price = 18000"]
[cm]
体操服吗……[p]
价格是18000日元……怎么办？
[jump target="*select"]
;***********************************************************************************************************************
;ランドセル
*school_bag
[if exp="f.item[8] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 8"]
[eval exp="f.goods_name = '　书包　'"]
[eval exp="f.goods_price = 22000"]
[cm]
书包吗……[p]
价格是22000日元……怎么办？
[jump target="*select"]
;***********************************************************************************************************************
*have
这个已经有了[p][p]
[jump target="*product"]
;***********************************************************************************************************************
;確認ダイアログ
*select
[layopt layer="1" visible="true"]
[image storage="window_02.png" layer="1" x="575" y="250" width="350" height="192" ]
[ptext layer="1" text="'是否要买'+&f.goods_name+'？'" x="610" y="300" vertical="" size="20" shadow="0x000000" ]
[glink  color="pink" size="20"  x="600"  width="60"  y=360  text="是"  target="*select2"]
[glink  color="pink" size="20"  x="750"  width="60"  y=360  text="否"  target="*select_clear"]
[s]
*select_clear
[freeimage layer="1"]
[jump target="*product"]
*select2
[freeimage layer="1"]
;***********************************************************************************************************************
;金額チェック
[if exp="f.money < f.goods_price"]
钱不够……[p]
[jump target="*product"]
[endif]
买好了[r]
[eval exp="f.money = f.money - f.goods_price"]
[eval exp="f.delivery = f.goods"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
商品好像明天就能送到[p]

*return
[return]