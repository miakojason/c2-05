<fieldset>
    <legend>目前位置:首頁>最新文章區</legend>
    <table>
        <tr>
            <th>標題</th>
            <th>內容</th>
        </tr>
        <?php
        $rows = $News->all(['sh' => 1]);
        foreach ($rows as $row) {
        ?>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <?php
        }
        ?>
    </table>
</fieldset>