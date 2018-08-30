/* 問3 */
/*
店舗テーブル（shop）と月間売り上げテーブル（sales）から2012年12月の全売上高を売上高の低い順に出力してみましょう。
*/

/** 解答 **/
mysql> SELECT -- 選択する
    ->   sh.s_name AS 店舗名, -- 店舗名
    ->   sl.s_value AS 売上高 -- 売上高
    -> FROM -- テーブルを指定
    ->   shop AS sh -- 店舗テーブル
    -> INNER JOIN -- テーブルを結合
    ->   sales AS sl -- 月間売り上げテーブル
    -> ON -- 以下の共通するカラムについて結合
    ->   sh.s_id = sl.s_id -- 店舗コード同士が共通
    -> WHERE -- 以下の条件で絞り込む
    ->   sl.s_date = '2012-12' -- 売り上げ対象年月
    -> ORDER BY -- 以下のカラムについてソート
    ->   sl.s_value ASC -- 売上高について昇順にソート
    -> ;
+--------------------+-----------+
| 店舗名             | 売上高    |
+--------------------+-----------+
| 東桜町店           |      9861 |
| 北花町東店         |     10456 |
| 三吉町店           |     11145 |
| 北花町駅前店       |     11234 |
+--------------------+-----------+
4 rows in set (0.00 sec)
