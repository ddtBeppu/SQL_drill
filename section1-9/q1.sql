/* 問1 */
/*
アンケート回答テーブル（quest）から性別ごとにそれぞれ年齢の最大/最小値を取り出してみましょう。
*/

/** 解答 **/
mysql> SELECT -- 選択
    ->  sex, -- 性別
    ->  MAX(age), -- 年齢の最大値
    ->  MIN(age) -- 年齢の最小値
    -> FROM -- テーブルを指定
    ->  quest -- アンケート回答テーブル
    -> GROUP BY -- 以下の列でグループ化
    ->  sex -- 性別
    -> ;
+-----+----------+----------+
| sex | MAX(age) | MIN(age) |
+-----+----------+----------+
| 男  |       64 |       18 |
| 女  |       40 |       25 |
+-----+----------+----------+
2 rows in set (0.00 sec)
