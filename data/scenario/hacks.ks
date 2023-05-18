; 宏定义
[iscript]
var hacks={
    baseUrl: "http://127.0.0.1:33744"
};
[endscript]

[macro name="send_stat"]
[iscript]
$.send("http://127.0.0.1:33744" + "/api/stat", {
    f: f
});
[endscript]
[endmacro]
