/* 問2 */
/*
ユーザテーブル（usr）とアンケート回答テーブル（quest）、それぞれに登録されているユーザ氏名を比較し、
ユーザテーブル（usr）にしか登録されていないもののみを取り出してみましょう。
*/

/** 解答 **/
    SELECT
        CONCAT(u.l_name, u.f_name)
    FROM
        usr AS u
UNION
    SELECT
        q.name
    FROM
        quest AS q
;