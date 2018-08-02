/* 問5 */
/*
以下は書籍情報テーブル（books）から名前が「社」で終わる出版社の情報だけを取り出すSQL命令ですが、2点誤りがあります。
誤りを指摘してください。取り出す列は、title列とします。
*/

SELECT
  title,
FROM
  books
WHERE
  publish LIKE '_社'
;

/** 解答 **/
・SELECT title, のようにtitleのあとに','が続くのは誤り。
・publish LIKE '_社'のように、'社'の前に１文字のみがある社名の出版社を検索するようになっており、題意に沿わない。

正しくは、
SELECT
  title
FROM
  books
WHERE
  publish LIKE '%社'
;
