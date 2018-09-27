/* 問4 */
/*
以下は、書籍目次テーブル（contents）から現在のコンテンツコードと前のコンテンツコードを、
現在のコンテンツコードについて昇順で取り出すためのSQLですが、誤りが2点あります。誤りを指摘してください。
*/

SELECT
    cp.c_id AS 前のページ,
    cn.c_id AS 現在のページ
FROM
    contents AS cp
OUTER JOIN
    contents AS cn
ON
    cp.next_id <> cn.c_id
ORDER BY
    cn.c_id ASC
;

/** 解答 **/
・"OUTER JOIN"ではなく、"INNER JOIN"が正しい。
・現在のページと前のページを結びつけるので、
    ON
        cp.next_id = cn.c_id
とすべき。

正しくは、

SELECT -- 選択
    cp.c_id AS 前のページ, -- 前のページのコンテンツコード
    cn.c_id AS 現在のページ -- 現在のページのコンテンツコード
FROM -- テーブルの選択
    contents AS cp -- 前ページの目次テーブル
INNER JOIN -- 内部結合
    contents AS cn -- 現在のページの目次テーブル
ON -- 以下の項目で結合
    cp.next_id = cn.c_id -- 現在のページと前のページのコンテンツコードで結合
ORDER BY -- 以下のカラムについてソート
    cn.c_id ASC -- 現在のページのコンテンツコードについて昇順
;

+-----------------+--------------------+
| 前のページ      | 現在のページ       |
+-----------------+--------------------+
| A001            | A011               |
| A011            | A012               |
| A012            | A013               |
| A013            | A014               |
| A014            | A015               |
| A015            | A016               |
| A016            | A017               |
| A017            | A021               |
| A021            | A022               |
| A022            | A023               |
| A023            | A024               |
| A024            | A025               |
| A025            | A026               |
| A026            | A027               |
| A027            | A028               |
| A028            | A029               |
| A029            | A031               |
| A031            | A032               |
| A032            | A033               |
| A033            | A034               |
| A034            | A035               |
| A035            | A036               |
| A036            | A037               |
| A037            | A041               |
| A041            | A042               |
| A042            | A043               |
| A043            | A044               |
| A044            | A045               |
| A045            | A046               |
+-----------------+--------------------+
29 rows in set (0.00 sec)