;-配列表
;--場所
*location
; 1　莉子　2　莉菜　3　静江
;---------------------------------   月火水木金土日月火水木金土日月火水木金土日月火水木金土日
;  ------ー------------------------0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8
;---図書館
       [eval exp="f.library_day = [0,0,0,2,0,1,0,0,0,2,1,0,0,0,0,2,0,2,0,1,0,0,1,0,2,0,0,0,0]"]
;---本屋
          [eval exp="f.book_day = [0,0,2,0,1,0,0,0,0,0,2,1,3,0,0,0,0,3,1,0,0,0,2,0,0,1,0,0,0]"]
;---ゲームセンタ
        [eval exp="f.arcade_day = [0,0,0,1,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0]"]
;---カフェ
          [eval exp="f.cafe_day = [0,0,0,3,0,3,0,0,0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,3,0,0,4,0,0]"]
;---公園
          [eval exp="f.park_day = [0,1,3,0,3,0,0,0,0,3,0,0,0,0,0,0,1,0,3,0,0,0,0,0,1,0,0,0,0]"]
;---商店街
[eval exp="f.shoppingstreet_day = [0,2,0,0,2,0,0,0,2,0,0,2,0,0,0,0,0,5,2,0,0,0,0,0,0,2,0,0,0]"]
;---駄菓子
         [eval exp="f.store_day = [0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0]"]
         
         [eval exp="f.place_name = ['放弃','回家','书店','咖啡馆','图书馆','公园','商店街','粗点心屋','游戏厅']"]

[return]
