# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tag.destroy_all
User.destroy_all
Species.destroy_all


user1 = User.create!(
  first_name: "Anna",
  last_name: "Chedeville",
  username: "chedanna",
  diving_level: "TSD",
  description: "Princesse Anna",
  email: "anna@example.com",
  password: "password",
  )
user1.avatar.attach(io: File.open(Rails.root.join('db/fixtures/avatars/Anna.png')), filename: 'Anna.png')
user1.save!

user2 = User.create!(
  first_name: "Brandon",
  last_name: "Ruaux",
  username: "Plongeur fou",
  diving_level: "DM",
  description: "27 et passioné par la vie.",
  email: "brandon@example.com",
  password: "password",
  )
user2.avatar.attach(io: File.open(Rails.root.join('db/fixtures/avatars/brandon.png')), filename: 'brandon.png')
user2.save!

user3 = User.create!(
  first_name: "Briac",
  last_name:"Louazel",
  username:"blouazel",
  diving_level:"Open Water",
  description:"Marketplace expert",
  email: "briac@example.com",
  password: "password",
  )
user3.avatar.attach(io: File.open(Rails.root.join('db/fixtures/avatars/Briac.jpg')), filename: 'Briac.jpg')
user3.save!

user4 = User.create!(
  first_name: "Celeste",
  last_name:"Gautier",
  username:"celeston",
  diving_level:"Open Water",
  description:"Reine du front",
  email: "celeste@examplebis.com",
  password: "password",
  )
user4.avatar.attach(io: File.open(Rails.root.join('db/fixtures/avatars/Celeste.jpg')), filename: 'Celeste.jpg')
user4.save!

user5 = User.create!(
  first_name: "Christine",
  last_name:"Brendle",
  username:"xtineHK",
  diving_level:"TSD",
  description:"Made in Hong Kong",
  email: "christine@example.com",
  password: "password",
  )
user5.avatar.attach(io: File.open(Rails.root.join('db/fixtures/avatars/Xtine.jpg')), filename: 'Xtine.jpg')
user5.save!

user6 = User.create!(
  first_name: "Gabin",
  last_name:"Louazel",
  username:"glouazel",
  diving_level:"TSD",
  description:"Graine de grand marin",
  email: "gabin@example.com",
  password: "password",
  )
user6.avatar.attach(io: File.open(Rails.root.join('db/fixtures/avatars/Gabin.png')), filename: 'Gabin.png')
user6.save!

user7 = User.create!(
  first_name: "Marek",
  last_name:"Chrzestek",
  username:"marekredon",
  diving_level:"INSTRUCTOR",
  description:"le joueur",
  email: "marek@example.com",
  password: "password",
  )
user7.avatar.attach(io: File.open(Rails.root.join('db/fixtures/avatars/Marek.jpg')), filename: 'Marek.jpg')
user7.save!

user8 = User.create!(
  first_name: "Paul",
  last_name:"Louazel",
  username:"plouazel",
  diving_level:"AAC SPE Deep",
  description:"Graine de marin",
  email: "paul@example.com",
  password: "password",
  )
user8.avatar.attach(io: File.open(Rails.root.join('db/fixtures/avatars/Paul.png')), filename: 'Paul.png')
user8.save!

specie1 = Species.new(
  name: "Poisson Lune",
  latin_name: "Mola mola",
  description:"Ce poisson de corps quasi circulaire, comprimé latéralement forme un disque ovoïde caractéristique. Très apparentes, les deux nageoires dorsale et anale, triangulaires, reculées et opposées (placées en vis-à-vis du disque corporel), lui servent de rames verticales synchrones. Absence de queue remplacee par une frange.",
  threat_level:"Espece rare",
  size: 2,
  color: "bleu gris",
  )
specie1.photo.attach(io: File.open(Rails.root.join('db/fixtures/species/mola-mola.jpg')), filename: 'mola-mola.jpg')
specie1.save!

specie2 = Species.new(
  name: "Grand Requin Blanc",
  latin_name: "Carcharodon carcharias",
  description: "Le corps fusiforme du grand requin blanc, massif antérieurement, présente une coloration gris variable selon les individus et les latitudes. Museau conique. La forme en croissant de lune de la nageoire caudale est caractéristique.",
  threat_level: "Espece reglementee",
  size: 6,
  color: "bleu & blanc",
  )
specie2.photo.attach(io: File.open(Rails.root.join('db/fixtures/species/requin-blanc.jpg')), filename: 'requin-blanc.jpg')
specie2.save!


specie3 = Species.new(
  name: "Tortue Verte",
  latin_name: "Chelonia mydas",
  description: "La tortue verte est la plus connue des tortues marines. Sa morphologie est variable en fonction de sa zone géographique.Le cou de la tortue verte est court. Sa tête est petite et non rétractable.",
  threat_level: "Espece reglementee",
  size: 1,
  color: "vert & beige",
  )
specie3.photo.attach(io: File.open(Rails.root.join('db/fixtures/species/tortue-verte.jpg')), filename: 'tortue-verte.jpg')
specie3.save!

specie4 = Species.new(
  name: "Requin Renard",
  latin_name: "Alopias vulpinus",
  description:"S'il est facilement reconnaissable entre tous, c'est parce que notre renard de mer se caractérise par une nageoire caudale de taille pratiquement égale à son corps fusiforme. L'animal peut atteindre 6 mètres et plus pour un poids de 500 kg !Sa robe a une couleur dominante sombre.",
  threat_level: "Espece rare",
  size: 6,
  color: "Bleu",
  )
specie4.photo.attach(io: File.open(Rails.root.join('db/fixtures/species/requin-renard.jpg')), filename: 'requin-renard.jpg')
specie4.save!

specie5 = Species.new(
  name: "Raies Manta",
  latin_name: "Mobula alfredi",

  description: "Les raies manta possèdent un corps aplati. Les yeux et les spiracles sont latéraux alors que les 5 fentes branchiales sont sur la face ventrale. La tête est très large et porte deux nageoires céphaliques deux fois plus longues que larges qui sont des extensions de ses nageoires pectorales.",

  threat_level: "Espece vulnerable",
  size: 5,
  color: "Brun",
  )
specie5.photo.attach(io: File.open(Rails.root.join('db/fixtures/species/raie-manta.jpg')), filename: 'raie-manta.jpg')
specie5.save!

specie6 = Species.new(
  name: "Requin Baleine",
  latin_name: "Rhincodon typus",

  description: "Le requin-baleine est le plus grand de tous les poissons cartilagineux et osseux, sa taille pouvant atteindre 12 m. Il est reconnaissable à sa tête plate et large, fendue d'une très grande bouche qui peut mesurer jusqu'à 1,50 m de large. Ses yeux sont situés juste en arrière de la bouche.",
  threat_level: "Espece vulnerable",

  size: 8,
  color: "Bleu & blanc",
  )
specie6.photo.attach(io: File.open(Rails.root.join('db/fixtures/species/requin-baleine.jpg')), filename: 'requin-baleine.jpg')
specie6.save!

specie7 = Species.new(
  name: "Beluga",
  latin_name: "Delphinapterus leucas",
  description: "La tête est relativement petite par rapport au reste du corps, massif, mais reste imposante du fait du melon massif situé en avant du crâne. Le melon est plus ou moins accentué et contient de l'huile dont la fonction divise encore certains chercheurs.",
  threat_level: "Espece vulnerable",
  size: 7,
  color: "Brun & blanc",
  )
specie7.photo.attach(io: File.open(Rails.root.join('db/fixtures/species/beluga.jpg')), filename: 'beluga.jpg')
specie7.save!

specie8 = Species.new(
  name: "Hippocampe",
  latin_name: "Hippocampus reidi",
  description: "L'hippocampe à long museau mesure environ 10 cm lorsqu'il est accroché (soit 15 cm étiré), mais peut atteindre une longueur maximale de 17,5 cm. Les couleurs de sa robe sont variables : du jaune au brun, mais il présente de minuscules points noirs dispersés sur le corps. Son museau est long et épais.",
  threat_level: "Espece vulnerable",
  size: 0.25,
  color: "Jaune",
  )
specie8.photo.attach(io: File.open(Rails.root.join('db/fixtures/species/hippocampe.jpg')), filename: 'hippocampe.jpg')
specie8.save!

specie9 = Species.new(
  name: "Baleine Bleue",
  latin_name: "Balaenoptera musculus",
  description: "La baleine bleue est le plus grand mammifère sur Terre. Son corps est long et massif,son poids est d'environ une centaine de tonnes. Sa tête est plate en forme de U. Le corps est généralement tacheté. La baleine bleue est l'animal qui produit les sons les plus graves et les plus puissants au monde.",
  threat_level: "Espece menacée",
  size: 25,
  color: "Bleu",
  )
specie9.photo.attach(io: File.open(Rails.root.join('db/fixtures/species/baleine-bleue.png')), filename: 'baleine-bleue.png')
specie9.save!

specie10 = Species.new(
  name: "Napoleon",
  latin_name: "Cheilinus undulatus",
  description: "Le napoléon est le plus grand de tous les labres : il peut peser jusqu'à 190 kg. Les écailles sont grandes et peuvent atteindre 10 cm de diamètre. La forme du corps ainsi que sa couleur changent au cours de sa vie. Les mâles possèdent d'épaisses lèvres charnues et une bosse frontale d'autant plus grande que le poisson est âgé.",
  threat_level: "Espece en danger",
  size: 2,
  color: "Bleu & Vert",
  )
specie10.photo.attach(io: File.open(Rails.root.join('db/fixtures/species/napoleon.jpg')), filename: 'napoleon.jpg')
specie10.save

specie11 = Species.new(
  name: "Poisson Clown",
  latin_name: "Amphiprion bicinctus",
  description: "La couleur va du jaune orangé à brun. Deux bandes blanches verticales bordées de noir divisent le corps : la première le traverse depuis l'arrière de la tête en s’élargissant dorsalement, la seconde, plus fine, passe au milieu du corps. La nageoire caudale est tronquée ou légèrement émarginée.",
  threat_level: "Espece vulnerable",
  size: 0.2,
  color: "Orange & blanc",
  )
specie11.photo.attach(io: File.open(Rails.root.join('db/fixtures/species/poisson-clown.jpg')), filename: 'poisson-clown.jpg')
specie11.save!


tag1 = Tag.new(
  latitude:  -8.678583,
  longitude: 115.455586,
  spot_name: "Crystal Bay",
  diving_date: "2020-1-6",
  species: specie1,
  user: user1,
  description: "Quelle chance de pouvoir apercevoir le Mola Mola durant cette plongée! Nous étions 3 dans notre palanqué et nous sommes tombé nez à nez avec ce magnifique spécimen de 2,7 lors de notre remonte en surface.",
  depth: 31
  )
tag1.photo.attach(io: File.open(Rails.root.join('db/fixtures/picture-tags/mola-mola.jpg')), filename: 'mola-mola.jpg')
tag1.save!


tag2 = Tag.new(
  latitude: -9.678583,
  longitude: 114.455586,
  spot_name: "Manta Point",
  diving_date: "2020-1-3",
  species: specie2,
  user: user2,
  description: "Une plongé agréable dans la station de netoyage des Raies Manta , une expérience magnifique malgré la température de l'eau un peu faible",
  depth: 14
  )
tag2.photo.attach(io: File.open(Rails.root.join('db/fixtures/picture-tags/manta-ray.jpg')), filename: 'manta-ray.jpg')
tag2.save!

tag3 = Tag.new(
  longitude: 43.681641,
  latitude: -18.333669,
  spot_name: "Grand tombant de la possession",
  diving_date: "2020-8-9",
  species: specie2,
  user: user3,
  description: "Quelle surprise de tomber sur ce GRAND prédateur, ce requin avait été aperçu la veille et nous avons eu la chance de le retrouver lors de notre plongée",
  depth: 36
  )
tag3.photo.attach(io: File.open(Rails.root.join('db/fixtures/picture-tags/white-shark.jpg')), filename: 'white-shark.jpg')
tag3.save!

tag4 = Tag.new(
  longitude: 43.769531,
  latitude: -20.324024,
  spot_name: "Aquarium",
  diving_date: "2020-7-8",
  species: specie3,
  user: user4,
  description:"Toujours un plaisir de voir une tortue évoluer dans son milieu. Nous reviendrons voir un requin lors de notre prochaine plongée.",
  depth: 7
  )
tag4.photo.attach(io: File.open(Rails.root.join('db/fixtures/picture-tags/green-turtle.jpg')), filename: 'green-turtle.jpg')
tag4.save!

tag5 = Tag.new(
  latitude: 47.512396,
  longitude: -61.490746,
  spot_name: "Golfe du St laurent",
  diving_date: "2020-8-11",
  species: specie7,
  user: user5,
  description:"Etant explorateur, je me rejouis de la rencontre avec ce Béluga: un moment rare et un souvenir gravé à jamais dans ma mémoire. ",
  depth: 39
  )
tag5.photo.attach(io: File.open(Rails.root.join('db/fixtures/picture-tags/beluga.jpg')), filename: 'beluga.jpg')
tag5.save!

tag6 = Tag.new(
  longitude: 35.158233,
  latitude: 24.627271,
  spot_name: "Sharm El Lulli",
  diving_date: "2020-1-23",
  species: specie5,
  user: user6,
  description: "C'était la premiere fois que j'allais plonger dans la Mer Rouge, mais j'avais déja observé des raies manta lors de précedentes plongées en Indonésie. J'ai été agréablement surpris de croiser cette rai de si grande taille: 4,2m! ",
  depth: 17
  )
tag6.photo.attach(io: File.open(Rails.root.join('db/fixtures/picture-tags/manta-ray2.jpg')), filename: 'manta-ray2.jpg')
tag6.save!

tag7 = Tag.new(
  longitude: 124.106026,
  latitude: 11.348062,
  spot_name:  "Grand tombant",
  diving_date: "2020-3-12",
  species: specie4,
  user: user7,
  description: "J'avais entendu parler de cet endroit où l'on peut observer des requins renards, je n'ai pas été deçu, en 4 plongées nous avons eu la change d'en observer plus d'une dizaine!",
  depth: 27
  )
tag7.photo.attach(io: File.open(Rails.root.join('db/fixtures/picture-tags/requin-renard.jpg')), filename: 'requin-renard.jpg')
tag7.save!

tag8 = Tag.new(
  longitude: 99.994125,
  latitude: 9.698736,
  spot_name: "Sail Rock",
  diving_date: "2020-3-11",
  species: specie6,
  user: user7,
  description: "Ah le fameux Requin Baleine, on nous en parlait depuis 2 semaines. Observable au Sud de Koh Tao nous avons eu une belle surprise lors d'une remontée alors que nous respections le palier de sécurité des 5m: un souvenir inoubiable!",
  depth: 17
  )
tag8.photo.attach(io: File.open(Rails.root.join('db/fixtures/picture-tags/whale-shark.jpg')), filename: 'whale-shark.jpg')
tag8.save!

tag9 = Tag.new(
  longitude: 100.020218,
  latitude: 9.807011,
  spot_name: "Chumphon Pinnacle",
  diving_date: "2020-4-11",
  species: specie6,
  user: user2,
  description: "Une grosse bestiole que tout le monde reve de pouvoir observer, apres plus d'une dizaine de plongée autours de Tao j'ai enfin pu apercevoir ce mastodonte... JE REVIENDRAIS !",
  depth: 38
  )
tag9.photo.attach(io: File.open(Rails.root.join('db/fixtures/picture-tags/whale-shark.jpg')), filename: 'whale-shark.jpg')
tag9.save!

tag10 = Tag.new(
  longitude: 57.615738,
  latitude: 19.974801,
  spot_name: "Trou aux biches",
  diving_date: "2020-5-11",
  species: specie11,
  user: user1,
  description: "Ma fille adore les poissons clown qui sont devenus célèbres grâce au film d'animation 'Le monde de Némo', elle a été emerveillée de pouvoir observer ces poissons dans leurs anémones.",
  depth: 7
  )
tag10.photo.attach(io: File.open(Rails.root.join('db/fixtures/picture-tags/anemonefish.jpg')), filename: 'anemonefish.jpg')
tag10.save!

tag11 = Tag.new(
  longitude: 58.615738,
  latitude: 19.992224,
  spot_name: "Grand baie",
  diving_date: "2020-6-11",
  species: specie3,
  user: user3,
  description:"Nous étions à l'Ile Maurice pour faire du snorkeling et nous nous sommes laissés tenter par un baptême de plongée. J'ai nagé avec des tortues pour la première fois et cétait magnifique!",
  depth: 13
  )
tag11.photo.attach(io: File.open(Rails.root.join('db/fixtures/picture-tags/green-turtle2.jpg')), filename: 'green-turtle2.jpg')
tag11.save!


