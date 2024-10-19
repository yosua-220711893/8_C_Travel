class Person{
  final String name;
  final String phone;
  final String picture;
  const Person(this.name, this.phone, this.picture);
}

final List<Person> people =
      _people.map((e) => Person(e['name'] as String, e['phone'] as String, e['picture'] as String)).toList(growable: false);

final List<Map<String, Object>> _people = 
  [
  {
    "_id": "66fcdf171b3fa9b1087dd760",
    "index": 0,
    "guid": "758d8d4b-cf68-48e1-b7c1-045396f3972d",
    "isActive": true,
    "balance": "\$1,343.18",
    "picture": "http://placehold.it/32x32",
    "age": 29,
    "eyeColor": "green",
    "name": "Margarita Sanford",
    "gender": "female",
    "company": "KYAGURU",
    "email": "margaritasanford@kyaguru.com",
    "phone": "+1 (973) 440-3630",
    "address": "983 Vandervoort Avenue, Cressey, Marshall Islands, 7464",
    "about": "Cupidatat laboris in ipsum laborum do ullamco enim incididunt elit duis. Occaecat velit nisi adipisicing aute pariatur veniam esse voluptate aliquip. Ut veniam elit excepteur id voluptate in sit dolor id.\r\n",
    "registered": "2014-07-25T04:44:32 -07:00",
    "latitude": -30.556495,
    "longitude": -88.986851,
    "tags": [
      "nulla",
      "occaecat",
      "enim",
      "eu",
      "laboris",
      "esse",
      "aliqua"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Verna Mcknight"
      },
      {
        "id": 1,
        "name": "Velazquez Warner"
      },
      {
        "id": 2,
        "name": "Mary French"
      }
    ],
    "greeting": "Hello, Margarita Sanford! You have 4 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66fcdf17443f05a02f0783a1",
    "index": 1,
    "guid": "51f37ace-8d4e-47aa-8fc1-efc854070b7d",
    "isActive": true,
    "balance": "\$1,980.04",
    "picture": "http://placehold.it/32x32",
    "age": 36,
    "eyeColor": "green",
    "name": "Jensen Bean",
    "gender": "male",
    "company": "EARTHWAX",
    "email": "jensenbean@earthwax.com",
    "phone": "+1 (856) 442-2340",
    "address": "359 Boerum Street, Rushford, Minnesota, 3762",
    "about": "Magna Lorem adipisicing consequat proident esse nostrud veniam adipisicing cillum est incididunt. Ullamco non veniam ex ut do laborum enim deserunt. Tempor Lorem est enim sunt. Incididunt nisi cupidatat laborum excepteur aliquip commodo aliqua ut eu aliquip nisi deserunt sunt labore. Dolore velit dolor dolore eiusmod in voluptate velit dolore. Duis reprehenderit incididunt cupidatat sint sint pariatur sint pariatur amet sint adipisicing. Occaecat magna id consequat elit non laboris do.\r\n",
    "registered": "2020-03-28T09:08:48 -07:00",
    "latitude": 84.606557,
    "longitude": -54.6968,
    "tags": [
      "occaecat",
      "deserunt",
      "ad",
      "aute",
      "sunt",
      "ex",
      "nulla"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Lindsay Maddox"
      },
      {
        "id": 1,
        "name": "Roseann Hays"
      },
      {
        "id": 2,
        "name": "Reeves Salinas"
      }
    ],
    "greeting": "Hello, Jensen Bean! You have 3 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66fcdf17a67d5f7a0cd5c728",
    "index": 2,
    "guid": "bee3d627-53ce-4baf-8773-c2fd4c4dcaba",
    "isActive": true,
    "balance": "\$1,775.39",
    "picture": "http://placehold.it/32x32",
    "age": 21,
    "eyeColor": "green",
    "name": "Ware Logan",
    "gender": "male",
    "company": "QUILCH",
    "email": "warelogan@quilch.com",
    "phone": "+1 (903) 458-2767",
    "address": "740 Atkins Avenue, Eureka, Utah, 6041",
    "about": "Proident est aliquip occaecat duis ea. Consequat duis sit esse laborum in voluptate excepteur amet. Enim aute mollit aliqua commodo adipisicing qui quis elit ex ut. Nisi ea ex aliqua magna reprehenderit laborum qui voluptate Lorem.\r\n",
    "registered": "2014-10-05T02:55:24 -07:00",
    "latitude": 26.798081,
    "longitude": -151.40724,
    "tags": [
      "excepteur",
      "est",
      "exercitation",
      "ullamco",
      "enim",
      "est",
      "incididunt"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Erickson Farley"
      },
      {
        "id": 1,
        "name": "Michael Cummings"
      },
      {
        "id": 2,
        "name": "Deanne Solomon"
      }
    ],
    "greeting": "Hello, Ware Logan! You have 3 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66fcdf17322120f597dfd754",
    "index": 3,
    "guid": "addba440-7a69-44b0-93bc-2052ec91c6c3",
    "isActive": true,
    "balance": "\$3,075.98",
    "picture": "http://placehold.it/32x32",
    "age": 27,
    "eyeColor": "blue",
    "name": "Vasquez Rose",
    "gender": "male",
    "company": "PAPRICUT",
    "email": "vasquezrose@papricut.com",
    "phone": "+1 (931) 441-2446",
    "address": "991 Conklin Avenue, Cochranville, Louisiana, 5543",
    "about": "In eiusmod proident irure cupidatat esse nostrud veniam. Exercitation esse laboris voluptate mollit elit ipsum id. Pariatur proident laborum quis cupidatat officia in magna ad in do ad. Est ut ut cupidatat tempor.\r\n",
    "registered": "2019-11-10T11:42:58 -07:00",
    "latitude": 45.14054,
    "longitude": 172.067,
    "tags": [
      "irure",
      "tempor",
      "tempor",
      "officia",
      "nisi",
      "sit",
      "magna"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Desiree Mckee"
      },
      {
        "id": 1,
        "name": "Gwen Banks"
      },
      {
        "id": 2,
        "name": "Kristen Cox"
      }
    ],
    "greeting": "Hello, Vasquez Rose! You have 6 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66fcdf1759a0a8cccf12321e",
    "index": 4,
    "guid": "8c16c0a2-ddb1-445d-b6b6-dacb884ecd55",
    "isActive": true,
    "balance": "\$3,329.00",
    "picture": "http://placehold.it/32x32",
    "age": 39,
    "eyeColor": "green",
    "name": "Kirsten Holmes",
    "gender": "female",
    "company": "EXOSWITCH",
    "email": "kirstenholmes@exoswitch.com",
    "phone": "+1 (806) 567-2417",
    "address": "177 Conduit Boulevard, Stagecoach, Kansas, 3337",
    "about": "Do sunt ullamco ex labore dolore enim. Velit sit enim nostrud sit nulla ea ea ex ullamco id. Laboris reprehenderit esse laborum ad tempor fugiat. Nulla deserunt ullamco consequat amet proident fugiat.\r\n",
    "registered": "2015-02-13T03:26:08 -07:00",
    "latitude": -82.352156,
    "longitude": 122.935629,
    "tags": [
      "velit",
      "cupidatat",
      "reprehenderit",
      "adipisicing",
      "do",
      "ipsum",
      "elit"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Schultz White"
      },
      {
        "id": 1,
        "name": "Benita Dickson"
      },
      {
        "id": 2,
        "name": "June Orr"
      }
    ],
    "greeting": "Hello, Kirsten Holmes! You have 4 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "66fcdf17783eeb69de59086c",
    "index": 5,
    "guid": "5b791952-c034-4569-bf81-f66470a7b15a",
    "isActive": false,
    "balance": "\$2,857.40",
    "picture": "http://placehold.it/32x32",
    "age": 34,
    "eyeColor": "green",
    "name": "Lois Caldwell",
    "gender": "female",
    "company": "GEEKULAR",
    "email": "loiscaldwell@geekular.com",
    "phone": "+1 (988) 489-2258",
    "address": "895 Covert Street, Grimsley, Kentucky, 5672",
    "about": "Enim amet qui nulla non eu ullamco. Ullamco dolore dolore sunt tempor reprehenderit sint fugiat minim enim magna enim aute. Sint proident minim in ad enim. Nulla magna pariatur nostrud eiusmod ad pariatur elit irure nisi ad.\r\n",
    "registered": "2016-06-30T04:24:31 -07:00",
    "latitude": -81.213037,
    "longitude": -76.609405,
    "tags": [
      "elit",
      "amet",
      "ad",
      "velit",
      "reprehenderit",
      "commodo",
      "ex"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Dominique Mcclain"
      },
      {
        "id": 1,
        "name": "Garner Bowman"
      },
      {
        "id": 2,
        "name": "Suzette Wynn"
      }
    ],
    "greeting": "Hello, Lois Caldwell! You have 1 unread messages.",
    "favoriteFruit": "banana"
  }
];