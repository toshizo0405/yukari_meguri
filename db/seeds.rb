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
本光寺

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

{title: "明治維新発祥の地・長府、決起した高杉晋作たちの心が残る毛利長府の町並みを歩く旅",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post2.jpg"), filename:"sample-post2.jpg"),
prefectues: '山口県',
area: "・長府毛利邸
  山口県下関市長府惣社町4-10
  ・功山寺
  山口県下関市長府川端1-2-3
  ・長府庭園
  山口県下関市長府黒門東町8-11
  ",
  access: "・電車、バス
  JR「長府駅」からバス「城下町長府」徒歩約10分" ,
  nearby_information: "特になし",
  go_around: "長府駅からスタート

長府毛利邸
↓
功山寺
↓
長府庭園",
impressions: "山口県下関市の東部にある長府は、古代より長門の政治、文化の中心として栄えた地です。関ヶ原の戦いの後、毛利秀元が5万石で入府し、以来長州の支藩、長府藩の陣屋が構えられ、城下町が整備されていきました。

武家屋敷群の中心である「古江小路」には古い土塀と石畳の町並みが広がり、藩政時代の城下町の面影を今も色濃く残しています。また、乃木神社の辺り、「横枕小路」にも古い土塀が続く古風な町並みが残され、まるでかつての日本の時代に迷い込んだような感覚を味わえます。",
member_id: Member.find(16).id,status:1 },

{title: "戦国屈指の合戦上手！武田信玄ゆかりの古戦場を巡る旅5選",
image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post3.jpg"), filename:"sample-post3.jpg"),
prefectues: '長野県',
area: "・上田古戦場公園
  長野県上田市上田下之条330（石碑は近隣の石久摩神社内にあり）
  ・砥石城跡
  長野県上田市住吉
  ・川中島古戦場（八幡原史跡公園）
  長野県長野市小島田町1384-1
  ・三増合戦場碑
  神奈川県愛甲郡愛川町三増1182-3
  ・三方ヶ原古戦場跡
  ",
  access: "・電車、バス
  JR「長府駅」からバス「城下町長府」徒歩約10分" ,
  nearby_information: "特になし",
  go_around: "上田電鉄別所線「上田原駅」から

上田古戦場公園
↓
砥石城跡
↓
川中島古戦場（八幡原史跡公園）
↓
三増合戦場碑
↓
三方ヶ原古戦場跡",
impressions: "現在、武田信玄と上杉謙信の一騎打ちの様子を描いた銅像が川中島の公園に設置されており、当時の模様を彷彿とさせてくれます。また、近辺には山本勘助の墓などもあり、武田信玄の歴史を語る上でも重要な古戦場となっています。",
member_id: Member.find(2).id,status:1 }
  ]
  )

TagMiddle.create(
 [
 {tag_id: Tag.find(8).id,post_id: Post.find(1).id},
 {tag_id: Tag.find(8).id,post_id: Post.find(2).id},
 {tag_id: Tag.find(7).id,post_id: Post.find(3).id},
 ]
 )





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
