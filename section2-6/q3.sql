/* 問3 */
/*
ユーザテーブル（usr）とアンケート回答テーブル（quest）からそれぞれ千葉県に住んでいる人間だけを取り出し、結果を統合してみましょう。
その際、重複データを取り除くものとし、かつ、氏名（カナ）について降順で並び替えるものとします。
*/

/** 解答 **/
    SELECT -- 選択
        CONCAT(usr.l_name_kana, usr.f_name_kana) AS 氏名, -- 氏名
        usr.prefecture AS 都道府県 -- 都道府県 ※確認のため表示
    FROM -- テーブルを選択
        usr -- ユーザテーブル
    WHERE -- 条件で絞り込み
        usr.prefecture = '千葉県' -- 千葉県の人のみ
UNION -- テーブルを統合
    SELECT -- 選択
        q.name_kana AS 氏名, -- 氏名
        q.prefecture AS 都道府県 -- 都道府県 ※確認のため表示
    FROM -- テーブルを選択
        quest AS q -- アンケート回答テーブル
    WHERE -- 条件で絞り込み
        q.prefecture = '千葉県' -- 千葉県の人のみ
ORDER BY -- 以下のカラムについてソート
    1 DESC -- 1列目、すなわち氏名について降順でソート
;