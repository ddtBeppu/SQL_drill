/* 問3 */
/*
著者情報テーブル（books）から書名が「SQL〇〇」（○は１文字）である書籍の情報を取り出してみましょう。
取り出す列は、isbn、title、price列とします。
*/

-- 著者情報テーブル（books）から書名が「SQL〇〇」のように、SQLのあとに２文字続くものを取り出す
mysql> select title from books where title like 'SQL__';
+-----------+
| title     |
+-----------+
| SQL入門   |
+-----------+
1 row in set (0.00 sec)
