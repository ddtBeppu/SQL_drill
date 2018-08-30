/* 問2 */
/*
社員テーブル（employee）と所属部署テーブル（depart）を結合し、所属社員が一人もいない「幽霊部署」を洗い出してみましょう。
*/

/** 解答 **/
mysql> SELECT -- 選択
    ->     d.depart_id, -- 部署ID
    ->     d.depart_name -- 部署名
    -> FROM -- テーブルを指定
    ->     depart AS d -- 所属部署テーブル
    -> LEFT JOIN -- テーブルを外部結合
    ->     employee AS e -- 社員テーブル
    -> ON -- 以下の項目について結合
    ->     d.depart_id = e.depart_id -- 部署IDが等しいところで結合
    -> WHERE -- 以下の条件で絞り込み
    ->     e.s_id IS NULL -- 社員IDが空欄、すなわち社員がいない部署を探す
    -> ;
+-----------+-----------------+
| depart_id | depart_name     |
+-----------+-----------------+
| E02       | 第二営業部      |
+-----------+-----------------+
1 row in set (0.00 sec)