; 初始化
[iscript]
// 公共数据
sf.hacks = {
    baseUrl: "http://127.0.0.1:33744"
};

// 事件监听

[endscript]

; 宏定义

[macro name="send_stat"]
[iscript]
$.send(sf.hacks.baseUrl + "/api/stat", {
    f: f
});
[endscript]
[endmacro]

[macro name="update_title"]
[iscript]
tf._hack_update_title_name = f.place_name[tf.place] + "，" + f.day + "日，" + f.week[f.oneweek]
[endscript]
[title name=&tf._hack_update_title_name]
[endmacro]
