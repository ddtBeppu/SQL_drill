/* 問3 */
/*
書籍情報テーブル（books）上、書名の後方に分類名を付加してみましょう。
*/

/** 解答 **/
UPDATE -- 以下のテーブルの値を更新
    books -- 書籍情報テーブル
SET -- 以下のように値を更新
    title = CONCAT(title, -- 書名と、以下で抽出する分類名を結合する
    (
        SELECT -- 値を抽出
            category_name -- 分類名
        FROM -- テーブルを指定
            category -- 書籍分類テーブル
        WHERE -- 以下の条件に合致する行の値を更新
            category.category_id = books.category_id -- 分類ID同士が等しいところを更新
    )
)
;

/* 更新前 */
+--------------------------+
| title                    |
+--------------------------+
| ハムスターの観察         |
| PHPドリル                |
| フェレットの観察         |
| らくだの観察日記         |
| あひるの観察日記         |
| かえるの観察日記         |
| SQL入門                  |
| JSPリファレンス          |
| PHP5サンプル集           |
| XML辞典                  |
| PEAR入門                 |
| SQLリファレンス          |
| SQLプチブック            |
| XMLリファレンス          |
+--------------------------+
14 rows in set (0.00 sec)

/* 更新後 */
+-----------------------------------+
| title                             |
+-----------------------------------+
| ハムスターの観察未分類            |
| PHPドリルPHP                      |
| フェレットの観察未分類            |
| らくだの観察日記未分類            |
| NULL                              |
| NULL                              |
| SQL入門SQL                        |
| JSPリファレンスJava               |
| PHP5サンプル集PHP                 |
| XML辞典XML                        |
| PEAR入門PHP                       |
| SQLリファレンスSQL                |
| SQLプチブックSQL                  |
| XMLリファレンスXML                |
+-----------------------------------+
14 rows in set (0.00 sec)

