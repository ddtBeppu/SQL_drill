/* 問4 */
/*
貸し出し記録テーブル（rental）上、貸出日が2012年3月31日より前で、かつ、現在貸し出し中であるレコードについて、returned列を
9（紛失）で更新しましょう。
*/

/** 解答 **/
UPDATE -- 以下のテーブルの値を更新
    rental -- 貸し出し記録テーブル
SET -- 以下のように更新
    returned = 9 -- 紛失
WHERE -- 以下の条件に当てはまる行について値を更新する
    (
        rental_date < "2012-03-31" -- 貸し出し日が012年3月31日より前
    AND -- かつ
        returned = 1 -- 貸出中
    )
;

/* 更新前 */
+----+---------+---------------+-------------+----------+
| id | user_id | isbn          | rental_date | returned |
+----+---------+---------------+-------------+----------+
|  1 | A200501 | 4-0010-0000-0 | 2011-12-01  |        1 |
|  2 | A200403 | 4-8833-0000-2 | 2010-12-03  |        1 |
|  3 | A200405 | 4-8833-0000-2 | 2011-03-20  |        1 |
|  4 | B200403 | 4-8833-0000-2 | 2011-04-16  |        1 |
|  5 | B200405 | 4-0010-0000-0 | 2012-01-16  |        1 |
|  6 | A200502 | 4-8833-0000-2 | 2011-07-22  |        1 |
|  7 | A200505 | 4-8833-0000-2 | 2011-08-23  |        1 |
|  8 | B200501 | 4-8833-0000-2 | 2011-11-10  |        1 |
|  9 | B200503 | 4-8833-0000-2 | 2012-01-20  |        1 |
| 10 | B200504 | 4-0010-0000-0 | 2012-03-20  |        0 |
| 11 | A200401 | 4-8833-0000-2 | 2012-02-11  |        1 |
| 12 | A200402 | 4-8833-0000-2 | 2012-02-22  |        0 |
| 13 | A200404 | 4-8833-0000-2 | 2012-03-19  |        1 |
| 14 | A200405 | 4-0010-0000-0 | 2012-06-14  |        0 |
| 15 | B200402 | 4-8833-0000-2 | 2012-08-27  |        1 |
| 16 | B200404 | 4-8833-0000-2 | 2012-12-10  |        0 |
| 17 | A200502 | 4-7980-0522-3 | 2011-10-25  |        1 |
| 18 | A200506 | 4-7981-0722-0 | 2012-03-26  |        1 |
| 19 | B200501 | 4-0010-0000-0 | 2012-09-15  |        1 |
| 20 | B200503 | 4-8833-0000-1 | 2013-03-16  |        0 |
| 21 | B200504 | 4-7980-0945-8 | 2013-01-14  |        0 |
| 22 | B200505 | 4-7981-0959-2 | 2013-01-12  |        0 |
| 23 | A200405 | 4-8833-0000-3 | 2012-12-22  |        0 |
| 24 | B200403 | 4-0010-0000-9 | 2012-12-27  |        0 |
| 25 | B200405 | 4-0010-0000-1 | 2013-03-10  |        0 |
+----+---------+---------------+-------------+----------+
25 rows in set (0.00 sec)

/* 更新後 */
+----+---------+---------------+-------------+----------+
| id | user_id | isbn          | rental_date | returned |
+----+---------+---------------+-------------+----------+
|  1 | A200501 | 4-0010-0000-0 | 2011-12-01  |        9 |
|  2 | A200403 | 4-8833-0000-2 | 2010-12-03  |        9 |
|  3 | A200405 | 4-8833-0000-2 | 2011-03-20  |        9 |
|  4 | B200403 | 4-8833-0000-2 | 2011-04-16  |        9 |
|  5 | B200405 | 4-0010-0000-0 | 2012-01-16  |        9 |
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
| 25 | B200405 | 4-0010-0000-1 | 2013-03-10  |        0 |
+----+---------+---------------+-------------+----------+
25 rows in set (0.00 sec)