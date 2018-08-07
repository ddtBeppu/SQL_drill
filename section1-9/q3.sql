/* 問3 */
/*
月間売り上げテーブル（sales）で、店舗別の累計売上高を算出するためのSQL命令を記述してみましょう。
*/

/** 解答 **/
mysql> SELECT
    ->  s_id,
    ->  SUM(s_value)
    -> FROM
    ->  sales
    -> GROUP BY
    ->  s_id
    -> ;
+-------+--------------+
| s_id  | SUM(s_value) |
+-------+--------------+
| H0001 |        19836 |
| K0001 |        21376 |
| K0002 |        20580 |
| M0001 |        21929 |
| M0002 |        12032 |
| N0001 |        20988 |
+-------+--------------+
6 rows in set (0.00 sec)
