class Person {
  final String name;
  final String phone;
  final String picture;
  const Person(this.name, this.phone, this.picture);
}

final List<Person> people = _people
    .map((e) => Person(
        e['name'] as String, e['phone'] as String, e['picture'] as String))
    .toList(growable: false);

final List<Map<String, Object>>_people=
[
  {
    "_id": "66fd938   b9033e0de2f209974",
    "index": 0,
    "guid": "10798ede-da35-46e2-b2e4-9b4913413db9",
    "isActive": true,
    "balance": "\$3,262.15",
    "picture": "http://placehold.it/32x32",
    "age": 30,
    "eyeColor": "brown",
    "name": "Guzman Snow",
    "gender": "male",
    "company": "SQUISH",
    "email": "guzmansnow@squish.com",
    "phone": "+1 (921) 470-2460",
    "address": "998 Rochester Avenue, Savage, Indiana, 5320",
    "about": "Nulla officia consectetur sit aliqua excepteur ex dolore aliqua Lorem consequat. Pariatur dolore veniam occaecat eiusmod nisi. Amet consectetur anim excepteur anim. Lorem tempor consequat incididunt aute nulla voluptate cillum. Cillum ullamco labore proident dolore veniam id sint aliqua sint minim anim ex anim nisi. Id adipisicing sint do elit ut exercitation sit velit voluptate. Amet aliquip magna ex nostrud magna eiusmod laborum ut et pariatur.\r\n",
    "registered": "2023-10-30T04:02:02 -07:00",
    "latitude": 81.973111,
    "longitude": 113.117114,
    "tags": [
      "cillum",
      "eiusmod",
      "tempor",
      "occaecat",
      "officia",
      "amet",
      "labore"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Desiree Vazquez"
      },
      {
        "id": 1,
        "name": "Mooney Aguilar"
      },
      {
        "id": 2,
        "name": "Horton Welch"
      }
    ],
    "greeting": "Hello, Guzman Snow! You have 1 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "66fd938bec5e9fbbf911db72",
    "index": 1,
    "guid": "915e886f-79b9-4544-a0b8-345b6565af9a",
    "isActive": true,
    "balance": "\$1,522.24",
    "picture": "http://placehold.it/32x32",
    "age": 34,
    "eyeColor": "brown",
    "name": "Kidd Skinner",
    "gender": "male",
    "company": "EVENTAGE",
    "email": "kiddskinner@eventage.com",
    "phone": "+1 (854) 491-2328",
    "address": "594 Ridgewood Avenue, Urbana, Colorado, 1392",
    "about": "Quis consectetur in pariatur fugiat exercitation non elit incididunt eu occaecat. Sint sint velit exercitation dolore labore ad sunt aliquip excepteur consequat et voluptate dolor excepteur. Veniam dolor sit deserunt deserunt amet esse. Dolore laborum culpa eiusmod enim aliquip sit proident exercitation non irure. Labore culpa adipisicing cillum velit et anim elit aliqua consectetur voluptate cillum. Ex esse pariatur exercitation fugiat.\r\n",
    "registered": "2023-12-05T06:26:45 -07:00",
    "latitude": -39.96376,
    "longitude": -39.720135,
    "tags": [
      "aliqua",
      "sunt",
      "consequat",
      "est",
      "ullamco",
      "aliqua",
      "cillum"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Irene Bullock"
      },
      {
        "id": 1,
        "name": "Ochoa Shaw"
      },
      {
        "id": 2,
        "name": "Monroe Mullins"
      }
    ],
    "greeting": "Hello, Kidd Skinner! You have 5 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "66fd938bb1d855fd2bd2bcce",
    "index": 2,
    "guid": "6ed57567-dcfb-4b77-b80f-69dc93132e02",
    "isActive": true,
    "balance": "\$2,633.81",
    "picture": "http://placehold.it/32x32",
    "age": 31,
    "eyeColor": "brown",
    "name": "Castillo Blair",
    "gender": "male",
    "company": "MULTIFLEX",
    "email": "castilloblair@multiflex.com",
    "phone": "+1 (976) 532-2343",
    "address": "728 Christopher Avenue, Hillsboro, Virgin Islands, 297",
    "about": "Nulla duis ut fugiat minim occaecat. Magna ad voluptate pariatur sint quis magna tempor tempor aliqua consectetur elit aliquip minim. Enim aute esse do ad elit consectetur ipsum duis consectetur et eu sint. Irure ipsum occaecat consequat quis dolor qui incididunt pariatur aliquip. Dolore amet tempor ipsum do in occaecat officia. Pariatur exercitation consequat exercitation eu voluptate esse fugiat fugiat. Exercitation deserunt do proident veniam non consequat culpa esse culpa magna eu excepteur aliqua amet.\r\n",
    "registered": "2019-10-26T06:30:28 -07:00",
    "latitude": 59.506445,
    "longitude": -61.233586,
    "tags": [
      "anim",
      "duis",
      "sint",
      "irure",
      "veniam",
      "nulla",
      "elit"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Schwartz Patton"
      },
      {
        "id": 1,
        "name": "Larson Chase"
      },
      {
        "id": 2,
        "name": "Betsy Dale"
      }
    ],
    "greeting": "Hello, Castillo Blair! You have 10 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "66fd938b6f7c17fc0c4b638e",
    "index": 3,
    "guid": "44afbdb0-3916-4521-8f30-b237a3eebba4",
    "isActive": true,
    "balance": "\$1,617.86",
    "picture": "http://placehold.it/32x32",
    "age": 36,
    "eyeColor": "green",
    "name": "Kelli Dyer",
    "gender": "female",
    "company": "ORBAXTER",
    "email": "kellidyer@orbaxter.com",
    "phone": "+1 (837) 586-3311",
    "address": "429 Sutton Street, Winchester, Maine, 9806",
    "about": "Officia commodo nisi anim laboris esse tempor quis nulla laboris do proident cillum aliqua. Anim velit eu sunt magna nulla Lorem enim dolore duis dolor ullamco anim elit fugiat. Id aliquip tempor qui minim sint nisi commodo commodo minim.\r\n",
    "registered": "2014-04-02T05:45:24 -07:00",
    "latitude": 46.546141,
    "longitude": -55.138939,
    "tags": [
      "in",
      "consectetur",
      "enim",
      "consectetur",
      "excepteur",
      "pariatur",
      "id"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Cecilia Gates"
      },
      {
        "id": 1,
        "name": "Lorena Parks"
      },
      {
        "id": 2,
        "name": "Teri Mccray"
      }
    ],
    "greeting": "Hello, Kelli Dyer! You have 5 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66fd938bbf0c8400f1b051b1",
    "index": 4,
    "guid": "3a1ec5fe-ccca-4214-a192-6c331c0ab559",
    "isActive": true,
    "balance": "\$2,876.01",
    "picture": "http://placehold.it/32x32",
    "age": 32,
    "eyeColor": "green",
    "name": "Tate Lawrence",
    "gender": "male",
    "company": "PLASMOSIS",
    "email": "tatelawrence@plasmosis.com",
    "phone": "+1 (824) 479-3793",
    "address": "963 Williams Court, Klondike, Oregon, 741",
    "about": "Excepteur ex sit consectetur laborum exercitation. Ut sit consequat eu nulla. Consequat nostrud culpa occaecat enim ullamco excepteur consectetur ea occaecat ut labore in quis eiusmod. Occaecat incididunt voluptate eu et dolor cupidatat dolore voluptate ex ad. Ut deserunt duis do mollit ut. Commodo ipsum ex mollit cillum reprehenderit non non exercitation duis dolore aliqua. Esse laborum ad laboris ullamco Lorem eiusmod.\r\n",
    "registered": "2022-01-20T04:24:08 -07:00",
    "latitude": 49.985672,
    "longitude": -12.085173,
    "tags": [
      "enim",
      "nulla",
      "qui",
      "ex",
      "dolore",
      "consectetur",
      "magna"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Rosie Kemp"
      },
      {
        "id": 1,
        "name": "Christian Key"
      },
      {
        "id": 2,
        "name": "Melissa Caldwell"
      }
    ],
    "greeting": "Hello, Tate Lawrence! You have 2 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "66fd938b86fef4b4583dafd1",
    "index": 5,
    "guid": "7d00ed12-155d-4786-924d-44909b30094a",
    "isActive": false,
    "balance": "\$3,590.09",
    "picture": "http://placehold.it/32x32",
    "age": 36,
    "eyeColor": "green",
    "name": "Mable Scott",
    "gender": "female",
    "company": "HARMONEY",
    "email": "mablescott@harmoney.com",
    "phone": "+1 (935) 457-2850",
    "address": "458 Gerald Court, Dante, Puerto Rico, 4433",
    "about": "Sint voluptate minim fugiat amet culpa. Id pariatur commodo aliquip consectetur. Pariatur officia consectetur mollit dolor. Amet laborum pariatur pariatur minim id aliqua.\r\n",
    "registered": "2020-04-02T03:54:55 -07:00",
    "latitude": -62.384026,
    "longitude": 178.358802,
    "tags": [
      "reprehenderit",
      "est",
      "laborum",
      "sint",
      "et",
      "ullamco",
      "laboris"
    ],
    "friends": [
      {
        "id": 0,
        "name": "May Pace"
      },
      {
        "id": 1,
        "name": "Esperanza King"
      },
      {
        "id": 2,
        "name": "Ebony Fitzpatrick"
      }
    ],
    "greeting": "Hello, Mable Scott! You have 3 unread messages.",
    "favoriteFruit": "strawberry"
  }
];
