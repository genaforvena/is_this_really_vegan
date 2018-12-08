const nlNonVeganIngredients = [
  "abalone",
  "acetaat",
  "geacetyleerde gehydrogeneerde reuzelglyceride",
  "geacetyleerde lanoline",
  "geacetyleerde lanoline-alcohol",
  "geacetyleerd lanoline-ricinoleaat",
  "geacetyleerde talg",
  "zuur",
  "acidophilus melk",
  "Adrenaline",
  "bijnieren van vee",
  "bijnieren van varkens",
  "bijnieren van schapen",
  "nageboorte",
  "Alanine",
  "eiwit",
  "albumine",
  "Alcloxa",
  "Aldioxa",
  "aliphatische alcohol",
  "Allantoïne",
  "alligator",
  "alligatorhuid",
  "alfa-hydroxyzuren",
  "ambergrijs",
  "Amerachol",
  "amerchol l101",
  "aminiuccinaatzuur",
  "aminozuren",
  "aminosuccinaatzuur",
  "ammoniumcaseïnaat",
  "ammonium gehydrolyseerd eiwit",
  "vruchtwater",
  "verstoven isoterisch gehydrolyseerd dierlijk eiwit",
  "Amylase",
  "Ansjovis",
  "ansjovis",
  "Angora",
  "dierlijke botten",
  "dierlijke collageenaminozuren",
  "dierlijk vet",
  "dierlijke vetten en oliën",
  "dierenhaar",
  "dierlijke keratine aminozuren",
  "dierlijke olie",
  "dierlijke placenta",
  "dierlijke eiwitderivaat",
  "extract van dierlijk weefsel",
  "arachidonzuur",
  "arachidyl proprionate",
  "asparaginezuur",
  "aspic",
  "astrakan",
  "back bacon",
  "rug vet",
  "spek",
  "bas",
  "batyl alcohol",
  "batyl isostearaat",
  "beer",
  "bijenpollen",
  "bijenproducten",
  "rundvlees",
  "runderhart",
  "runderlever",
  "rundertong",
  "bijenpollen",
  "bijenwas",
  "bijenwas",
  "honingraat bijenwas",
  "buikspek",
  "met benzyltrimonium gehydrolyseerd dierlijk eiwit",
  "biotine vitamine h vitamine b-factor",
  "bizon",
  "bloed",
  "bloedplasmafractionering",
  "bloedtong",
  "everzwijnharen",
  "gekookte ham",
  "botas",
  "bot char",
  "bot char (coal) / boneblack",
  "bottenkool",
  "botaarde",
  "beendermeel",
  "botfosfaat",
  "bot soep",
  "Bone / beendermeel",
  "Boneblack",
  "Bonito",
  "runderserumalbumine",
  "hersenextract",
  "Braadworst",
  "hoofdkaas",
  "ontbijtspek",
  "Bresaola",
  "Varkenshaar",
  "Bruehwurst",
  "Buffels",
  "buffelmelk",
  "Bushmeat",
  "boter",
  "botervet",
  "vaste botten",
  "karnemelk",
  "karnemelkpoeder",
  "c30-46 piscine olie",
  "Calamari",
  "Calciferol",
  "Calciferool",
  "calciumcaseïnaat",
  "kalfslever",
  "kalfsleer",
  "kalfsvachtextract",
  "kamelenmelk",
  "canadees spek",
  "cantharides tinctuur",
  "Capiz",
  "capryl betaine",
  "caprylamine oxide",
  "caprylzuur",
  "capryl triglyceride",
  "Carbamide",
  "Kariboe",
  "karmijn",
  "carmine cochineal carminic acid",
  "karmijnzuur / karmijnzuur",
  "karmijn: cochenille, karmijnzuur",
  "Carminezuur",
  "karmijnzuur",
  "carotene provitamin a beta carotene",
  "karper",
  "Caseïne",
  "caseïnegcaseïnaat-natriumcaseïnaat",
  "Caseïnaat",
  "Caseinogen",
  "kasjmier",
  "castor castoreum",
  "Bevergeil",
  "meerval",
  "Catgut",
  "Catharidin",
  "Kaviaar (e)",
  "cera flava",
  "Cerebrosiden",
  "bepaalde additieven",
  "Ceteth-02",
  "Ceteth-1",
  "Ceteth-10",
  "Ceteth-2",
  "Ceteth-30",
  "Ceteth-4",
  "Ceteth-6",
  "cetylalcohol",
  "cetyl lactaat",
  "cetylmyristaat",
  "cetyl palmitate",
  "Zeem",
  "kaas",
  "kip",
  "kip",
  "kipfilet",
  "kippenlever",
  "kip brood",
  "afgebrokkelde ham",
  "Chitine",
  "Chitosan",
  "Cholecalciferol",
  "Cholesterin",
  "Cholesterol",
  "choline bitartraat",
  "Chondroïtine",
  "gehakte ham",
  "Chorizo",
  "Chymotrypsine",
  "civet",
  "geklaarde boter",
  "slagroom",
  "Cochenille",
  "kabeljauw",
  "levertraan",
  "vleeswaren",
  "Coleth-24",
  "Collageen",
  "collageenhydrolysaat",
  "kleuren kleurstoffen",
  "gecondenseerde melk",
  "banketbakkersglazuur",
  "gekookte ham",
  "gekookte vleeswaren",
  "koraal",
  "corned beef",
  "cornish game hen",
  "cortico steroïde",
  "Corticosteroïde zijn",
  "Cortison",
  "cortisone corticosteroïde",
  "cortison: zie cortico steroïde.",
  "Cotechino",
  "kwark",
  "krab",
  "krab",
  "krabvlees",
  "Rivierkreeften",
  "rivierkreeft",
  "room",
  "room",
  "schaaldieren schaaldieren",
  "Wrongel",
  "vla",
  "cysteïne, l-vorm",
  "Cystine",
  "donker vlees",
  "Dashi",
  "dea-oleth-10-fosfaat",
  "Deer",
  "hertenvlees",
  "delactosed whey",
  "deli vlees",
  "gedemineraliseerde wei",
  "desoxyribonucleïnezuur",
  "desamido dierlijke collageen",
  "Desamidocollagen",
  "Devon",
  "Dexpanthenol",
  "dicapryloyl cystine",
  "diethyleentricaseinamide",
  "Diglyceriden",
  "Dihydrocholesterol",
  "dihydrocholesterol octyledecanoaat",
  "Dihydrocholeth-15",
  "Dihydrocholeth-30",
  "dihydrogenated tallow benzylmoniumchloride",
  "dihydrogenated tallow methylamine",
  "gedihydrogeneerd talgftalaat",
  "dihydroxyethyl-talg-amineoxide",
  "dimethyl gehydrogeneerde talgamine",
  "dimethylstearamine",
  "dimethyltallowamine",
  "dinatrium gehydrogeneerd talgglutamaat",
  "dinatrium-tallamido mea-sulfosuccinaat",
  "dinatriumtalaminodipropionaat",
  "ditallowdimonium chloride",
  "Dna",
  "Down",
  "gedroogde karnemelk",
  "gedroogde eigeel",
  "droge melk vaste stoffen",
  "droge volle melk",
  "eend",
  "eend spek",
  "eenden lever",
  "twaalfvingerige darm stoffen",
  "twaalfvingerige darm stoffen",
  "nederlands brood",
  "Kleurstoffen",
  "E120",
  "E441",
  "E542",
  "E904",
  "E913",
  "eetbaar botfosfaat",
  "ei",
  "ei-albumine",
  "ei-albumine / albumine",
  "eierolie",
  "eipoeder",
  "eiproteïne",
  "eiwitten",
  "eigeel",
  "eigeelextract",
  "eidooiers",
  "Eieren",
  "Elastine",
  "Elastine",
  "elk spek",
  "embryo-extract",
  "Emoe",
  "emoe olie",
  "epiderm olie r",
  "Ergisterol",
  "Ergocalciferol",
  "Ergosterol",
  "Estradiol",
  "estradiolbenzoaat",
  "Oestrogeen",
  "oestrogeen estradiol",
  "Estrogeen / oestradiol",
  "Oestron",
  "ethylester van gehydrolyseerd dierlijk eiwit",
  "ethyl morrhuatelipineate",
  "Ethylarachidonate",
  "ethyleen dehydrogenated tallowamide",
  "verdampte melk",
  "ooienmelk",
  "vetvrije melk",
  "vetvrije yoghurt",
  "Vetten",
  "vetzuren",
  "fd en c kleuren",
  "Veren",
  "voelde",
  "gefermenteerde kamelenmelk",
  "gefermenteerde room",
  "Gefermenteerde melk",
  "vis",
  "visglyceriden",
  "vislever",
  "visleverolie",
  "vislevers",
  "visolie",
  "vissaus",
  "vissenschubben",
  "vissaus",
  "fletan olie",
  "vacht",
  "gel",
  "gelatine",
  "gelatinegel",
  "gelatine)",
  "Gelbwurst",
  "Ghee",
  "Spiermaag",
  "Glucosamine",
  "glucose tyrosinase",
  "glucuronzuur",
  "glutaminezuur",
  "Glyceriden",
  "glycerineglycerol",
  "glycerol",
  "glyceryl-lanolaat",
  "Glyceryls",
  "glycogeen",
  "Glycreth-26",
  "geit",
  "geitenkaas",
  "geitenmelk",
  "gans",
  "ganzenisolerende veren",
  "ganzenlever",
  "gehakt",
  "Hoen",
  "Guanine",
  "guanine pearl essence",
  "guanine / pearl essence",
  "guinea hen",
  "zigeuner bacon",
  "schelvis",
  "haar van varkens",
  "heilbot",
  "ham",
  "ham en kaasbrood",
  "hoofd kaas",
  "zware slagroom",
  "Heptylundecanol",
  "verbergen",
  "verberg lijm",
  "gehomogeniseerde melk",
  "honing",
  "honingraat",
  "paard",
  "paardenhaar",
  "Horseflesh",
  "paardenhaar",
  "hotdog",
  "menselijk placenta-eiwit",
  "menselijk navelstrengextract",
  "hyaluronzuur",
  "gehydrateerd humaan placentair proteïne",
  "Hydrocortison",
  "gehydrogeneerd dierglyceride",
  "gehydrogeneerd ditallow-amine",
  "gehydrogeneerde honing",
  "gehydrogeneerde laneth-20",
  "gehydrogeneerde laneth-25",
  "gehydrogeneerde laneth-5",
  "gehydrogeneerde lanoline",
  "gehydrogeneerde lanoline-alcohol",
  "gehydrogeneerde reuzelglyceride",
  "gehydreerde haaienleverolie",
  "gehydrogeneerd talgzuur",
  "gehydrogeneerde talgbetaine",
  "gehydrogeneerd talgglyceride",
  "gehydrolyseerd dierlijk elastine",
  "gehydroliseerde dierlijke keratine",
  "gehydrolyseerd dierlijk eiwit",
  "gehydrolyseerde caseïne",
  "gehydrolyseerd elastine",
  "gehydroliseerde keratine",
  "gehydrolyseerd melkeiwit",
  "gehydrolyseerde zijde",
  "gehydroxyleerde lanoline",
  "ijsje",
  "imidazolidinylureum",
  "insuline",
  "ijzercaseïnaat",
  "vislijm",
  "isobutylated lanolin",
  "isopropyl-lanolaat",
  "Isopropylmyristaat",
  "isopropyltallowatelsopropyl-lanolaat",
  "Isopropylpalmitaat",
  "isostearisch gehydrolyseerd dierlijk eiwit",
  "isostearoyl gehydrolyseerd dierlijk eiwit",
  "Jagdwurst",
  "Wang",
  "kangoeroe",
  "katsuobushi (okaka)",
  "Keratine",
  "keratinaminozuren",
  "L-cysteïne",
  "L-vorm",
  "I-vorm: zie cysteïne.",
  "l-melkzuur",
  "lacotte-verminderde melk",
  "Lactalbumine",
  "Lactalbumine",
  "melkgisten",
  "Melkzuur",
  "Lactoferrine",
  "Lactoglobuline",
  "Lactose",
  "lactosevrije melk",
  "Lactulose",
  "lam",
  "lamsbout",
  "Laneth",
  "Laneth-10",
  "Laneth-11",
  "Laneth-12",
  "Laneth-13",
  "Laneth-14",
  "Laneth-15",
  "Laneth-16",
  "Laneth-17",
  "Laneth-18",
  "Laneth-19",
  "Laneth-20",
  "Laneth-21",
  "Laneth-22",
  "Laneth-23",
  "Laneth-24",
  "Laneth-25",
  "Laneth-26",
  "Laneth-27",
  "Laneth-28",
  "Laneth-29",
  "Laneth-30",
  "Laneth-31",
  "Laneth-32",
  "Laneth-33",
  "Laneth-34",
  "Laneth-35",
  "Laneth-36",
  "Laneth-37",
  "Laneth-38",
  "Laneth-39",
  "Laneth-40",
  "Laneth-5",
  "Laneth-6",
  "Laneth-7",
  "Laneth-8",
  "Laneth-9",
  "laneth-9 acetaat",
  "laneth10 acetaat",
  "Lanogene",
  "Lanoinamidedea",
  "Lanoline",
  "lanolinezuur",
  "lanolinezuur: zie lanoline.",
  "lanoline-alcohol",
  "lanoline-alcoholen",
  "lanoline-alcoholen: zie lanoline.",
  "lanoline, lanoline, wol, wolwas",
  "lanoline linoleaat",
  "lanoline-olie",
  "lanoline-ricinoleaat",
  "lanolinewas",
  "Lanoline (e)",
  "lanoline: lanolinezuur",
  "Lanosterol",
  "lanosterol: zie lanoline.",
  "Lanosterols",
  "reuzel",
  "reuzel glyceride",
  "met lauroyl gehydrolyseerd dierlijk eiwit",
  "leer",
  "leer suède kalfsleer schapenvacht huid andere soorten huid",
  "lecithine cholinebitartrate",
  "Leucine",
  "linolzuur",
  "Lipase",
  "Lipiden",
  "lipoïden lipiden",
  "lever",
  "lever extract",
  "leverworst",
  "kreeft",
  "magere melk",
  "magere yoghurt",
  "Lunasponge",
  "luncehon-brood",
  "lunch vlees",
  "lunch vlees",
  "Lysine",
  "makreel",
  "magnesiumcaseïnaat",
  "gemoute melk",
  "mammarian extract",
  "marine olie",
  "merg soep",
  "mayonaise",
  "met mea gehydrolyseerd dierlijk eiwit",
  "vlees",
  "gehaktbrood",
  "Gehaktbal",
  "mechanisch gescheiden kip",
  "Methionine",
  "Mettwurst",
  "melk",
  "melkchocolade",
  "melkderivaat",
  "melk van zoogdieren",
  "melk proteïnen",
  "melkhuid",
  "melksuiker",
  "melk vet",
  "melkpoeder",
  "rundergehakt",
  "gehakt",
  "nertsolie",
  "minkamidopropyl diethylamine",
  "Mohair",
  "weekdieren schaaldieren",
  "zeeduivel",
  "mono- en di-glyceriden",
  "monoglycerides glycerides",
  "monoglyceriden glyceriden (zie glycerine)",
  "eland",
  "Mortadella",
  "mosbunker olie",
  "Harder",
  "spierextract",
  "muskus",
  "musk (olie)",
  "musk ambrette",
  "mossel",
  "Mosselen",
  "Schaap",
  "Schaap",
  "myristal-ethersulfaat",
  "myristaatzuur",
  "myristinezuur",
  "myristoyl gehydrolyseerd dierlijk eiwit",
  "Myristyl",
  "Myristyls",
  "natuurlijke botersmaak",
  "natuurlijke aroma's",
  "natuurlijke rode 4",
  "natuurlijke bronnen",
  "nek",
  "magere melk",
  "Notitie:",
  "noga",
  "nucleïnezuren",
  "Ocenol",
  "Octopus",
  "octyl dodecanol",
  "Olie",
  "met oleamidopropyl dimethylamine gehydrolyseerd dierlijk eiwit",
  "oliezuur",
  "oleoische olie",
  "Oleostearine",
  "Oleostearine",
  "oleoyl gehydrolyseerd dierlijk eiwit",
  "Oleths",
  "oleyl arachidaat",
  "oleylbetatine",
  "oleyl imidazoline",
  "oleyl-lanolaat",
  "oleylmyristaat",
  "oleyloleaat",
  "oleylstearaat",
  "oleylalcohol ocenol",
  "Oleylimidazoline",
  "Omega-3 vetzuren",
  "Opossum",
  "orgaanvlees",
  "orgaanvlees",
  "Organen",
  "struisvogel",
  "Ovalbumine",
  "ovariumextract",
  "os gal",
  "Oxgall",
  "oester",
  "Palmitamide",
  "Palmitamine",
  "Palmitaat",
  "palmitinezuur",
  "palmitoyl gehydrolyseerd melkeiwit",
  "palmitoyl gehydrolyseerde dierlijke eiwitten",
  "Pancetta",
  "panthenol dexpanthenol vitamine b-complex factor provitamine b-5",
  "Panthenyl",
  "Paracaseïne",
  "patrijs",
  "Gepasteuriseerde melk",
  "parel",
  "pearl essence",
  "Pentahydrosqualene",
  "pepsine",
  "Perhydrosqualeen",
  "farmaceutische glazuur",
  "fazant",
  "picknick schouder",
  "varkenshaar extract",
  "placenta",
  "placenta placenta polypeptiden proteïne nageboorte",
  "placenta-polypeptiden-eiwit",
  "placenta enzymen",
  "placenta-extract",
  "placenta-eiwit",
  "schol",
  "pogy olie",
  "Pollock",
  "poltethyleencetylether",
  "Polyglycerol",
  "polyglyceryl-2-lanoline-alcoholether",
  "Polypeptiden",
  "polypeptiden eiwit",
  "Polysorbaten",
  "polytetyleenglycerol / glycol / pin",
  "varkenspancreas",
  "varkensvlees",
  "varkensvet",
  "varkensrol",
  "kaliumcaseïnaat",
  "kalium talg",
  "kalium-undecylenoyl gehydrolyseerd dierlijk eiwit",
  "gevogelte",
  "ppg-12-peg-50 lanolin",
  "ppg-2, -5, -10. -20, -30 lanolalcohol ethers",
  "ppg-30 lanoline ether",
  "garnaal",
  "pregnenolone acetate",
  "Pristaan",
  "Progesteron",
  "Propolis",
  "Prosciutto",
  "provitamine a",
  "provitamine b-5",
  "provitamine d-2",
  "purcelline oil syn",
  "kwartel",
  "quaternium 27",
  "konijn",
  "rood vlees",
  "magere melk",
  "yoghurt met minder vet",
  "Stremsel",
  "stremsel caseïne",
  "stremsel rennin",
  "Rennin",
  "harsachtig glazuur",
  "Reticuline",
  "Retinol",
  "ribonucleïnezuur",
  "rna ribonucleïnezuur",
  "rosbief",
  "geroosterd varken",
  "Roe",
  "koninklijke gelei",
  "Sable",
  "marterborstels",
  "saccharide hydrolysaat",
  "saccharide-isomeraat",
  "salami",
  "Salceson",
  "Zalm",
  "sardine",
  "worst",
  "Worst",
  "Coquille",
  "Jakobsschelpen",
  "zeespons",
  "zeeschildpadolie",
  "Seasponge",
  "serum albumine",
  "serumeiwitten",
  "haaienleverolie",
  "haaienleverolie",
  "schapenmelk",
  "Schapenvacht",
  "schellak",
  "schellak harsachtig glazuur",
  "schellakwas",
  "schouder",
  "Garnalen",
  "Shrimph",
  "zijspek",
  "zijde",
  "zijde-aminozuren",
  "zijden poeder",
  "zijden zijdepoeder",
  "magere melk",
  "plak spek",
  "plak spek",
  "gesneden vlees",
  "gerookte ham",
  "slak",
  "Slakken",
  "slang",
  "Snapper",
  "natrium / thee-lauroyl gehydrolyseerd dierlijk eiwit",
  "met natrium / thee-undecylenoyl gehydrolyseerd dierlijk eiwit",
  "natriumcaseïnaat",
  "natriumcaseïnaat",
  "met natrium coco gehydrolyseerd dierlijk eiwit",
  "met natrium soja gehydrolyseerd dierlijk eiwit",
  "natriumtaltsulfaat",
  "natrium tallowate",
  "natrium undecylenaat",
  "natriumsteroyllactylaat",
  "oplosbaar collageen",
  "zure room",
  "zure melk",
  "zure melk vaste stoffen",
  "zuurde melk",
  "soja hydroxyethyl imidazoline",
  "spermolie",
  "potvisdarmen",
  "Spermaceti",
  "spermaceticetyl palmitate sperm oil",
  "milt extract",
  "spons (luna en zee)",
  "Log",
  "Squalaan",
  "Squaleen",
  "inktvis",
  "eekhoorn",
  "biefstuk",
  "Stearamide",
  "Stearamine",
  "stearamineoxide",
  "Stearaten",
  "stearinezuur",
  "stearinehydrazide",
  "stearine",
  "Stearon",
  "Stearoxytrimethylsilane",
  "stearoyl lactylzuur",
  "stearyl acetaat",
  "stearylalcoholsterolen",
  "stearyl betaïne",
  "stearyl caprylaat",
  "stearylcitraat",
  "stearylglycyrrhetinaat",
  "stearylheptanoaat",
  "stearyl imidazoline",
  "stearyl octanoaat",
  "stearylstearaat",
  "stearyldimethylamine",
  "steroïden sterolen",
  "Sterolen",
  "stewing steak",
  "buikspek",
  "Suede",
  "zoete melkwei",
  "zoete wei",
  "Zwezerik",
  "gezoete gecondenseerde melk",
  "zwaardvis",
  "talg",
  "talgzuur",
  "talgamide",
  "talgamine",
  "talgamineoxide",
  "talgvet",
  "talgglyceriden",
  "tallow hydroxyethal imidazoline",
  "tallow imidazoline",
  "talgvet vetalcohol stearinezuur",
  "talgtrimoniumchloride - talg",
  "talgamidopropylamineoxide",
  "Talloweth-6",
  "talgmide dea en mea",
  "tallowmidopropyl hydroxysultaine",
  "Tallowminopropylamine",
  "Tallowmphoacete",
  "thee-abietoyl gehydrolyseerde dierlijke eiwitten",
  "thee-coco gehydrolyseerd dierlijk eiwit",
  "thee-lauroyl dierlijke collageenaminozuren",
  "thee-lauroyl dierlijke keratineaminozuren",
  "thee-myristol gehydrolyseerd dierlijk eiwit",
  "thee-undecylenoyl gehydrolyseerd dierlijk eiwit",
  "zaadextract",
  "Threonine",
  "thüringer worst",
  "Tilapia",
  "tong",
  "met triethonium gehydrolyseerd dierlijk eiwitethosulfaat",
  "Trilaneth-4phosphate",
  "pens",
  "triterpene-alcoholen",
  "forel",
  "Trypsine",
  "tonijn",
  "Turkije",
  "Turkije",
  "Turkse Bacon",
  "kalkoenfilet",
  "schildpad",
  "schildpadolie",
  "schildpad oilea schildpadolie",
  "Tyrosine",
  "niet-gehomogeniseerde melk",
  "ureum",
  "ureum carbamide",
  "urinezuur",
  "urinezuur van koeien",
  "Uricacid",
  "urine",
  "kalfsvlees",
  "kalfsbrood",
  "hertevlees",
  "vitamine A",
  "vitamine B-complex factor",
  "vitamine d ergocalciferol vitamine d",
  "vitamine d3",
  "vitamine h",
  "Vitaminb",
  "vitaminb-factor",
  "Volaise",
  "wei",
  "weipoeder",
  "wei-eiwit",
  "slagroom",
  "slagroom topping",
  "wit vlees",
  "volle melk",
  "volle melkyoghurt",
  "wild zwijn",
  "wild vlees",
  "wol",
  "wolvet",
  "wolwas",
  "wolwasalcoholen",
  "yoghurt",
  "yoghurt",
  "zinkcaseïnaat",
  "zink gehydrolyseerd dierlijk eiwit"
];