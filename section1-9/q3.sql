/* 問3 */
/*
月間売り上げテーブル（sales）で、店舗別の累計売上高を算出するためのSQL命令を記述してみましょう。
*/

/** 解答 **/
mysql> SELECT -- 選択
    ->  s_id, -- 店舗コード
    ->  SUM(s_value) -- 累計売上高
    -> FROM -- テーブルを指定
    ->  sales -- salesテーブルを指定
    -> GROUP BY -- 以下のカラムでグルーピング
    ->  s_id -- 店舗コードでグルーピング
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
