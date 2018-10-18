/* 問4 */
/*
書籍情報テーブル（books）で、出版社ごとの書籍価格の平均値を求めてみましょう。
その際、取り出す列名はそれぞれ「出版社」「価格平均」とします。
*/

/** 解答 **/
mysql> SELECT -- 選択
    ->  publish AS 出版社, -- publish列を「出版社」として取り出す
    ->  AVG(price) AS 価格平均 -- priceの平均を「価格平均」として取り出す
    -> FROM -- テーブルを指定
    ->  books -- booksテーブルを指定
    -> GROUP BY -- 以下のカラムでまとめる
    ->  publish -- 出版社
    -> ;
+--------------------+--------------+
| 出版社             | 価格平均     |
+--------------------+--------------+
| 山田出版           |    2157.1429 |
| 秀和システム       |    2400.0000 |
| 翔泳社             |    3150.0000 |
| 日経BP             |    2433.3333 |
+--------------------+--------------+
4 rows in set (0.01 sec)
