/* 問4 */
/*
以下は、書籍情報テーブル（books）上で分類IDが「Z9999（未分類）」であるか、NULLである書籍を削除するSQL命令ですが、誤りが2点あります。
誤りを指摘してください。
*/

DELETE
    books
WHERE
        category_id = 'Z9999'
    AND
        category_id IS NULL
;

/* 解答 */
1. "DELETE"ではなく、"DELETE FROM"が正しい。
2. WHERE以下で、条件にANDが用いられているが、これでは両方の条件を満たさなければならないが、矛盾する。

正しくは、

DELETE FROM -- テーブルからデータを削除
    books -- 書籍情報テーブル
WHERE -- 条件で絞りこみ
        category_id = 'Z9999' -- 分類IDが「Z9999（未分類）」
    OR -- または
        category_id IS NULL -- 分類IDがNULL
;