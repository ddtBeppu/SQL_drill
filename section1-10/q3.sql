/* 問3 */
/*
ユーザテーブル（usr）から都道府県別のユーザ数を求めてみましょう。
なお、取り出す列の別名は、それぞれ「都道府県名」「ユーザ数」とします。
*/

/** 解答 **/
mysql> SELECT -- 選択
    ->  prefecture AS 都道府県名, -- prefecture列を「都道府県名」として選択
    ->  COUNT(*) AS ユーザ数 -- データの総数を「ユーザ数」として取り出す
    -> FROM -- テーブルを指定
    ->  usr -- ユーザテーブルを指定
    -> GROUP BY -- 以下のカラムでまとめる
    ->  prefecture -- 都道府県名
    -> ;
+-----------------+--------------+
| 都道府県名      | ユーザ数     |
+-----------------+--------------+
| 千葉県          |            4 |
| 神奈川県        |            4 |
| 茨城県          |            4 |
| 東京都          |            3 |
| 埼玉県          |            2 |
| 栃木県          |            2 |
| 静岡県          |            2 |
+-----------------+--------------+
7 rows in set (0.00 sec)
