/* 問4 */
/*
貸し出し記録テーブル（rental）上、returned列が9（紛失）であるレコードについて、対応する書籍情報テーブル（books）上の
分類IDを「XXXXX」（その他）に更新してみましょう。
*/
/** 解答 **/
UPDATE -- テーブルの値を更新する
    books -- 書籍情報テーブル
SET -- 以下の値に更新
    category_id = "XXXXX" -- 分類IDを「XXXXX」にする
WHERE -- 条件で絞りこむ
    EXISTS -- 以下の条件に合致する列を更新
    (
        SELECT -- 値を抽出
            * -- 全選択
        FROM -- テーブルを選択
            rental -- 貸し出し記録テーブル
        WHERE -- 条件で絞りこみ
                returned = 9 -- 紛失の場合
            AND -- かつ
                books.isbn = rental.isbn -- ISBNコードが一致する列を更新
    )
;

/* 更新前 */
+---------------+-----------------------------------+-------+--------------------+--------------+-------------+
| isbn          | title                             | price | publish            | publish_date | category_id |
+---------------+-----------------------------------+-------+--------------------+--------------+-------------+
| 4-0010-0000-0 | ハムスターの観察未分類            |   833 | WINGS出版          | 2010-11-01   | Z9999       |
| 4-0010-0000-1 | PHPドリルPHP                      |  4722 | WINGS出版          | 2013-01-14   | P1111       |
| 4-0010-0000-4 | フェレットの観察未分類            |   926 | WINGS出版          | 2012-10-26   | Z9999       |
| 4-0010-0000-5 | らくだの観察日記未分類            |  1019 | WINGS出版          | 2012-12-24   | Z9999       |
| 4-0010-0000-6 | あひるの観察日記                  |   648 | WINGS出版          | 2012-11-15   | A9999       |
| 4-0010-0000-7 | かえるの観察日記                  |   741 | WINGS出版          | 2013-01-15   | H9999       |
| 4-0010-0000-9 | SQL入門SQL                        |  5093 | WINGS出版          | 2012-10-30   | S2222       |
| 4-7980-0522-3 | JSPリファレンスJava               |  1667 | 秀和システム       | 2010-04-19   | J4444       |
| 4-7980-0945-8 | PHP5サンプル集PHP                 |  2778 | 秀和システム       | 2012-11-01   | P1111       |
| 4-7981-0722-0 | XML辞典XML                        |  3056 | 翔泳社             | 2011-09-16   | X3333       |
| 4-7981-0959-2 | PEAR入門PHP                       |  2778 | 翔泳社             | 2012-09-08   | P1111       |
| 4-8833-0000-1 | SQLリファレンスSQL                |  2084 | 日経BP             | 2013-02-15   | S2222       |
| 4-8833-0000-2 | SQLプチブックSQL                  |  1333 | 日経BP             | 2010-11-30   | S2222       |
| 4-8833-0000-3 | XMLリファレンスXML                |  2667 | 日経BP             | 2012-11-24   | X3333       |
+---------------+-----------------------------------+-------+--------------------+--------------+-------------+
14 rows in set (0.00 sec)

/* 更新後 */
+---------------+-----------------------------------+-------+--------------------+--------------+-------------+
| isbn          | title                             | price | publish            | publish_date | category_id |
+---------------+-----------------------------------+-------+--------------------+--------------+-------------+
| 4-0010-0000-0 | ハムスターの観察未分類            |   833 | WINGS出版          | 2010-11-01   | XXXXX       |
| 4-0010-0000-1 | PHPドリルPHP                      |  4722 | WINGS出版          | 2013-01-14   | P1111       |
| 4-0010-0000-4 | フェレットの観察未分類            |   926 | WINGS出版          | 2012-10-26   | Z9999       |
| 4-0010-0000-5 | らくだの観察日記未分類            |  1019 | WINGS出版          | 2012-12-24   | Z9999       |
| 4-0010-0000-6 | あひるの観察日記                  |   648 | WINGS出版          | 2012-11-15   | A9999       |
| 4-0010-0000-7 | かえるの観察日記                  |   741 | WINGS出版          | 2013-01-15   | H9999       |
| 4-0010-0000-9 | SQL入門SQL                        |  5093 | WINGS出版          | 2012-10-30   | S2222       |
| 4-7980-0522-3 | JSPリファレンスJava               |  1667 | 秀和システム       | 2010-04-19   | XXXXX       |
| 4-7980-0945-8 | PHP5サンプル集PHP                 |  2778 | 秀和システム       | 2012-11-01   | P1111       |
| 4-7981-0722-0 | XML辞典XML                        |  3056 | 翔泳社             | 2011-09-16   | XXXXX       |
| 4-7981-0959-2 | PEAR入門PHP                       |  2778 | 翔泳社             | 2012-09-08   | P1111       |
| 4-8833-0000-1 | SQLリファレンスSQL                |  2084 | 日経BP             | 2013-02-15   | S2222       |
| 4-8833-0000-2 | SQLプチブックSQL                  |  1333 | 日経BP             | 2010-11-30   | XXXXX       |
| 4-8833-0000-3 | XMLリファレンスXML                |  2667 | 日経BP             | 2012-11-24   | X3333       |
+---------------+-----------------------------------+-------+--------------------+--------------+-------------+
14 rows in set (0.00 sec)

/* 貸し出し記録テーブル */
+----+---------+---------------+-------------+----------+
| id | user_id | isbn          | rental_date | returned |
+----+---------+---------------+-------------+----------+
|  1 | A200501 | 4-0010-0000-0 | 2011-12-01  |        9 |
|  2 | A200403 | 4-8833-0000-2 | 2010-12-03  |        9 |
|  3 | A200405 | 4-8833-0000-2 | 2011-03-20  |        9 |
|  4 | B200403 | 4-8833-0000-2 | 2011-04-16  |        9 |
|  5 | B200405 | 4-0010-0000-0 | 2018-10-11  |        9 |
|  6 | A200502 | 4-8833-0000-2 | 2011-07-22  |        9 |
|  7 | A200505 | 4-8833-0000-2 | 2011-08-23  |        9 |
|  8 | B200501 | 4-8833-0000-2 | 2011-11-10  |        9 |
|  9 | B200503 | 4-8833-0000-2 | 2012-01-20  |        9 |
| 10 | B200504 | 4-0010-0000-0 | 2012-03-20  |        0 |
| 11 | A200401 | 4-8833-0000-2 | 2012-02-11  |        9 |
| 12 | A200402 | 4-8833-0000-2 | 2012-02-22  |        0 |
| 13 | A200404 | 4-8833-0000-2 | 2012-03-19  |        9 |
| 14 | A200405 | 4-0010-0000-0 | 2012-06-14  |        0 |
| 15 | B200402 | 4-8833-0000-2 | 2012-08-27  |        1 |
| 16 | B200404 | 4-8833-0000-2 | 2012-12-10  |        0 |
| 17 | A200502 | 4-7980-0522-3 | 2011-10-25  |        9 |
| 18 | A200506 | 4-7981-0722-0 | 2012-03-26  |        9 |
| 19 | B200501 | 4-0010-0000-0 | 2012-09-15  |        1 |
| 20 | B200503 | 4-8833-0000-1 | 2013-03-16  |        0 |
| 21 | B200504 | 4-7980-0945-8 | 2013-01-14  |        0 |
| 22 | B200505 | 4-7981-0959-2 | 2013-01-12  |        0 |
| 23 | A200405 | 4-8833-0000-3 | 2012-12-22  |        0 |
| 24 | B200403 | 4-0010-0000-9 | 2012-12-27  |        0 |
| 25 | B200405 | 4-0010-0000-1 | 2018-10-11  |        0 |
+----+---------+---------------+-------------+----------+
25 rows in set (0.00 sec)