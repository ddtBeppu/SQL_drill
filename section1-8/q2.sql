/* 問2 */
/*
アンケート回答テーブル（quest）から回答日時が新しいものを先頭から10件取り出してみましょう。
取得列は、name、answer1、answer2列とします。
*/

/** 解答 **/
mysql> SELECT -- 選択
    ->  name, -- 名前
    ->  answer1, -- 本書の評価
    ->  answer2 -- 本書の感想
    -> FROM -- テーブルを指定
    ->  quest -- アンケート回答テーブル
    -> ORDER BY -- 以下の条件でソート
    ->  answered DESC -- 回答日について降順
    -> LIMIT -- 範囲を指定
    ->  10 -- 先頭から10件
    -> ;
+-----------------+---------+--------------------------+
| name            | answer1 | answer2                  |
+-----------------+---------+--------------------------+
| 根岸亜由美      |       3 | 絵がかわいい。           |
| 西島泰治        |       3 | 読みやすいです。         |
| 森本雄二        |       1 | NULL                     |
| 村井聡          |       3 | 文字が小さい。           |
| 南幸一          |       2 |                          |
| 清水一郎        |       2 | NULL                     |
| 和田駿          |       1 | NULL                     |
| 吉岡毅          |       3 | NULL                     |
| 有木守          |       3 | 買ってよかった。         |
| 矢口一樹        |       2 | NULL                     |
+-----------------+---------+--------------------------+
10 rows in set (0.00 sec)
