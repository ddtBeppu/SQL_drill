/* 問4 */
/*
貸し出し記録テーブル（rental）とユーザテーブル（usr）からそれぞれのユーザについて、現在何冊貸し出しているかを、貸し出し数の多い順に取得してみましょう。
取得列は、ユーザの氏名、貸し出し数とします。また、貸し出し数0のユーザは出力する必要はありません。
*/

/** 解答 **/
mysql> SELECT -- 選択
    ->     CONCAT(usr.l_name, usr.f_name) AS 氏名, -- 氏名
    ->     COUNT(rent.id) AS 貸し出し数 -- 貸し出し数
    -> FROM -- テーブルを指定
    ->     rental AS rent -- 貸し出しテーブル
    -> INNER JOIN -- テーブルを結合
    ->     usr -- ユーザテーブル
    -> ON -- 以下のカラム同士でテーブルを結合
    ->     rent.user_id = usr.user_id -- ユーザID同士でテーブルを結合
    -> WHERE -- 以下の条件で検索
    ->     rent.returned = 0 -- 貸出中の場合
    -> GROUP BY -- 以下の項目でまとめる
    ->     氏名 -- 氏名ごとにデータをまとめる
    -> ORDER BY -- 以下の項目についてデータをソート
    ->     COUNT(rent.id) DESC -- 貸し出し数について降順
    -> ;
+--------------+-----------------+
| 氏名         | 貸し出し数      |
+--------------+-----------------+
| 西島文子     |               2 |
| 河合泰治     |               2 |
| 上原幸一     |               1 |
| 和田修子     |               1 |
| 森本絵里     |               1 |
| 根岸裕子     |               1 |
| 吉岡遥       |               1 |
| 松本博美     |               1 |
+--------------+-----------------+
8 rows in set (0.00 sec)