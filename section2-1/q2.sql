/* 問2 */
/*
店舗テーブル（shop）と月間売り上げテーブル（sales）から2012年12月の売上高を、売上高の低い順に出力してみましょう。
*/

/** 解答 **/
mysql> SELECT -- 選択
    ->   sh.s_name, -- 店舗テーブルの店舗コード
    ->   sl.s_value -- 月間売り上げテーブルの売上高
    -> FROM -- テーブルを指定
    ->   shop AS sh -- 店舗テーブル
    -> INNER JOIN -- テーブルを結合
    ->   sales AS sl -- 月間売り上げテーブル
    -> ON -- 以下の値についてテーブルを結合
    ->   sh.s_id = sl.s_id -- 店舗コード同士で結合
    -> WHERE -- 条件を指定
    ->   sl.s_date = '2012-12' -- 2012年12月の売り上げデータに限定
    -> ORDER BY -- 以下のカラムについてソート
    ->   sl.s_value DESC -- 月間売り上げテーブルの売り上げ高
    -> ;
+--------------------+---------+
| s_name             | s_value |
+--------------------+---------+
| 北花町駅前店       |   11234 |
| 三吉町店           |   11145 |
| 北花町東店         |   10456 |
| 東桜町店           |    9861 |
+--------------------+---------+
4 rows in set (0.00 sec)
