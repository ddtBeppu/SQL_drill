/* 問3 */
/*
著者情報テーブル（author）に対して、以下の内容で新規データを挿入してみましょう。
*/

/** 解答 **/
INSERT INTO -- 以下のテーブルにデータを挿入
    author -- 著者情報テーブル
    (
        author_id, -- 著者ID
        name, -- 著者名
        name_kana, -- 著者名（カナ）
        birth -- 生年月日
    )
VALUES -- データの値
    (
        'U0001', -- 著者ID
        '内田幸子', -- 著者名
        'ウチダサチコ', -- 著者名（カナ）
        '1973-04-10' -- 生年月日
    )
;

/* 挿入前 */
+-----------+--------------+-----------------------+------------+
| author_id | name         | name_kana             | birth      |
+-----------+--------------+-----------------------+------------+
| A0001     | 有吉晴美     | アリヨシハルミ        | 1985-02-15 |
....
| T0001     | 田中太郎     | タナカタロウ          | 1975-11-01 |
| Y0001     | 山田愛子     | ヤマダアイコ          | 1970-04-06 |
| Y0002     | 山田祥寛     | ヤマダヨシヒロ        | 1960-12-04 |
+-----------+--------------+-----------------------+------------+
8 rows in set (0.01 sec)

/* 挿入後 */
+-----------+--------------+-----------------------+------------+
| author_id | name         | name_kana             | birth      |
+-----------+--------------+-----------------------+------------+
| A0001     | 有吉晴美     | アリヨシハルミ        | 1985-02-15 |
....
| T0001     | 田中太郎     | タナカタロウ          | 1975-11-01 |
| U0001     | 内田幸子     | ウチダサチコ          | 1973-04-10 |
| Y0001     | 山田愛子     | ヤマダアイコ          | 1970-04-06 |
| Y0002     | 山田祥寛     | ヤマダヨシヒロ        | 1960-12-04 |
+-----------+--------------+-----------------------+------------+
9 rows in set (0.00 sec)