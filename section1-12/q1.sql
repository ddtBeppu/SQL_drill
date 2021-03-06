/* 問1 */
/*
アンケート回答テーブル（quest）から都道府県ごとに年齢の平均値を求め、
35歳以上50歳未満のデータのみを取り出してみましょう。
以下の空欄を埋めて、SQL命令を完成させてください。
*/

mysql> SELECT -- 選択
    ->  prefecture AS 都道府県, -- 都道府県
    ->  AVG(age) AS 平均年齢 -- 平均年齢
    -> FROM -- テーブルを選択
    ->  quest -- アンケート回答テーブル
    -> GROUP BY -- 以下のカラムでまとめる
    ->  prefecture -- 都道府県
    -> HAVING -- 表示結果を以下のように絞り込む
    ->  (
    ->   平均年齢 >= 35 -- 平均年齢が35歳以上
    ->  AND -- かつ
    ->   平均年齢 < 50 -- 50歳未満
    ->  )
    -> ;
+--------------+--------------+
| 都道府県     | 平均年齢     |
+--------------+--------------+
| 茨城県       |      38.6667 |
+--------------+--------------+
1 row in set (0.00 sec)
