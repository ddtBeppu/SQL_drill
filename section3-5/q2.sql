/* 問2 */
/*
社員テーブル（employee）上、名前が「山田奈美」さんの役職を「主任」に、最終更新日を今日の日付にしてみましょう。
*/

/** 解答 **/
UPDATE -- 以下のテーブルの値を更新
    employee -- 社員テーブル
SET -- 以下の値に更新
    class = "主任", -- 役職を「主任」にする
    last_update = CURRENT_DATE -- 最終更新日を今日の日付にする
WHERE -- 以下の条件に合致するカラムを更新
    (
        l_name = "山田" -- 姓が「山田」
    AND -- かつ
        f_name = "奈美" -- 名が「奈美」
    )
;

/* 更新前*/
+---------+-----------+-----------+--------------+-----------------+------+--------------------+-----------+---------+-------------+---------+
| s_id    | l_name    | f_name    | l_name_kana  | f_name_kana     | sex  | class              | depart_id | b_id    | last_update | retired |
+---------+-----------+-----------+--------------+-----------------+------+--------------------+-----------+---------+-------------+---------+
| AI00001 | 相沢      | 聡        | アイザワ     | サトシ          |    1 | リーダ             | S02       | NULL    | 2012-02-24  |       0 |
....
| YA00001 | 山田      | 奈美      | ヤマダ       | ナミ            |    2 | マネージャ         | S01       | SA00001 | 2012-10-15  |       0 |
+---------+-----------+-----------+--------------+-----------------+------+--------------------+-----------+---------+-------------+---------+
26 rows in set (0.01 sec)

/* 更新後 */
+---------+-----------+-----------+--------------+-----------------+------+--------------------+-----------+---------+-------------+---------+
| s_id    | l_name    | f_name    | l_name_kana  | f_name_kana     | sex  | class              | depart_id | b_id    | last_update | retired |
+---------+-----------+-----------+--------------+-----------------+------+--------------------+-----------+---------+-------------+---------+
| AI00001 | 相沢      | 聡        | アイザワ     | サトシ          |    1 | リーダ             | S02       | NULL    | 2012-02-24  |       0 |
....
| YA00001 | 山田      | 奈美      | ヤマダ       | ナミ            |    2 | 主任               | S01       | SA00001 | 2018-10-11  |       0 |
+---------+-----------+-----------+--------------+-----------------+------+--------------------+-----------+---------+-------------+---------+
26 rows in set (0.00 sec)