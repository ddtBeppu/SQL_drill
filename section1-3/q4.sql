/* 問4 */
/*
以下は、社員テーブル（employee）から重複無しの役職を取り出すためのSQL命令ですが、２点誤りがあります。
誤りを指摘してください。
*/

SELECT ALL
 class,
 depart_id
FROM
 employee
;

/** 解答 **/
・SELECT直後のALLが誤り。"DISTINCT"と続けるのが正しい。
・役職を取り出せば良いので、"depart_id"は不要。
