/* 問5 */
/*
以下は、社員テーブル（employee）から所属部署ごとの女性の人数を求め、3人以上の部署だけを出力するためのSQL命令ですが、
2つ誤りがあります。誤りを指摘してください。
*/

SELECT
 depart_id,
 COUNT(*)
FROM
 employee
WHERE
 sex=2
ORDER BY
 depart_id
WHERE
 COUNT(*) >= 3
;

/** 解答 **/
・所属部署ごとのデータを取り出すので、ORDER BYではなく、GROUP BYとなる。
・最後の命令は、検索結果に対して行われるべきなので、WHEREではなくHAVING。

正しくは、
mysql> SELECT -- 選択
    ->  depart_id, -- 所属部署ID
    ->  COUNT(*) -- データ数をカウント
    -> FROM -- テーブルを指定
    ->  employee -- 社員テーブル
    -> WHERE -- 以下の条件に当てはまる値を取り出す
    ->  sex=2 -- 性別が2(女)
    -> GROUP BY -- 以下のカラムについてまとめる
    ->  depart_id -- 所属部署ID
    -> HAVING -- 検索結果を以下の条件で絞りこむ
    ->  COUNT(*) >= 3 -- データ数が3以上
    -> ;
+-----------+----------+
| depart_id | COUNT(*) |
+-----------+----------+
| S01       |        4 |
| S02       |        5 |
+-----------+----------+
2 rows in set (0.00 sec)
