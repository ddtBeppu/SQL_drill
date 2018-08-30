/* 問1 */
/*
書籍目次テーブル（contents）から現在のコンテンツコードと前のコンテンツコードを、
現在のコンテンツコードについて昇順で取り出してみましょう。
*/

/** 解答 **/
SELECT
    cur.c_id AS 現在のコンテンツ,
    pre.i_id AS 前のコンテンツ
FROM
    contents AS cur
INNER JOIN
    contents AS pre
ON
    pre.c_id = cur.next_id
ORDER BY
    cur.c_id ASC
;