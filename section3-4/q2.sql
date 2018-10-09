/* 問2 */
/*
ユーザテーブル（usr）上のメールアドレスをすべてNULL値でクリアしてみましょう。
*/

/** 解答 **/
UPDATE -- 以下のテーブルの更新
    usr -- ユーザテーブル
SET -- 更新するカラムと値を設定
    email = 'NULL' -- メールアドレスをNULLに設定する
;

/* 更新前 */
+---------+-----------+-----------+--------------+--------------+--------------+--------------------+-----------+--------------+------------------------+
| user_id | l_name    | f_name    | l_name_kana  | f_name_kana  | prefecture   | city               | o_address | tel          | email                  |
+---------+-----------+-----------+--------------+--------------+--------------+--------------------+-----------+--------------+------------------------+
| A200401 | 井上      | 一郎      | イノウエ     | イチロウ     | 千葉県       | 東千葉市北町       | 2-4-1     | 040-111-0001 | inoue@wings.msn.to     |
| A200402 | 上原      | 幸一      | ウエハラ     | コウイチ     | 神奈川県     | 神奈川市南町       | 1-5-2     | 040-222-0002 | uehara@wings.msn.to    |
| A200403 | 江本      | 聡        | エモト       | サトシ       | 茨城県       | 茨城市西町         | 2-1-12    | 040-333-0003 | emoto@wings.msn.to     |
| A200404 | 小野      | 雄二      | オノ         | ユウジ       | 東京都       | 東京市南町         | 3-2-6     | 040-111-0004 | ono@examples.com       |
| A200405 | 河合      | 泰治      | カワイ       | ヤスハル     | 神奈川県     | 神奈川市北町       | 4-2-12    | 040-222-0005 | kawai@wings.msn.to     |
| A200501 | 山田      | 太郎      | ヤマダ       | タロウ       | 東京都       | 東京市西町         | 0-0-0     | 040-111-0031 | taro_yama@wings.msn.to |
| A200502 | 木下      | 一樹      | キノシタ     | カズキ       | 茨城県       | 茨城市東町         | 5-1-10    | 040-333-0006 | kino@wings.msn.to      |
| A200503 | 久保田    | 守        | クボタ       | マモル       | 千葉県       | 東千葉市南町       | 2-1-21    | 040-111-0007 | kubota@wings.msn.to    |
| A200504 | 児玉      | 毅        | コダマ       | ツヨシ       | 埼玉県       | 西埼玉市東町       | 3-4-11    | 040-444-0008 | kodama@wings.msn.to    |
| A200505 | 坂口      | 駿        | サカグチ     | シュン       | 栃木県       | 北栃木市西町       | 6-2-4     | 040-555-0009 | saka@examples.com      |
| A200506 | 井上      | 一郎      | イノウエ     | イチロウ     | 静岡県       | 南静岡市花町       | 4-2-1     | 040-666-0010 | shimi@wings.msn.to     |
| B200401 | 矢口      | 亜由美    | ヤグチ       | アユミ       | 千葉県       | 東千葉市南町       | 3-4-6     | 040-111-0011 | yaguchi@wings.msn.to   |
| B200402 | 有木      | 茉莉      | アリキ       | マリ         | 神奈川県     | 神奈川市北町       | 1-4-5     | 040-222-0012 | yuki@wings.msn.to      |
| B200403 | 吉岡      | 遥        | ヨシオカ     | ハルカ       | 茨城県       | 茨城市東町         | 7-2-1     | 040-333-0013 | yoshi@examples.com     |
| B200404 | 和田      | 修子      | ワダ         | シュウコ     | 東京都       | 東京市北町         | 6-1-11    | 040-111-0014 | wada@wings.msn.to      |
| B200405 | 松本      | 博美      | マツモト     | ヒロミ       | 神奈川県     | 神奈川市南町       | 3-4-21    | 040-222-0015 | matsu@wings.msn.to     |
| B200501 | 南        | 沙恵      | ミナミ       | サエ         | 茨城県       | 茨城市西町         | 3-3-2     | 040-333-0016 | minami@wings.msn.to    |
| B200502 | 村井      | 佐知子    | ムライ       | サチコ       | 千葉県       | 東千葉市北町       | 4-1-13    | 040-111-0017 | murai@wings.msn.to     |
| B200503 | 森本      | 絵里      | モリモト     | エリ         | 埼玉県       | 西埼玉市西町       | 2-1-4     | 040-444-0018 | morimo@examples.com    |
| B200504 | 西島      | 文子      | ニシジマ     | フミコ       | 栃木県       | 北栃木市東町       | 2-5-7     | 040-555-0019 | nishi@wings.msn.to     |
| B200505 | 根岸      | 裕子      | ネギシ       | ユウコ       | 静岡県       | 南静岡市寺町       | 3-4-8     | 040-666-0020 | negi@wings.msn.to      |
+---------+-----------+-----------+--------------+--------------+--------------+--------------------+-----------+--------------+------------------------+
21 rows in set (0.00 sec)

/* 更新後 */
+---------+-----------+-----------+--------------+--------------+--------------+--------------------+-----------+--------------+-------+
| user_id | l_name    | f_name    | l_name_kana  | f_name_kana  | prefecture   | city               | o_address | tel          | email |
+---------+-----------+-----------+--------------+--------------+--------------+--------------------+-----------+--------------+-------+
| A200401 | 井上      | 一郎      | イノウエ     | イチロウ     | 千葉県       | 東千葉市北町       | 2-4-1     | 040-111-0001 | NULL  |
| A200402 | 上原      | 幸一      | ウエハラ     | コウイチ     | 神奈川県     | 神奈川市南町       | 1-5-2     | 040-222-0002 | NULL  |
| A200403 | 江本      | 聡        | エモト       | サトシ       | 茨城県       | 茨城市西町         | 2-1-12    | 040-333-0003 | NULL  |
| A200404 | 小野      | 雄二      | オノ         | ユウジ       | 東京都       | 東京市南町         | 3-2-6     | 040-111-0004 | NULL  |
| A200405 | 河合      | 泰治      | カワイ       | ヤスハル     | 神奈川県     | 神奈川市北町       | 4-2-12    | 040-222-0005 | NULL  |
| A200501 | 山田      | 太郎      | ヤマダ       | タロウ       | 東京都       | 東京市西町         | 0-0-0     | 040-111-0031 | NULL  |
| A200502 | 木下      | 一樹      | キノシタ     | カズキ       | 茨城県       | 茨城市東町         | 5-1-10    | 040-333-0006 | NULL  |
| A200503 | 久保田    | 守        | クボタ       | マモル       | 千葉県       | 東千葉市南町       | 2-1-21    | 040-111-0007 | NULL  |
| A200504 | 児玉      | 毅        | コダマ       | ツヨシ       | 埼玉県       | 西埼玉市東町       | 3-4-11    | 040-444-0008 | NULL  |
| A200505 | 坂口      | 駿        | サカグチ     | シュン       | 栃木県       | 北栃木市西町       | 6-2-4     | 040-555-0009 | NULL  |
| A200506 | 井上      | 一郎      | イノウエ     | イチロウ     | 静岡県       | 南静岡市花町       | 4-2-1     | 040-666-0010 | NULL  |
| B200401 | 矢口      | 亜由美    | ヤグチ       | アユミ       | 千葉県       | 東千葉市南町       | 3-4-6     | 040-111-0011 | NULL  |
| B200402 | 有木      | 茉莉      | アリキ       | マリ         | 神奈川県     | 神奈川市北町       | 1-4-5     | 040-222-0012 | NULL  |
| B200403 | 吉岡      | 遥        | ヨシオカ     | ハルカ       | 茨城県       | 茨城市東町         | 7-2-1     | 040-333-0013 | NULL  |
| B200404 | 和田      | 修子      | ワダ         | シュウコ     | 東京都       | 東京市北町         | 6-1-11    | 040-111-0014 | NULL  |
| B200405 | 松本      | 博美      | マツモト     | ヒロミ       | 神奈川県     | 神奈川市南町       | 3-4-21    | 040-222-0015 | NULL  |
| B200501 | 南        | 沙恵      | ミナミ       | サエ         | 茨城県       | 茨城市西町         | 3-3-2     | 040-333-0016 | NULL  |
| B200502 | 村井      | 佐知子    | ムライ       | サチコ       | 千葉県       | 東千葉市北町       | 4-1-13    | 040-111-0017 | NULL  |
| B200503 | 森本      | 絵里      | モリモト     | エリ         | 埼玉県       | 西埼玉市西町       | 2-1-4     | 040-444-0018 | NULL  |
| B200504 | 西島      | 文子      | ニシジマ     | フミコ       | 栃木県       | 北栃木市東町       | 2-5-7     | 040-555-0019 | NULL  |
| B200505 | 根岸      | 裕子      | ネギシ       | ユウコ       | 静岡県       | 南静岡市寺町       | 3-4-8     | 040-666-0020 | NULL  |
+---------+-----------+-----------+--------------+--------------+--------------+--------------------+-----------+--------------+-------+
21 rows in set (0.00 sec)