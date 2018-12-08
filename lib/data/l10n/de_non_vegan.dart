const deNonVeganIngredients = [
  "Abalone",
  "Acetat",
  "acetyliertes hydriertes Schmalzglycerid",
  "acetyliertes Lanolin",
  "acetylierter Lanolinalkohol",
  "acetyliertes Lanolinricinoleat",
  "acetylierter Talg",
  "Acid",
  "acidophilus milch",
  "Adrenalin",
  "Nebennieren von Rindern",
  "Nebennieren von Schweinen",
  "Nebennieren von Schafen",
  "Nachgeburt",
  "Alanin",
  "Eiweiß",
  "Albumin",
  "alcloxa",
  "Aldioxa",
  "aliphatischer Alkohol",
  "Allantoin",
  "Alligator",
  "Alligatorhaut",
  "alpha-Hydroxysäuren",
  "Ambra",
  "amerachol",
  "amerchol l101",
  "Aminiuccinatsäure",
  "Aminosäuren",
  "Aminosuccinatsäure",
  "Ammoniumcaseinat",
  "Ammoniumhydrolysiertes Protein",
  "Fruchtwasser",
  "ampd isoterisches hydrolisiertes tierisches Protein",
  "Amylase",
  "Sardellen",
  "Anschovis",
  "Angora",
  "Tierknochen",
  "tierische Kollagenaminosäuren",
  "Tierfett",
  "tierische Fette und Öle",
  "Tierhaar",
  "tierische Keratinaminosäuren",
  "tierisches öl",
  "Tierplazenta",
  "tierisches Proteinderivat",
  "Tiergewebeextrakt",
  "Arachidonsäure",
  "Arachidylpropionat",
  "Asparaginsäure",
  "Sülze",
  "Astrachan",
  "hinterer Speck",
  "Rückenfett",
  "Speck",
  "Bass",
  "Batylalkohol",
  "Batylisostearat",
  "Bär",
  "Bienenpollen",
  "Bienenprodukte",
  "Rindfleisch",
  "Rinderherz",
  "Rinderleber",
  "Rinderzunge",
  "Beepollen",
  "Bienenwachs",
  "Bienenwachs",
  "Bienenwachswabe",
  "Bauchspeck",
  "Benzyltrimonium-hydrolysiertes tierisches Protein",
  "Biotin-Vitamin-H-Vitamin-B-Faktor",
  "Bison",
  "Blut",
  "Blutplasmafraktionierung",
  "Blutzunge",
  "Eberborsten",
  "gekochter Schinken",
  "Knochenasche",
  "knochenchar",
  "Knochenkohle (Kohle) / Boneblack",
  "Knochenkohle",
  "Knochenerde",
  "Knochenmehl",
  "Knochenphosphat",
  "knochensuppe",
  "Knochen / Knochenmehl",
  "Boneblack",
  "Bonito",
  "Rinderserumalbumin",
  "Gehirnextrakt",
  "Bratwurst",
  "Sülze",
  "Frühstücksspeck",
  "bresaola",
  "Borste",
  "bruehwurst",
  "Büffel",
  "Büffelmilch",
  "Buschfleisch",
  "Butter",
  "Butterfett",
  "Butterfeststoffe",
  "Buttermilch",
  "Buttermilchpulver",
  "c30-46 piscine oil",
  "calamari",
  "Calciferol",
  "calciferool",
  "Calciumcaseinat",
  "Kalbsleber",
  "Kalbsleder",
  "Kalbsleder-Extrakt",
  "Kamelmilch",
  "Kanadischer Speck",
  "Cantharid-Tinktur",
  "capiz",
  "Caprylbetain",
  "Caprylaminoxid",
  "Caprylsäure",
  "Caprylentriglycerid",
  "Carbamid",
  "Karibu",
  "karminrot",
  "Carmin Cochineal Carminsäure",
  "Carmin / Carminsäure",
  "Carmin: Cochineal. Carminsäure",
  "Carminic",
  "Carminsäure",
  "Carotin Provitamin ein Beta-Carotin",
  "Karpfen",
  "Kasein",
  "Caseincaseinat-Natriumcaseinat",
  "Kaseinat",
  "Kaseinogen",
  "Kaschmir",
  "castor castoreum",
  "castoreum",
  "Wels",
  "Katgut",
  "Catharidin",
  "Kaviar (e)",
  "cera flava",
  "Cerebroside",
  "bestimmte Zusatzstoffe",
  "ceteth-02",
  "ceteth-1",
  "ceteth-10",
  "ceteth-2",
  "ceteth-30",
  "ceteth-4",
  "ceteth-6",
  "Cetylalkohol",
  "Cetyllactat",
  "Cetylmyristat",
  "Cetylpalmitat",
  "Gämse",
  "Käse",
  "Hähnchen",
  "Hähnchen",
  "Hühnerbrust",
  "Hühnerleber",
  "Hühnerbrot",
  "gehackter Schinken",
  "Chitin",
  "Chitosan",
  "Cholecalciferol",
  "Cholesterin",
  "Cholesterin",
  "Cholin-Bitartrat",
  "Chondroitin",
  "Gehackter Schinken",
  "chorizo",
  "Chymotrypsin",
  "Zibet",
  "geklärte Butter",
  "Clotted Cream",
  "Koschenille",
  "Kabeljau",
  "Lebertran",
  "Aufschnitt",
  "coleth-24",
  "Kollagen",
  "Kollagenhydrolysat",
  "Farbstoffe",
  "Kondensmilch",
  "Konditorglasur",
  "gekochter Schinken",
  "gekochtes Fleisch",
  "Koralle",
  "Corned Beef",
  "kornisches Spielhenne",
  "Cortico Steroid",
  "Corticosteroid",
  "Kortison",
  "Cortison Corticosteroid",
  "Cortison: siehe Cortico Steroid.",
  "cotechino",
  "Hüttenkäse",
  "Krabbe",
  "Krabbe",
  "Krabbenfleisch",
  "Langusten",
  "Flusskrebs",
  "Sahne",
  "Sahne",
  "Schalentiere",
  "Die Quarkmasse",
  "Vanillepudding",
  "Cystein, L-Form",
  "Cystin",
  "dunkles Fleisch",
  "dashi",
  "Dea-Oleth-10-Phosphat",
  "Hirsch",
  "Hirschfleisch",
  "delactosed molke",
  "deli Fleisch",
  "entmineralisierte Molke",
  "Desoxyribonukleinsäure",
  "Desamido-Tierkollagen",
  "Desamidocollagen",
  "devon",
  "Dexpanthenol",
  "Dicapryloylcystin",
  "Diethylentricaseinamid",
  "Diglyceride",
  "Dihydrocholesterol",
  "Dihydrocholesteroloctyledecanoat",
  "Dihydrocholeth-15",
  "Dihydrocholeth-30",
  "dihydriertes Talgbenzylmoniumchlorid",
  "dihydriertes Talgmethylamin",
  "Dihydrogeniertes Talgphthalat",
  "Dihydroxyethyltalgaminoxid",
  "hydriertes Dimethyltalgamin",
  "Dimethylstearamin",
  "Dimethyltalgamin",
  "hydriertes Dinatriumtallglutamat",
  "Dinatrium-Tallamido-Measulfosuccinat",
  "Dinatriumtalgaminodipropionat",
  "Ditallowdimoniumchlorid",
  "dna",
  "Nieder",
  "getrocknete Buttermilch",
  "getrocknetes Eigelb",
  "Trockenmilchfeststoffe",
  "trockene Vollmilch",
  "Ente",
  "Entenschinken",
  "Entenleber",
  "Duodenumsubstanzen",
  "Duodenumsubstanzen",
  "holländisches laib",
  "Farbstoffe",
  "e120",
  "e441",
  "e542",
  "e904",
  "e913",
  "essbares Knochenphosphat",
  "Ei",
  "Eiweiß",
  "Eialbumin / Albumin",
  "Eieröl",
  "Eipulver",
  "Eiprotein",
  "Eiweiß",
  "Eigelb",
  "Eigelb-Extrakt",
  "Eigelb",
  "Eier",
  "Elastin",
  "Elastin",
  "Elchspeck",
  "Embryoextrakt",
  "Emu",
  "Emu-Öl",
  "Epidermöl r",
  "Ergisterol",
  "Ergocalciferol",
  "Ergosterol",
  "Estradiol",
  "Estradiolbenzoat",
  "Östrogen",
  "Östrogenöstradiol",
  "Östrogen / Estradiol",
  "Estrone",
  "Ethylester von hydrolysiertem tierischem Protein",
  "Ethylmorrhuatelipineate",
  "Ethylarachidonat",
  "Ethylen dehydriertes Talgamid",
  "Kondensmilch",
  "Schafmilch",
  "fettfreie Milch",
  "fettfreier Joghurt",
  "Fette",
  "Fettsäuren",
  "fd und c farben",
  "Gefieder",
  "fühlte",
  "fermentierte Kamelmilch",
  "fermentierte Sahne",
  "fermentierte Milch",
  "Fisch",
  "Fischglyceride",
  "Fischleber",
  "Fischleberöl",
  "Fischleber",
  "Fischöl",
  "Fischsoße",
  "Fischschuppen",
  "Fischsoße",
  "Fletanöl",
  "Pelz",
  "Gel",
  "Gelatine",
  "Gelatinegel",
  "Gelatine)",
  "gelbwurst",
  "Ghee",
  "Mägen",
  "Glucosamin",
  "Glukosetyrosinase",
  "Glucuronsäure",
  "Glutaminsäure",
  "Glyceride",
  "Glycerin-Glycerin",
  "Glycerin",
  "Glyceryllaanolat",
  "Glyceryle",
  "Glykogen",
  "Glycreth-26",
  "Ziege",
  "Ziegenkäse",
  "Ziegenmilch",
  "Gans",
  "Gänseisolierfedern",
  "Gänseleber",
  "Rinderhack",
  "Auerhahn",
  "Guanin",
  "Guaninperlenessenz",
  "Guanin / Perlenessenz",
  "Meerschweinchen",
  "Zigeuner Speck",
  "Schellfisch",
  "Haare von Schweinen",
  "Heilbutt",
  "Schinken",
  "Schinken-Käse-Laib",
  "Kopf Käse",
  "Schlagsahne",
  "Heptylundecanol",
  "verbergen",
  "Leim verstecken",
  "homogenisierte Milch",
  "Honig",
  "Bienenwabe",
  "Pferd",
  "Pferdehaar",
  "Pferdefleisch",
  "Pferdehaar",
  "Hotdog",
  "menschliches Plazentaprotein",
  "menschlicher Nabelextrakt",
  "Hyaluronsäure",
  "hydriertes humanes Plazentaprotein",
  "Hydrocortison",
  "hydriertes Tierglycerid",
  "hydriertes Ditalgamin",
  "hydrierter Honig",
  "hydriertes Laneth-20",
  "hydriertes Laneth-25",
  "hydriertes Laneth-5",
  "hydriertes Lanolin",
  "hydrierter Lanolinalkohol",
  "hydriertes Schmalzglycerid",
  "hydriertes Hai-Leber-Öl",
  "hydrierte Talgsäure",
  "hydriertes Talgbetain",
  "hydriertes Talgglycerid",
  "hydrolysiertes tierisches Elastin",
  "hydrolysiertes tierisches Keratin",
  "hydrolysiertes tierisches Protein",
  "hydrolysiertes Kasein",
  "hydrolysiertes Elastin",
  "hydrolysiertes Keratin",
  "hydrolysiertes Milchprotein",
  "hydrolysierte Seide",
  "hydroxyliertes Lanolin",
  "Eis",
  "Imidazolidinylharnstoff",
  "Insulin",
  "Eisenkaseinat",
  "isinglass",
  "isobutyliertes Lanolin",
  "Isopropyl Lanolat",
  "Isopropylmyristat",
  "Isopropyltalgatopropyllanolat",
  "Isopropylpalmitat",
  "isostearisches hydrolisiertes tierisches Protein",
  "Isostearoyl-hydrolysiertes tierisches Protein",
  "jagdwurst",
  "Backe",
  "Känguru",
  "katsuobushi (okaka)",
  "Keratin",
  "Keratinaminosäuren",
  "l-Cystein",
  "l-form",
  "l-Form: siehe Cystein.",
  "L-Milchsäure",
  "lacotse-reduzierte Milch",
  "Laktalbumin",
  "Laktalbumin",
  "Milchhefen",
  "Milchsäure",
  "Lactoferrin",
  "Lactoglobulin",
  "Laktose",
  "laktosefreie Milch",
  "Lactulose",
  "Lamm",
  "Lammspeck",
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
  "Laneth-9-acetat",
  "Laneth10-Acetat",
  "Lanogen",
  "Lanoinamidedea",
  "Lanolin",
  "Lanolinsäure",
  "Lanolinsäure: siehe Lanolin",
  "Lanolinalkohol",
  "Lanolinalkohole",
  "Lanolinalkohole: siehe Lanolin",
  "Lanolin Lanolinsäuren Wollfettwollwachs",
  "Lanolin-Linoleat",
  "Lanolinöl",
  "Lanolin-Ricinoleat",
  "Lanolinwachs",
  "Lanolin (e)",
  "Lanolin: Lanolinsäure",
  "Lanosterol",
  "Lanosterol: siehe Lanolin",
  "Lanosterole",
  "Schmalz",
  "Schmalzglycerid",
  "Lauroyl-hydrolysiertes tierisches Protein",
  "Leder",
  "Leder Wildleder Kalbsleder Schaffellalligator Haut andere Haut",
  "Lecithin-Cholinbitartrat",
  "Leucin",
  "Linolsäure",
  "Lipase",
  "Lipide",
  "Lipoide Lipide",
  "Leber",
  "Leberextrakt",
  "Leberwurst",
  "Hummer",
  "fettarme Milch",
  "fettarmer Joghurt",
  "lunasponge",
  "Luncehon Laib",
  "mittagessen",
  "Frühstücksfleisch",
  "Lysin",
  "Makrele",
  "Magnesiumkaseinat",
  "Malzmilch",
  "Säugetierextrakt",
  "Meeresöl",
  "Marksuppe",
  "Mayonnaise",
  "mea-hydrolysiertes tierisches Protein",
  "Fleisch",
  "Hackbraten",
  "Frikadelle",
  "mechanisch getrenntes Huhn",
  "Methionin",
  "Mettwurst",
  "Milch",
  "Milchschokolade",
  "Milchderivat",
  "Milch von Säugetieren",
  "Milch eiweiß",
  "Milchhaut",
  "Milch Zucker",
  "Milchfett",
  "Milchpulver",
  "Hackfleisch",
  "Hackfleisch",
  "Nerzöl",
  "Minkamidopropyldiethylamin",
  "Mohair",
  "Mollusken-Muscheln",
  "Seeteufel",
  "Mono- und Diglyceride",
  "Monoglyceride Glyceride",
  "Monoglyceride Glyceride (siehe Glycerin)",
  "Elch",
  "Mortadella",
  "Moosbunkeröl",
  "Meeräsche",
  "Muskelextrakt",
  "Moschus",
  "Moschus (Öl)",
  "Moschusambrette",
  "Muschel",
  "Muscheln",
  "Hammelfleisch",
  "Hammelfleisch",
  "Myristalethersulfat",
  "Myristatsäure",
  "Myristinsäure",
  "Myristoyl-hydrolysiertes tierisches Protein",
  "Myristyl",
  "Myristyle",
  "natürliches Butteraroma",
  "natürliche Aromen",
  "naturrot 4",
  "natürliche Quellen",
  "Hals",
  "fettfreie Milch",
  "Hinweis:",
  "Nougat",
  "Nukleinsäuren",
  "ocenol",
  "Tintenfisch",
  "Octyldodecanol",
  "Öle",
  "Oleamidopropyldimethylamin-hydrolysiertes tierisches Protein",
  "Ölsäure",
  "Ölsäureöl",
  "Oleostearin",
  "Oleostearin",
  "Oleoyl-hydrolysiertes tierisches Protein",
  "oleths",
  "Oleylarachidat",
  "Oleylbetatin",
  "Oleylimidazolin",
  "Oleyllanolat",
  "Oleylmyristat",
  "Oleyloleat",
  "Oleylstearat",
  "Oleylalkohol-Ocenol",
  "Oleylimidazolin",
  "Omega-3-Fettsäuren",
  "Beutelratte",
  "Orgelfleisch",
  "Orgelfleisch",
  "Organe",
  "Strauß",
  "Eieralbumin",
  "Eierstock-Extrakt",
  "Ochsengalle",
  "oxgall",
  "Auster",
  "Palmitamid",
  "Palmitamin",
  "Palmitat",
  "Palmitinsäure",
  "Palmitoyl-hydrolisiertes Milcheiweiß",
  "Palmitoylhydrolysiertes Tierprotein",
  "Speck",
  "Panthenol-Dexpanthenol-Vitamin-B-Komplex-Faktor Provitamin B-5",
  "Panthenyl",
  "Paracasein",
  "Rebhuhn",
  "Pasteurisierte Milch",
  "Perle",
  "Perlenessenz",
  "Pentahydrosqualen",
  "Pepsin",
  "Perhydrosqualen",
  "pharmazeutische Glasur",
  "Fasan",
  "Picknickschulter",
  "Schweinsleder-Extrakt",
  "Plazenta",
  "Plazenta Plazenta Polypeptide Protein Nachgeburt",
  "Plazenta-Polypeptid-Protein",
  "Plazentaenzyme",
  "Plazentaextrakt",
  "Plazenta-Protein",
  "Scholle",
  "pogy oil",
  "Pollock",
  "Polyethylenethylen-Cetylether",
  "Polyglycerin",
  "Polyglyceryl-2lanolinalkoholether",
  "Polypeptide",
  "Polypeptidprotein",
  "Polysorbate",
  "Polyethylenglycerin / Glykol / Stift",
  "Schweinepankreas",
  "Schweinefleisch",
  "Schweinefett",
  "Schweinebrötchen",
  "Kaliumkaseinat",
  "Kaliumtalgat",
  "Kaliumundecylenoyl-hydrolysiertes tierisches Protein",
  "Geflügel",
  "ppg-12-peg-50-Lanolin",
  "ppg-2, -5, -10. -20, -30-Lanolinalkoholether",
  "ppg-30 Lanolinether",
  "Garnele",
  "Pregnenolonacetat",
  "Pristan",
  "Progesteron",
  "Propolis",
  "Prosciutto",
  "Provitamin A",
  "Provitamin B-5",
  "Provitamin D-2",
  "Purcellinölsyn",
  "Wachtel",
  "Quaternium 27",
  "Hase",
  "rotes Fleisch",
  "fettarme Milch",
  "reduzierter Fettjoghurt",
  "Lab",
  "Lab-Kasein",
  "rennet rennin",
  "rennin",
  "harzartige Glasur",
  "Retikulin",
  "Retinol",
  "Ribonukleinsäure",
  "Rna-Ribonukleinsäure",
  "Roastbeef",
  "Schweinebraten",
  "Rogen",
  "Gelée Royale",
  "Zobel",
  "Zobelbürsten",
  "Saccharidhydrolysat",
  "Saccharidisomerat",
  "Salami",
  "salceson",
  "Lachs",
  "Sardine",
  "Wurst",
  "Würste",
  "Jakobsmuschel",
  "Jakobsmuscheln",
  "See-Schwamm",
  "Meeresschildkrötenöl",
  "See-Schwamm",
  "Serumalbumin",
  "Serumproteine",
  "Haifischleberöl",
  "Hai-Leber-Öl",
  "Schafmilch",
  "schaffell",
  "Schellack",
  "Schellackharzglasur",
  "Schellackwachs",
  "Schulter",
  "Garnele",
  "shrimph",
  "seitlicher Speck",
  "die Seide",
  "Seidenaminosäuren",
  "Seidenpulver",
  "Seidenseidenpulver",
  "Magermilch",
  "Plattenspeck",
  "Plattenspeck",
  "geschnittenes Fleisch",
  "geräucherter Schinken",
  "Schnecke",
  "Schnecken",
  "Schlange",
  "Schnapper",
  "Natrium / Tee-Lauroyl-hydrolysiertes tierisches Protein",
  "Natrium / Tee-Undecylenoyl-hydrolysiertes tierisches Protein",
  "Natriumcaseinat",
  "Natriumcaseinat",
  "Natrium-Coco-Hydrolysiertes tierisches Protein",
  "Natrium-Soja-hydrolysiertes tierisches Protein",
  "Natrium-Talg-Sulfat",
  "Natriumtalgat",
  "Natriumundecylenat",
  "Natriumsteroyllactylat",
  "lösliches Kollagen",
  "Sauerrahm",
  "saure Milch",
  "saure Milchfeststoffe",
  "saure Milch",
  "Sojahydroxyethylimidazolin",
  "Spermaöl",
  "Pottwal-Darm",
  "Walrat",
  "Spermaceticetylpalmitat-Spermaöl",
  "Milzextrakt",
  "Schwamm (Luna und Meer)",
  "squab",
  "Squalan",
  "Squalen",
  "Tintenfisch",
  "Eichhörnchen",
  "Steak",
  "Stearamid",
  "Stearamin",
  "Stearaminoxid",
  "Stearate",
  "Stearinsäure",
  "Stearinsäurehydrazid",
  "Stearin",
  "Stearon",
  "Stearoxytrimethylsilan",
  "Stearoyllactylsäure",
  "Stearylacetat",
  "Stearylalkoholsterole",
  "Stearylbetain",
  "Stearylcaprylat",
  "Stearylcitrat",
  "Stearylglycyrrhetinat",
  "Stearylheptanoat",
  "Stearylimidazolin",
  "Stearyloctanoat",
  "Stearylstearat",
  "Stearyldimethylamin",
  "Steroide Sterole",
  "sterols",
  "kochendes Steak",
  "wachsener Speck",
  "Wildleder",
  "süße Molkerei",
  "süße Molke",
  "Süßbrote",
  "gesüsste Kondensmilch",
  "Schwertfisch",
  "Talg",
  "Talgsäure",
  "Talg Amid",
  "Talgamin",
  "Talgaminoxid",
  "Talgfettalkohol",
  "Talgglyceride",
  "Talghydroxyethalimidazolin",
  "Talgimidazolin",
  "Talgfettalkohol Stearinsäure",
  "Talgtrimoniumchlorid - Talg",
  "Talgamidopropylaminoxid",
  "Talg-6",
  "talowmide dea und mea",
  "Talgmidopropylhydroxysultain",
  "Talgminopropylamin",
  "Talgmphoacete",
  "Tee-Abietoylhydrolysiertes Tierprotein",
  "Tee-Coco-hydrolysiertes tierisches Protein",
  "Tee-Lauroyl-Tierkollagenaminosäuren",
  "Tee-Lauroyl-Tierkeratinaminosäuren",
  "Tee-Myristol hydrolysiertes tierisches Protein",
  "Tee-Undecylenoyl-hydrolysiertes tierisches Protein",
  "Hodenextrakt",
  "Threonin",
  "Thüringer Wurst",
  "Tilapia",
  "Zunge",
  "Triethoniumhydrolysiertes tierisches Proteinethosulfat",
  "Trilaneth-4-phosphat",
  "Gekröse",
  "Triterpenalkohole",
  "Forelle",
  "Trypsin",
  "Thunfisch",
  "Truthahn",
  "Truthahn",
  "Truthahnspeck",
  "Truthahnbrust",
  "Schildkröte",
  "Schildkrötenöl",
  "Turtle Oilsea Turtle Oil",
  "Tyrosin",
  "nicht homogenisierte Milch",
  "Harnstoff",
  "Harnstoffcarbamid",
  "Harnsäure",
  "Harnsäure von Kühen",
  "Harnsäure",
  "Urin",
  "Kalbfleisch",
  "Kalbsbrot",
  "Wild",
  "Vitamin A",
  "Vitamin-B-Komplex-Faktor",
  "Vitamin d Ergocalciferol Vitamin D",
  "Vitamin D3",
  "Vitamin h",
  "Vitaminb",
  "Vitaminb-Faktor",
  "volaise",
  "Molke",
  "Molkepulver",
  "Molkeprotein",
  "Schlagsahne",
  "Schlagsahne",
  "weißes Fleisch",
  "Vollmilch",
  "Vollmilchjoghurt",
  "Wildschwein",
  "Wildfleisch",
  "wolle",
  "Wollfett",
  "Wollwachs",
  "Wollwachsalkohole",
  "Joghurt",
  "Joghurt",
  "Zinkkaseinat",
  "Zinkhydrolysiertes tierisches Protein"
];