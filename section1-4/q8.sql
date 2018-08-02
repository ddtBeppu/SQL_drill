/* 問8 */
/*
以下は書籍テーブル（books）から価格（price列）が5000円未満の書籍情報のみを取り出すためのSQL命令です。
（取り出す列はtitle、publish、price列とします。）
SQL命令に含まれる誤りを２つ指摘してください。
*/

SELECT
  title
  publish
  price
FROM
  books
WHERE
  price <= 5000
;

/** 解答 **/
/*
・title
  publish
  price
  のように列挙されているが、単語の間に","が必要。

・5000円未満のため、
   × price <= 5000
   ○ price < 5000
*/
