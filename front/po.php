<div>目前位置:首頁>分類往誌><span id="type">健康新知</span></div>
<fieldset>
    <legend>分類網誌</legend>
    <a class="type-item" data-type="1">健康新知</a>
    <a class="type-item" data-type="2">菸害防治</a>
    <a class="type-item" data-type="3">癌症防治</a>
    <a class="type-item" data-type="4">慢性病防治</a>
</fieldset>
<fieldset>
    <legend>文章列表</legend>
    <div class="list-items"></div>
    <div class="article"></div>
</fieldset>
<script>
    getlist(1)
    $(".type-item").on('click',function(){
        $("#type").text($(this).text())
        let type=$(this).data('type')
        console.log('type',type);
        getlist(type)
    })
    function getlist(type){
        $.post("./api/getlist.php",{type},(res)=>{
            $(".list-items").html(res)
            $(".article").html("")
        })
    }
function getnews(id){
    $.post("./api/getnews.php",{id},(res)=>{
        $(".list-items").html("")
        $(".article").html(res)
    })
}
</script>