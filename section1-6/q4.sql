/* 問4 */
/*
社員テーブル（employee）から「山田奈美」さんの情報を取り出してみましょう。
すべての列を取り出すものとします。
*/

-- 社員テーブル（employee）から「山田奈美」さんの情報を取り出す
mysql> SELECT -- 選択
    ->  * -- 全列の情報を取り出す
    -> FROM -- テーブルを指定
    ->  employee -- employeeテーブルを指定
    -> WHERE -- 条件を指定
    ->  (
    ->   l_name = '山田' -- 氏が「山田」
    ->  AND -- かつ
    ->   f_name = '奈美' -- 名が「奈美」
    ->  )
    -> ;
+---------+--------+--------+-------------+-------------+------+--------+-----------+---------+-------------+---------+
| s_id    | l_name | f_name | l_name_kana | f_name_kana | sex  | class  | depart_id | b_id    | last_update | retired |
+---------+--------+--------+-------------+-------------+------+--------+-----------+---------+-------------+---------+
| YA00001 | 山田   | 奈美   | ヤマダ      | ナミ        |    2 | 課長   | S01       | SA00001 | 2012-10-15  |       0 |
+---------+--------+--------+-------------+-------------+------+--------+-----------+---------+-------------+---------+
1 row in set (0.00 sec)
