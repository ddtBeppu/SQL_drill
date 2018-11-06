/* 問2 */
/*
貸し出し記録テーブル（rental）をISBNコードでグループ化し、それぞれの「貸出数」列を出力します。
その際、カウント数が10以上ならば「好評」、5以上10未満ならば「普通」、5未満ならば「不評」とする「評価」列も
合わせて出力してみましょう。
*/

/** 解答 **/
mysql> SELECT -- 選択
    ->   isbn, -- ISBNコード
    ->   COUNT(*) AS 貸出数, -- データ数を貸出数とする
    ->   CASE -- 条件によって出力値を変える
    ->     WHEN COUNT(*) >= 10 THEN '好評' -- カウント数が10以上の時、「好評」
    ->     WHEN COUNT(*) >= 5 THEN '普通' -- カウント数が5以上10未満の時、「普通」
    ->     ELSE '不評' -- それ以外、すなわち5未満の時、「不評」
    ->   END AS 評価 -- 以上の値を評価カラムに出力
    -> FROM -- テーブルを選択
    ->   rental -- 貸し出し記録テーブル
    -> GROUP BY -- 以下のカラムについてグルーピング
    ->   isbn -- ISBNコード
    -> ;
+---------------+-----------+--------+
| isbn          | 貸出数    | 評価   |
+---------------+-----------+--------+
| 4-0010-0000-0 |         5 | 普通   |
| 4-8833-0000-2 |        12 | 好評   |
| 4-7980-0522-3 |         1 | 不評   |
| 4-7981-0722-0 |         1 | 不評   |
| 4-8833-0000-1 |         1 | 不評   |
| 4-7980-0945-8 |         1 | 不評   |
| 4-7981-0959-2 |         1 | 不評   |
| 4-8833-0000-3 |         1 | 不評   |
| 4-0010-0000-9 |         1 | 不評   |
| 4-0010-0000-1 |         1 | 不評   |
+---------------+-----------+--------+
10 rows in set (0.00 sec)