/* 問4 */
/*
著者-書籍情報テーブル（author_books）で、著者ごとの書籍数を求めてみましょう。その際、書籍数が4冊以上の著者は「多い」、
2冊以上4冊未満の著者は「普通」、2冊未満の著者は「少ない」と出力します。
また、出力列の名前は先頭から「著者ID」「カウント数」「評価」とします。
*/

/** 解答 **/
mysql> SELECT -- 選択
    ->   author_id AS 著者ID, -- 著者ID
    ->   COUNT(*) AS 書籍数, -- 書籍数
    ->   CASE -- 条件により値を変化
    ->     WHEN COUNT(*) >= 4 THEN '多い' -- 書籍数が4冊以上の時、「多い」
    ->     WHEN COUNT(*) >= 2 THEN '普通' -- 書籍数が2冊以上4冊未満の時、「普通」
    ->     ELSE '少ない' -- 2冊未満の時、「少ない」
    ->   END AS 評価 -- 以上を評価列に表示
    -> FROM -- テーブルを指定
    ->   author_books -- 著者-書籍情報テーブル
    -> GROUP BY -- 以下のカラムでまとめる
    ->   author_id -- 著者ID
    -> ;
+----------+-----------+-----------+
| 著者ID   | 書籍数    | 評価      |
+----------+-----------+-----------+
| Y0001    |         2 | 普通      |
| A0001    |         1 | 少ない    |
| M0001    |         1 | 少ない    |
| Y0002    |         4 | 多い      |
| S0001    |         1 | 少ない    |
| K0001    |         1 | 少ない    |
| T0001    |         1 | 少ない    |
+----------+-----------+-----------+
7 rows in set (0.00 sec)