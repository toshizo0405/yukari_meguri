 Manager.create!(
 email: 'admin@manager',
 password: '199204',
 )

Tag.create([
 { name: '古墳時代' },
 { name: '飛鳥時代' },
 { name: '奈良時代' },
 { name: '平安時代' },
 { name: '鎌倉時代' },
 { name: '室町時代' },
 { name: '安土桃山時代' },
 { name: '江戸時代' },
 { name: '明治時代' },
 { name: '大正時代' },
 { name: '昭和時代' },
 ])

 Member.create!(
  [
   {email: 'nobunaga@member',password: '199508',last_name: '織田',first_name: '信長',last_name_kana: 'オダ',first_name_kana: 'ノブナガ'},
   {email: 'ieyasu@public',password: '199204',last_name: '徳川',first_name: '家康',last_name_kana: 'トクガワ',first_name_kana: 'イエヤス'},
   {email: 'hideyashi@gmail',password: '199203',last_name: '豊臣',first_name: '秀吉',last_name_kana: 'トヨトミ',first_name_kana: 'ヒデヨシ'},
   {email: 'ryoma@public',password: '199208',last_name: '坂本',first_name: '龍馬',last_name_kana: 'サカモト',first_name_kana: 'リョウマ'},
   {email: 'togo@public',password: '199209',last_name: '東郷',first_name: '平八郎',last_name_kana: 'トウゴウ',first_name_kana: 'ヘイハチロウ'},
   {email: 'kenshin@public',password: '199210',last_name: '上杉',first_name: '謙信',last_name_kana: 'ウエスギ',first_name_kana: 'ケンシン'},
   {email: 'shingen@public',password: '199211',last_name: '武田',first_name: '信玄',last_name_kana: 'タケダ',first_name_kana: 'シンゲン'},
   {email: 'uziyasu@public',password: '199212',last_name: '北条',first_name: '氏康',last_name_kana: 'ホウジョウ',first_name_kana: 'ウジヤス'},
   {email: 'yoshimoto@public',password: '199201',last_name: '今川',first_name: '義元',last_name_kana: 'イマガワ',first_name_kana: 'ヨシモト'},
   {email: 'motonari@public',password: '199202',last_name: '毛利',first_name: '元就',last_name_kana: 'モウリ',first_name_kana: 'モトナリ'},
   {email: 'yoshihiro@public',password: '199203',last_name: '島津',first_name: '義弘',last_name_kana: 'シマヅ',first_name_kana: 'ヨシヒロ'},
   {email: 'mikuru@public',password: '199204',last_name: '朝倉',first_name: '未来',last_name_kana: 'アサクラ',first_name_kana: 'ミクル'},
   {email: 'kai@public',password: '199205',last_name: '朝倉',first_name: '海',last_name_kana: 'アサクラ',first_name_kana: 'カイ'},
   {email: 'tenshin@public',password: '199206',last_name: '那須川',first_name: '天心',last_name_kana: 'ナスカワ',first_name_kana: 'テンシン'},
   {email: 'snake@public',password: '199207',last_name: 'ソリッド',first_name: 'スネーク',last_name_kana: 'ソリッド',first_name_kana: 'スネーク'},
   {email: 'toshizo@public',password: '199305',last_name: '土方',first_name: '歳三',last_name_kana: 'ヒジカタ',first_name_kana: 'トシゾウ'},
  ]
  )

Post.create!(
 [
  {title: '新撰組ゆかりの地 京都編', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post1.jpg"), filename:"sample-post1.jpg"), prefectues: '京都府',area: "・新撰組最後の洛中屋敷後
  〒600-8234 京都府京都市下京区南不動堂町８０２",access: "・電車、バス
  JR京都駅下車、烏丸中央口または西口（南北自由通路側）から徒歩約5分
  地下鉄烏丸線京都駅下車、中央出口から徒歩約7分
  近鉄京都駅下車、近鉄中央口から南北自由通路を経て徒歩約5分
  京都駅烏丸口バスターミナルより徒歩約5分
  京都市バス「下京区総合庁舎前」下車　徒歩約1分
  京都駅烏丸口バスターミナルより徒歩約5分" ,nearby_information: "スタート地点の新選組最後の洛中屋敷跡はハトヤ瑞鳳閣というホテルの敷地内にある。",go_around: "9：00
ハトヤ瑞鳳閣を出発

9：05～9：10
本光寺¥n

9：30～9：50
島原大門／輪違屋／角屋／西門（住吉神社）／朱雀大路発掘記念碑

10：10∼10：30
壬生寺

10：40～11：30
八木邸見学

11：30
旧前川邸

11：40～12：00
光縁寺

12：10
四条大宮駅にて解散",impressions: "9時〜12時の旅でしたが、有名どころはほとんど行けて満足な計画プランでした！

もっと早く行けば御陵衛士の拠点である「高台寺」や、

龍馬を切ったとされる短刀や近藤勇・土方歳三のものとされる刀が展示されている「霊山歴史館」にも行けたなぁと反省。



新撰組の聖地巡りがしたい！という方にとってこのプランが役立てば嬉しいです。

ではまた！",member_id: Member.find(1).id,status:1 },
  ]
  )

TagMiddle.create(
 [
 {tag_id: Tag.find(1).id,post_id: Post.find(1).id},
 {tag_id: Tag.find(8).id,post_id: Post.find(1).id}

 ]
 )





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
