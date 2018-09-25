/* 問2 */
/*
メニューテーブル（menu）からそれぞれのメニューに対する親メニュー名をメニューコードについて昇順に取り出してみましょう。
*/

/** 解答 **/
SELECT -- 選択
    mc.page_id AS メニューコード, -- メニューコード ※ソートが正しく行われているか確認するため表示
    mc.title AS メニュー名, -- メニュー名
    mn.title AS 親メニュー -- 親メニュー名
FROM -- テーブルを選択
    menu AS mc -- 現在のメニュー
INNER JOIN -- 内部結合
    menu AS mn -- 親メニュー
ON -- 以下の項目でテーブルを結合
    mc.page_id = mn.page_id -- メニューコードについて結合
ORDER BY -- 以下のカラムについてソート
    mc.page_id ASC -- 現在のメニューについて昇順
;

+-----------------------+-----------------------------------+-----------------------------------+
| メニューコード        | メニュー名                        | 親メニュー                        |
+-----------------------+-----------------------------------+-----------------------------------+
| A0001                 | ホーム                            | ホーム                            |
| B0001                 | WINGSについて                     | WINGSについて                     |
| B0002                 | WINGSの歴史                       | WINGSの歴史                       |
| B0003                 | WINGSメンバー紹介                 | WINGSメンバー紹介                 |
| B0004                 | WINGSメンバ募集                   | WINGSメンバ募集                   |
| C0001                 | 技術記事オンライン公開            | 技術記事オンライン公開            |
| C0002                 | 最新インターネット記事            | 最新インターネット記事            |
| C0003                 | PHP関連記事                       | PHP関連記事                       |
| C0004                 | Java関連記事                      | Java関連記事                      |
| C0005                 | ASP.NET関連記事                   | ASP.NET関連記事                   |
| D0001                 | 新刊案内                          | 新刊案内                          |
| D0002                 | PHP関連新刊                       | PHP関連新刊                       |
| D0003                 | Java関連新刊                      | Java関連新刊                      |
| D0004                 | ASP.NET関連新刊                   | ASP.NET関連新刊                   |
+-----------------------+-----------------------------------+-----------------------------------+
14 rows in set (0.00 sec)