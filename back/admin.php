<fieldset>
    <legend>帳號管理</legend>
    <form action="./api/edit_user.php" method="post">
        <table>
            <tr class="clo">
                <th>帳號</th>
                <th>密碼</th>
                <th>刪除</th>
            </tr>
            <?php
            $rows = $User->all();
            foreach ($rows as $row) {
            ?>
                <tr>
                    <td><?=$row['acc'];?></td>
                    <!-- <td><input style="border:0px" type="password" name="" value="<?=$row['acc'];?>"></td> -->
                    <td><?=str_repeat("*",mb_strlen($row['acc']));?></td>
                    <td><input type="checkbox" name="del[]" value=""></td>
                </tr>
            <?php
            }
            ?>
        </table>
        <div class="ct">
            <input type="submit" value="確定刪除">
            <input type="reset" value="清空選取">
        </div>
    </form>
</fieldset>