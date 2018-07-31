/* 問4 */
/*
以下は書籍情報テーブル（books）からtitle列とpublish列とを取り出すためのSQL命令ですが、２点誤りがあります。
誤りを指摘してください。
*/

SELECTS
 title
 publish
FROM
 books
;


/** 解答 **/
/*
・"SELECT"命令のはずが"SELECTS"となっている。
・titleとpublishの間にカンマがない。

正しくは、
select title, publish from books;
*/
