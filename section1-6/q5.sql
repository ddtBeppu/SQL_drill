/* 問5 */
/*
以下は、書籍情報テーブルから出版社（publish列）が「秀和システム」または「日経BP」であり、
かつ、価格（price列）が3000円未満の書籍を取り出すためのSQL命令ですが、2点誤りがあります。
誤りを指摘してください。
*/
SELECT
  isbn,
  title
FROM
  books
WHERE
    publish='秀和システム'
  AND
    publish='日経BP'
  OR
    price < 3000
;


/** 解答 **/
・WHERE
    publish='秀和システム'
  AND
    publish='日経BP'

  だと、書名が「秀和システム」または「日経BP」にならず、そもそも検索条件として成り立たない。

・OR
  price < 3000

  だと、価格の条件が3000円未満でないものも取り出されるため、条件として意味をなさない


正しくは、
SELECT -- 選択
  isbn, -- ISBNコード
  title -- 書名
FROM -- テーブルを指定
  books -- booksテーブルを指定
WHERE -- 条件を指定
    publish IN ('秀和システム', '日経BP') -- 出版社が「秀和システム」、「日経BP」のいずれか
  AND -- かつ
    price < 3000 -- 価格が3000円未満
;

あるいは

SELECT -- 選択
  isbn, -- ISBNコード
  title -- 書名
FROM -- テーブルを指定
  books -- booksテーブルを指定
WHERE -- 条件を指定
  ( -- 以下、出版社に関する条件
    publish ='秀和システム' -- 出版社1社目
  OR -- または
    publish = '日経BP' -- 出版社2社目
  )
  AND -- かつ
    price < 3000 -- 価格が3000円未満
;
