# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ ame: 'Star Wars' },  { ame: 'Lord of the Rings' }])
#   Character.create(ame: 'Luke',  movie: movies.first)


east_asia, south_east_asia, central_asia, south_asia, middle_east, oceania, east_africa, central_africa,
south_africa, west_africa, north_africa, east_europe, central_europe,
south_europe, west_europe, north_europe, north_america, central_america, south_america = Region.create([
  {region_name: "東アジア"}, {region_name: "東南アジア"}, {region_name: "中央アジア"},
  {region_name: "南アジア"}, {region_name: "中東(西アジア)"}, {region_name: "オセアニア"},
  {region_name: "東アフリカ"}, {region_name: "中央アフリカ"}, {region_name: "南アフリカ"},
  {region_name: "西アフリカ"}, {region_name: "北アフリカ"}, {region_name: "東ヨーロッパ"},
  {region_name: "中央ヨーロッパ"}, {region_name: "南ヨーロッパ"}, {region_name: "西ヨーロッパ"},
  {region_name: "北ヨーロッパ"}, {region_name: "北アメリカ"}, {region_name: "中央アメリカ"},
  {region_name: "南アメリカ"}])

# 東アジア
east_asia.countries = Country.create([
  {country_name: "中国"}, {country_name: "香港"}, {country_name: "北朝鮮"},
  {country_name: "韓国"}, {country_name: "マカオ"}, {country_name: "モンゴル"}, {country_name: "台湾"}])

# 東南アジア
south_east_asia.countries = Country.create([
  {country_name: "ブルネイ"}, {country_name: "カンボジア"}, {country_name: "東ティモール"},
  {country_name: "インドネシア"}, {country_name: "フィリピン"}, {country_name: "ラオス"},
  {country_name: "マレーシア"}, {country_name: "ミャンマー"},
  {country_name: "シンガポール"}, {country_name: "タイ"}, {country_name: "ベトナム"}])

# 中央アジア
central_asia.countries = Country.create([
  {country_name: "カザフスタン"}, {country_name: "キルギス"}, {country_name: "タジキスタン"},
  {country_name: "トルクメニスタン"}, {country_name: "ウズベキスタン"}])

# 南アジア
south_asia.countries = Country.create([
  {country_name: "バングラデシュ"}, {country_name: "ブータン"}, {country_name: "インド"},
  {country_name: "モルディブ"}, {country_name: "ネパール"}, {country_name: "パキスタン"},
  {country_name: "パキスタン"}])

# 西アジア
middle_east.countries = Country.create([
  {country_name: "アルメニア"}, {country_name: "アゼルバイジャン"}, {country_name: "アフガニスタン"},
  {country_name: "バーレーン"}, {country_name: "キプロス"}, {country_name: "ジョージア"},
  {country_name: "イラン"}, {country_name: "イラク"}, {country_name: "イスラエル"},
  {country_name: "ヨルダン"}, {country_name: "クウェート"}, {country_name: "レバノン"},
  {country_name: "オマーン"}, {country_name: "パレスチナ"}, {country_name: "カタール"},
  {country_name: "サウジアラビア"}, {country_name: "シリア"}, {country_name: "トルコ"},
  {country_name: "アラブ首長国連邦"}, {country_name: "イエメン"}])

# オセアニア
oceania.countries = Country.create([
  {country_name: "オーストラリア"}, {country_name: "フィジー"}, {country_name: "仏領ポリネシア"},
  {country_name: "キリバス"}, {country_name: "マーシャル諸島"}, {country_name: "ニューカレドニア"},
  {country_name: "ニュージーランド"}, {country_name: "パラオ"}, {country_name: "パプアニューギニア"},
  {country_name: "サモア"}, {country_name: "ソロモン諸島"},
  {country_name: "トンガ"}, {country_name: "ツバル"}, {country_name: "バヌアツ"}])

# 東アフリカ
east_africa.countries = Country.create([
  {country_name: "ブルンジ"}, {country_name: "コモロ"}, {country_name: "ジブチ"}, {country_name: "エリトリア"},
  {country_name: "エチオピア"}, {country_name: "ケニア"}, {country_name: "マダガスカル"}, {country_name: "マラウィ"},
  {country_name: "モーリシャス"}, {country_name: "モザンビーク"}, {country_name: "ルワンダ"},
  {country_name: "セイシェル諸島"}, {country_name: "ソマリア"}, {country_name: "南スーダン"},
  {country_name: "タンザニア"}, {country_name: "ウガンダ"}, {country_name: "ザンビア"}, {country_name: "ジンバブエ"}])


# 中央アフリカ
central_africa.countries = Country.create([
  {country_name: "アンゴラ"}, {country_name: "カメルーン"}, {country_name: "中央アフリカ共和国"},
  {country_name: "チャド"}, {country_name: "コンゴ共和国"}, {country_name: "コンゴ民主共和国"},
  {country_name: "サントメ・プリンシペ"}, {country_name: "赤道ギニア"}, {country_name: "ガボン"}])

# 南アフリカ
south_africa.countries = Country.create([
  {country_name: "ボツワナ"}, {country_name: "エスワティニ（旧スワジランド）"}, {country_name: "レソト"},
  {country_name: "ナミビア"}, {country_name: "南アフリカ共和国"}])

# 西アフリカ
west_africa.countries= Country.create([
  {country_name: "ベナン"}, {country_name: "ブルキナファソ"}, {country_name: "コートジボワール"},
  {country_name: "ガンビア"}, {country_name: "ガーナ"}, {country_name: "ギニア"}, {country_name: "ギニアビサウ"},
  {country_name: "リベリア"}, {country_name: "マリ"}, {country_name: "モーリタニア"}, {country_name: "ニジェール"},
  {country_name: "ナイジェリア"}, {country_name: "セネガル"}, {country_name: "シエラレオネ"},
  {country_name: "トーゴ"}])

# 北アフリカ
north_africa.countries = Country.create([
  {country_name: "アルジェリア"}, {country_name: "エジプト"}, {country_name: "リビア"},
  {country_name: "モロッコ"}, {country_name: "スーダン"}, {country_name: "チュニジア"}])


# 東ヨーロッパ
east_europe.countries = Country.create([
  {country_name: "アルバニア"}, {country_name: "ベラルーシ"}, {country_name: "ボスニア・ヘルツェゴヴィナ"},
  {country_name: "ブルガリア"}, {country_name: "コソボ"}, {country_name: "マケドニア"},
  {country_name: "モンテネグロ"}, {country_name: "モルドバ"}, {country_name: "ルーマニア"},
  {country_name: "ロシア"}, {country_name: "セルビア"}, {country_name: "ウクライナ"}])

# 中央ヨーロッパ
central_europe.countries = Country.create([
  {country_name: "オーストリア"}, {country_name: "コスタリカ"}, {country_name: "チェコ"},
  {country_name: "ドイツ"}, {country_name: "ハンガリー"}, {country_name: "リヒテンシュタイン"},
  {country_name: "ポーランド"}, {country_name: "スロバキア"}, {country_name: "スロベニア"},
  {country_name: "スイス"}])

# 南ヨーロッパ
south_europe.countries = Country.create([
  {country_name: "アンドラ"}, {country_name: "イタリア"}, {country_name: "マルタ"}, {country_name: "ポルトガル"},
  {country_name: "サンマリノ"}, {country_name: "スペイン"}, {country_name: "バチカン市国"}])

# 西ヨーロッパ
west_europe.countries = Country.create([
  {country_name: "ベルギー"}, {country_name: "フランス"}, {country_name: "ギリシャ"}, {country_name: "アイルランド"},
  {country_name: "ルクセンブルグ"}, {country_name: "モナコ"}, {country_name: "オランダ"}, {country_name: "イギリス"}])

# 北ヨーロッパ
north_europe.countries = Country.create([
  {country_name: "デンマーク"}, {country_name: "エストニア"}, {country_name: "フィンランド"},
  {country_name: "アイスランド"}, {country_name: "ラトビア"}, {country_name: "リトアニア"},
  {country_name: "ノルウェー"}, {country_name: "スウェーデン"}])

# 北アメリカ
north_america.countries = Country.create([
  {country_name: "アメリカ"}, {country_name: "カナダ"}, {country_name: "メキシコ"}])

# 中央アメリカ
central_america.countries = Country.create([
  {country_name: "アンティグア・バーブーダ"}, {country_name: "バハマ"}, {country_name: "バルバドス"},
  {country_name: "ベリーズ"}, {country_name: "コスタリカ"}, {country_name: "キューバ"},
  {country_name: "ドミニカ国"}, {country_name: "ドミニカ共和国"}, {country_name: "エルサルバドール"},
  {country_name: "グアテマラ"}, {country_name: "グラナダ"}, {country_name: "ハイチ"},
  {country_name: "ホンジュラス"}, {country_name: "ジャマイカ"}, {country_name: "メキシコ"},
  {country_name: "ニカラグア"}, {country_name: "パナマ"}, {country_name: "トリニダード・トバゴ"}])

# 南アメリカ
south_america.countries = Country.create([
  {country_name: "アルゼンチン"}, {country_name: "ボリビア"}, {country_name: "ブラジル"}, {country_name: "チリ"},
  {country_name: "コロンビア"}, {country_name: "エクアドル"}, {country_name: "仏領ギアナ"}, {country_name: "ギアナ"},
  {country_name: "パラグアイ"}, {country_name: "ペルー"}, {country_name: "スリナム"}, {country_name: "ウルグアイ"},
  {country_name: "ベネズエラ"}])


# 滞在期間
length = LengthOfStay.create([{length: "1週間未満"},{length: "1ヶ月以内"},{length: "3ヶ月以内"},{length: "6ヶ月以内"},
  {length: "1年以内"},{length: "1~3年"},{length: "3~5年"},{length: "5年以上"}])
