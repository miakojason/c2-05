<fieldset>
    <legend>目前位置:首頁>最新文章區</legend>
    <table>
        <tr>
            <th>標題</th>
            <th>內容</th>
            <th></th>
        </tr>
        <?php
        $total = $News->count(['sh' => 1]);
        $div = 5;
        $pages = ceil($total / $div);
        $now = $_GET['p'] ?? 1;
        $start = ($now - 1) * $div;
        $rows = $News->all(['sh' => 1], " limit $start,$div");
        foreach ($rows as $row) {
        ?>
            <tr>
                <td class="clo item" data-id="<?= $row['id']; ?>"><?= $row['title']; ?></td>
                <td>
                    <div id="s<?= $row['id']; ?>"><?= mb_substr($row['text'], 0, 20); ?>...</div>
                    <pre id="a<?= $row['id']; ?>" style="display: none;"><?= $row['text']; ?></pre>
                </td>
                <td>
                    <?php
                    if (isset($_SESSION['user'])) {
                        if($Log->count(['news'=>$row['id'],'acc'=>$_SESSION['user']])>0){
                            echo "<a onclick='good({$row['id']})'>收回讚</a>";
                        }else{
                            echo "<a onclick='good({$row['id']})'>讚</a>";
                        }
                    }
                    ?>
                </td>

            </tr>
        <?php
        }
        ?>
    </table>
    <div>
        <?php
        if ($now > 1) {
            $prev = $now - 1;
            echo "<a href='?do=$do&p=$prev'><</a>";
        }
        for ($i = 1; $i <= $pages; $i++) {
            $fontsize = ($now == $i) ? '24px' : '16px';
            echo "<a href='?do=$do&p=$i'style='cont-size:$fontsize'>$i</a>";
        }
        if ($now < $pages) {
            $next = $now + 1;
            echo "<a href='?do=$do&p=$next'>></a>";
        }
        ?>
    </div>
</fieldset>
<script>
    $(".item").on('click', function() {
        let id = $(this).data('id')
        $("#s" + id).toggle()
        $("#a" + id).toggle()
    })
    function good(id){
        $.post("./api/good.php",{id},()=>{
            location.reload();
        })
    }
</script>
