<fieldset>
    <legend>查詢密碼</legend>
    <div>請輸入信箱以查詢密碼</div>
    <input type="text" name="eamil" id="email">
    <div id="result"></div>
    <button onclick="forget()">尋找</button>
</fieldset>
<script>
    function forget(){
         let email=$("#email").val()
         $.post("./api/forget.php",{email},(res)=>{
            $("#result").text(res)
         })
    }
</script>