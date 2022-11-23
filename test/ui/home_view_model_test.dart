import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/data_source/result.dart';

import 'package:image_search/domain/repository/photo_api_repository.dart';
import 'package:image_search/domain/model/photo.dart';
import 'package:image_search/domain/use_case/get_photos_use_case.dart';
import 'package:image_search/presentation/home/home_view_model.dart';

void main() {
  test('Stream 이 잘 동작해야 한다.', () async {
    final viewModel = HomeViewModel(GetPhotosUseCase(
      repository: FakePhotoApiRepository(),
    ));

    await viewModel.fetch('apple');

    final List<Photo> result =
        (fakeJson.map((e) => Photo.fromJson(e)).toList()).sublist(0, 3);

    expect(viewModel.state.photos, result);
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<Result<List<Photo>>> fetch(String query) async {
    Future.delayed(const Duration(milliseconds: 500));

    return Result.success(fakeJson.map((e) => Photo.fromJson(e)).toList());
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 634572,
    "pageURL":
        "https://pixabay.com/photos/apples-fruits-red-ripe-vitamins-634572/",
    "type": "photo",
    "tags": "apples, fruits, red",
    "previewURL":
        "https://cdn.pixabay.com/photo/2015/02/13/00/43/apples-634572_150.jpg",
    "previewWidth": 100,
    "previewHeight": 150,
    "webformatURL":
        "https://pixabay.com/get/g40fa4f8606c34f6fbffbda88150e947bc4ffd1e4c7dfaafa1833ed3d8990df5228739c77dbdbe873c07b1a3703a000a6_640.jpg",
    "webformatWidth": 427,
    "webformatHeight": 640,
    "largeImageURL":
        "https://pixabay.com/get/g698bc1f81c6240aec47947fa083da4dcbf1f764820d389a4880dc8c64f971454044061c09b84d39ca84ac23560ccbf58524afa7ff741887d4f72e39157d6ce47_1280.jpg",
    "imageWidth": 3345,
    "imageHeight": 5017,
    "imageSize": 811238,
    "views": 445943,
    "downloads": 255555,
    "collections": 1238,
    "likes": 2327,
    "comments": 186,
    "user_id": 752536,
    "user": "Desertrose7",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/03/14/13-25-18-933_250x250.jpg"
  },
  {
    "id": 1868496,
    "pageURL":
        "https://pixabay.com/photos/apple-computer-desk-workspace-1868496/",
    "type": "photo",
    "tags": "apple, computer, desk",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/11/29/08/41/apple-1868496_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gf170da906a521002a519c6b5f228ca2fe8b98210bb9727024b1ae72568d1ccb88e25902d5c4300440487e28dafed627ae365414341d4ad414963410db6e2d75b_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/ge8104fd7c0a45f2fedeff88137a0d656020ce7833d88d92d08c1baf9e741c2dbcea9276ef7519ea06b1c768479c69ee3abbb7f6b6aada974db4629ac499be4b5_1280.jpg",
    "imageWidth": 5184,
    "imageHeight": 3456,
    "imageSize": 2735519,
    "views": 638396,
    "downloads": 462964,
    "collections": 1332,
    "likes": 994,
    "comments": 267,
    "user_id": 2286921,
    "user": "Pexels",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/03/26/22-06-36-459_250x250.jpg"
  },
  {
    "id": 1873078,
    "pageURL": "https://pixabay.com/photos/apples-orchard-apple-trees-1873078/",
    "type": "photo",
    "tags": "apples, orchard, apple trees",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/11/30/15/23/apples-1873078_150.jpg",
    "previewWidth": 150,
    "previewHeight": 95,
    "webformatURL":
        "https://pixabay.com/get/g7d1ad34c098858683749271f13b632cdcae26e02d85b6f4d7f4762241c3374e19f55a87153a0deda6971a1a50d0da5a1aefc340a8ef678853bc472409ac6b07b_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 408,
    "largeImageURL":
        "https://pixabay.com/get/g665e2adea306d760892545f8ec44cc81098f3b5587a89f452311620d537fbd0451d806d6ebfdd4dc7474b2df7a76beb127e1c43caae3b388812003b527f0ba68_1280.jpg",
    "imageWidth": 3212,
    "imageHeight": 2051,
    "imageSize": 2581012,
    "views": 400163,
    "downloads": 226789,
    "collections": 1085,
    "likes": 1098,
    "comments": 165,
    "user_id": 3890388,
    "user": "lumix2004",
    "userImageURL": ""
  },
  {
    "id": 1122537,
    "pageURL":
        "https://pixabay.com/photos/apple-water-droplets-fruit-moist-1122537/",
    "type": "photo",
    "tags": "apple, water droplets, fruit",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537_150.jpg",
    "previewWidth": 150,
    "previewHeight": 95,
    "webformatURL":
        "https://pixabay.com/get/gdb244b9b3b91ec5b76574fcc767edd641238f56c21e6f660076b18446fc957110cb1c158e192d2ff5b03c08aec987ef46407f29e30ba7f2f196255cd80eabc97_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 409,
    "largeImageURL":
        "https://pixabay.com/get/g32d71647434eceae36004e8fc187a2285c8a3b6c9f543c405763973c6ed37cb134e2923cd29eba9cb914154b1a75a974061ee13723f24465d6ffb2fd99dcfbdb_1280.jpg",
    "imageWidth": 4752,
    "imageHeight": 3044,
    "imageSize": 5213632,
    "views": 298994,
    "downloads": 169923,
    "collections": 1010,
    "likes": 1102,
    "comments": 176,
    "user_id": 1445608,
    "user": "mploscar",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/01/05/14-08-20-943_250x250.jpg"
  },
  {
    "id": 256261,
    "pageURL":
        "https://pixabay.com/photos/apple-books-still-life-fruit-food-256261/",
    "type": "photo",
    "tags": "apple, books, still life",
    "previewURL":
        "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256261_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gcee0af3703fb17f2047ccce14ba2de9789d5bb35768ba2020f2123e988ff7405543e6b1aaec7e3356aeccda846dbc598_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 423,
    "largeImageURL":
        "https://pixabay.com/get/ge08ff5f45a958dcbf21d6dc1e947a1aecb935f5ef34c67c99f41a722c34b5166a047479221101d990f01ec8f04b8c1db740c30a09737a8e3ca350a3e6bf9267e_1280.jpg",
    "imageWidth": 4928,
    "imageHeight": 3264,
    "imageSize": 2987083,
    "views": 477406,
    "downloads": 240330,
    "collections": 914,
    "likes": 947,
    "comments": 239,
    "user_id": 143740,
    "user": "jarmoluk",
    "userImageURL":
        "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
  },
  {
    "id": 410324,
    "pageURL":
        "https://pixabay.com/photos/iphone-smartphone-apps-apple-inc-410324/",
    "type": "photo",
    "tags": "iphone, smartphone, apps",
    "previewURL":
        "https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g57f4d28ee6f05e09ea22f8c18eabf05c6fdefacfa2af5048940191915298744cf9a91387ff0e282201786eebfd47219a_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g735dfae6beef3c1de4043a448f89dbf514f8a41d859625ab8e731a36e9544c1bf97bfad39873bb8b42f384fb3e5eb1eec20e184ff4f4328f431710dd765442ce_1280.jpg",
    "imageWidth": 2180,
    "imageHeight": 1453,
    "imageSize": 477025,
    "views": 733919,
    "downloads": 426742,
    "collections": 890,
    "likes": 789,
    "comments": 212,
    "user_id": 264599,
    "user": "JESHOOTS-com",
    "userImageURL":
        "https://cdn.pixabay.com/user/2014/06/08/15-27-10-248_250x250.jpg"
  },
  {
    "id": 1894723,
    "pageURL":
        "https://pixabay.com/photos/smartphone-cellphone-touchscreen-1894723/",
    "type": "photo",
    "tags": "smartphone, cellphone, touchscreen",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/12/09/11/33/smartphone-1894723_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gb17930e70afaf5f46b1f695e16ab9682680951a3227ed68df32807d613e7c05e9400774f94b81baca71d47397f621c7af622321d00e62da89f3c1d5d65b6cfaf_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g251acb64c8f1797c8ebbcb1ad4346c658055f609f6000b9e9146358054bb6a5dbb6dd8372402bc9bcb8f06f79de7f1532191354a5078d51748fc3d303aa0762f_1280.jpg",
    "imageWidth": 5005,
    "imageHeight": 3337,
    "imageSize": 1214266,
    "views": 469272,
    "downloads": 300373,
    "collections": 769,
    "likes": 813,
    "comments": 276,
    "user_id": 282134,
    "user": "stevepb",
    "userImageURL":
        "https://cdn.pixabay.com/user/2015/09/15/20-33-27-452_250x250.jpg"
  },
  {
    "id": 1368187,
    "pageURL": "https://pixabay.com/photos/apple-blossom-flowers-tree-1368187/",
    "type": "photo",
    "tags": "apple blossom, flowers, tree",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/05/02/22/16/apple-blossom-1368187_150.jpg",
    "previewWidth": 150,
    "previewHeight": 88,
    "webformatURL":
        "https://pixabay.com/get/gdf9ab44eb985a56db7c12d4425f78cdd72a06e92acd5f9159cd46163ddfc467b056b384a1c526120f98315cf4f03dae0bee608bad9a04b2f525a639fd039ac0c_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 379,
    "largeImageURL":
        "https://pixabay.com/get/gb08aaf025b1855b28ec2b6f86fcc5f88c40b4c2f7a020e1416d122f6fe09716a5aba77c382543cce19cf470c859d1e6b88dbaba095758b70c9e074a59e52c362_1280.jpg",
    "imageWidth": 3966,
    "imageHeight": 2352,
    "imageSize": 860935,
    "views": 212854,
    "downloads": 126511,
    "collections": 602,
    "likes": 709,
    "comments": 122,
    "user_id": 2367988,
    "user": "kie-ker",
    "userImageURL": ""
  },
  {
    "id": 410311,
    "pageURL":
        "https://pixabay.com/photos/iphone-hand-screen-smartphone-apps-410311/",
    "type": "photo",
    "tags": "iphone, hand, screen",
    "previewURL":
        "https://cdn.pixabay.com/photo/2014/08/05/10/27/iphone-410311_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g6878283e87a23cc86fa35607dd1991bfd026cc07f9a75e2eb2f3892b89947d6e1be1fb62d0e70e350fa2f28fcaacc8a3_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g9266139a91841f37ef87d9c7ce7df2fa2df927370a92a944865fcb0a6023769cd969840896de957b45a752193bbddead69bba8c9d5615cc77726312883f220d0_1280.jpg",
    "imageWidth": 1920,
    "imageHeight": 1280,
    "imageSize": 416413,
    "views": 530387,
    "downloads": 263544,
    "collections": 632,
    "likes": 601,
    "comments": 164,
    "user_id": 264599,
    "user": "JESHOOTS-com",
    "userImageURL":
        "https://cdn.pixabay.com/user/2014/06/08/15-27-10-248_250x250.jpg"
  },
  {
    "id": 1776744,
    "pageURL":
        "https://pixabay.com/photos/apples-leaves-fall-still-life-1776744/",
    "type": "photo",
    "tags": "apples, leaves, fall",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/10/27/22/52/apples-1776744_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/g07f092380378c45b19bca76cc935c9eae17f2fa5c1f9dcf85969cd54fe33eafcbb1024da7895584af444e2b577bebe4c2155c563bd948f86cad701a23bd273b2_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/g068b0a32fb20243e7a5a187ee9e1bcab0da0e583842dd461e5a5fa4e8f6d102b90e315b6f02b7112a7f94c47bcb669f23e1abee08b3100928e546debf2b02a29_1280.jpg",
    "imageWidth": 4193,
    "imageHeight": 2798,
    "imageSize": 2002268,
    "views": 188459,
    "downloads": 112561,
    "collections": 667,
    "likes": 630,
    "comments": 87,
    "user_id": 2970404,
    "user": "castleguard",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/09/18/22-38-35-578_250x250.jpg"
  },
  {
    "id": 500291,
    "pageURL": "https://pixabay.com/photos/iphone-hand-girl-smartphone-500291/",
    "type": "photo",
    "tags": "iphone, hand, girl",
    "previewURL":
        "https://cdn.pixabay.com/photo/2014/10/23/20/51/iphone-500291_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g441bfd68d33383478d84979102bb5e1bf4590dae7fc58c4872207793375b2de6843946c70bd22f7db2fc3f3233147e53_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g4bb7d2a0893e4cdb9b331dfb4d04240b46a7a5f3bbd70750e2b7a8e77f965e56f345dfe95d25f78f982a9d3c33f1ce8a28c13cd46b9115f23768f7249192fa22_1280.jpg",
    "imageWidth": 1920,
    "imageHeight": 1280,
    "imageSize": 521447,
    "views": 160792,
    "downloads": 79398,
    "collections": 1039,
    "likes": 252,
    "comments": 46,
    "user_id": 264599,
    "user": "JESHOOTS-com",
    "userImageURL":
        "https://cdn.pixabay.com/user/2014/06/08/15-27-10-248_250x250.jpg"
  },
  {
    "id": 1702316,
    "pageURL": "https://pixabay.com/photos/apple-red-fruit-red-chief-1702316/",
    "type": "photo",
    "tags": "apple, red, fruit",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_150.jpg",
    "previewWidth": 150,
    "previewHeight": 116,
    "webformatURL":
        "https://pixabay.com/get/g2114e98f8fcf2b1d2ce9bdf6e605c1529a36b09e61299f377666e1476763718ebcdc70a76f7f5de4fa3890143a41a135f760b4507b6469f7912512d2ef77afe7_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 495,
    "largeImageURL":
        "https://pixabay.com/get/gd02f7b9b178fae32898a5810f193808d7ca133d15c435e6b9227e908f1d00b543decfa9091692e7990177468bd4d82e84c2b37076b995a3596156debb66f12eb_1280.jpg",
    "imageWidth": 4000,
    "imageHeight": 3099,
    "imageSize": 1930833,
    "views": 125774,
    "downloads": 79112,
    "collections": 888,
    "likes": 373,
    "comments": 32,
    "user_id": 2364555,
    "user": "pixel2013",
    "userImageURL":
        "https://cdn.pixabay.com/user/2020/07/25/21-10-11-80_250x250.jpg"
  },
  {
    "id": 606761,
    "pageURL": "https://pixabay.com/photos/apple-imac-ipad-workplace-606761/",
    "type": "photo",
    "tags": "apple, imac, ipad",
    "previewURL":
        "https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g8fa73476f651051b59630b246cc43e763178d920ea6f46d801d94a70676721d1e148332b1e07a93a6fbb51a50450d435_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 425,
    "largeImageURL":
        "https://pixabay.com/get/gf9a3edb75884e5c08e8f76efdec041d2113187ec2bc2e3c4a0edddbb57225369850029173711e0a6c8f3814229dec09b9ec065fd23db3853b885b73e48d29bfe_1280.jpg",
    "imageWidth": 4209,
    "imageHeight": 2796,
    "imageSize": 1649126,
    "views": 403289,
    "downloads": 219866,
    "collections": 658,
    "likes": 490,
    "comments": 112,
    "user_id": 663163,
    "user": "Firmbee",
    "userImageURL":
        "https://cdn.pixabay.com/user/2020/11/25/09-38-28-431_250x250.png"
  },
  {
    "id": 2788662,
    "pageURL":
        "https://pixabay.com/photos/apple-red-hand-apple-plantation-2788662/",
    "type": "photo",
    "tags": "apple, red, hand",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/09/26/13/42/apple-2788662_150.jpg",
    "previewWidth": 150,
    "previewHeight": 88,
    "webformatURL":
        "https://pixabay.com/get/gb29116636c760a72e8be493258590c667571c50184c9330699c2f7362918cf66bae6075bbc85eba7b98f6031edb7f9a1f073b4ec6d79b56226a55ce31de206ab_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 377,
    "largeImageURL":
        "https://pixabay.com/get/g935889275fa1f8432be44d425a007714ea343cc4bdcaf73e79bc461e13fe8c5e1572abd0d1e8180a155b6582b68104b3c9bb8cb88c220e5ed4b2cdb09f68ddf4_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 3539,
    "imageSize": 2042422,
    "views": 155203,
    "downloads": 88106,
    "collections": 569,
    "likes": 604,
    "comments": 88,
    "user_id": 2364555,
    "user": "pixel2013",
    "userImageURL":
        "https://cdn.pixabay.com/user/2020/07/25/21-10-11-80_250x250.jpg"
  },
  {
    "id": 2838921,
    "pageURL":
        "https://pixabay.com/photos/laptop-mockup-graphics-tablet-2838921/",
    "type": "photo",
    "tags": "laptop, mockup, graphics tablet",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/10/10/21/47/laptop-2838921_150.jpg",
    "previewWidth": 150,
    "previewHeight": 89,
    "webformatURL":
        "https://pixabay.com/get/g7bebeb8aa34be107002101098760087407fc4421b7563112c113e6acf0a1a5ddb89f4652c1f57780ab066cc17c15ffc88b68d63195758400559e7456abd86499_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 380,
    "largeImageURL":
        "https://pixabay.com/get/gf8cc4c6d763113f38288108d9009ce220eb0b71a4f9a9b1d16534b8fa1d4f8547129c50c1dd5f20836c74e3f1f6935d6da02c280420077dc3e92f75fbaae923c_1280.jpg",
    "imageWidth": 5472,
    "imageHeight": 3252,
    "imageSize": 5820165,
    "views": 349757,
    "downloads": 207214,
    "collections": 663,
    "likes": 464,
    "comments": 105,
    "user_id": 4664461,
    "user": "lukasbieri",
    "userImageURL":
        "https://cdn.pixabay.com/user/2017/02/26/12-31-50-780_250x250.jpg"
  },
  {
    "id": 1872997,
    "pageURL":
        "https://pixabay.com/photos/apples-fruits-orchard-nature-trees-1872997/",
    "type": "photo",
    "tags": "apples, fruits, orchard",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/11/30/15/00/apples-1872997_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g4374d166719e11d2b0bffd60aae4ab9a4148329da51a9fca34b0b1ec62beb92b183cc45e3499e95a2734da62476699b292e4396bb3e2ce005dbb9b66667a7d42_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g2f8e933322460106fac980a680b5fb8f7053a88537d209329213badc3ebe82dbe98a6b6c33e5f7bf7ee3b1a2483d4b54ca5c36067cd8f679c16a50f7c7efa056_1280.jpg",
    "imageWidth": 3504,
    "imageHeight": 2336,
    "imageSize": 2019234,
    "views": 185880,
    "downloads": 114326,
    "collections": 588,
    "likes": 614,
    "comments": 86,
    "user_id": 3890388,
    "user": "lumix2004",
    "userImageURL": ""
  },
  {
    "id": 569153,
    "pageURL":
        "https://pixabay.com/photos/home-office-notebook-home-couch-569153/",
    "type": "photo",
    "tags": "home office, notebook, home",
    "previewURL":
        "https://cdn.pixabay.com/photo/2014/12/15/14/05/home-office-569153_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gfec9b2f3816f01d844d194ddf01c9a87a2b9064752517c635274daff675c80b7581afe515d7bc1f01e82190325cbc73c_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/ge3b6fb0922716a8d0f89cf91d8f5ad458785def333eee3fac9c0db6a301d46e64cdb488132a1ef64559f2a17c402e8b987eb0c9f7b5a78cb5dbed0d0df0699fd_1280.jpg",
    "imageWidth": 5760,
    "imageHeight": 3840,
    "imageSize": 3991496,
    "views": 318077,
    "downloads": 167392,
    "collections": 661,
    "likes": 466,
    "comments": 90,
    "user_id": 364018,
    "user": "Life-Of-Pix",
    "userImageURL":
        "https://cdn.pixabay.com/user/2014/08/21/23-01-42-554_250x250.jpg"
  },
  {
    "id": 2788599,
    "pageURL":
        "https://pixabay.com/photos/apples-red-apple-ripe-apple-orchard-2788599/",
    "type": "photo",
    "tags": "apples, red apple, ripe",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/09/26/13/21/apples-2788599_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g4c39c452463447906df9a2f97213416f66fd8611e60946c543c2e4a1636c492b56e5f84af2a06c02083c7a0a084114cce396b91a85d7f358d6aa73a950c22dec_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g1225cc294c6521971c8eb92d6353cd04be172fb38aa424e01dda6ca7a6b862bb33db716e5b97eb04b020f67a4f1d7bfc6274dff38ba668637a86cd8bcbaebf47_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 3660484,
    "views": 127336,
    "downloads": 67388,
    "collections": 536,
    "likes": 630,
    "comments": 67,
    "user_id": 2364555,
    "user": "pixel2013",
    "userImageURL":
        "https://cdn.pixabay.com/user/2020/07/25/21-10-11-80_250x250.jpg"
  },
  {
    "id": 1532055,
    "pageURL":
        "https://pixabay.com/photos/apple-green-apple-tree-apple-tree-1532055/",
    "type": "photo",
    "tags": "apple, green apple, tree",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/07/21/09/04/apple-1532055_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g5a865f302c2109524d092c236213b5e523b9f087d6027fbe9649b3daea5d60fdc78b9478215c80d880024dbf6812e54acbc8d46c4a1857b864e98150312d87d5_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 423,
    "largeImageURL":
        "https://pixabay.com/get/g364c037b79a9b9080cb9ca5f3b5abe2139dc37121626aa36545ef8b9b8a671790b340e5800f286ad986263e8132c5a067ed978d561157d9b0ae6c8f062d82535_1280.jpg",
    "imageWidth": 4928,
    "imageHeight": 3264,
    "imageSize": 2842757,
    "views": 98151,
    "downloads": 54165,
    "collections": 859,
    "likes": 290,
    "comments": 54,
    "user_id": 509903,
    "user": "congerdesign",
    "userImageURL":
        "https://cdn.pixabay.com/user/2022/03/01/12-32-48-46_250x250.jpg"
  },
  {
    "id": 2557571,
    "pageURL":
        "https://pixabay.com/photos/laptop-apple-macbook-computer-2557571/",
    "type": "photo",
    "tags": "laptop, apple, macbook",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/07/31/11/44/laptop-2557571_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g39d4dee563314b143b020b9a9f6d94e6ffc3aca864e73af0375fa898d3b485e3c9007b46e2b82bc618402e5da33e835bde26babefeec030d300af34decd2ae66_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/gd39c7d4a46508f47143518dde43b80c4383f7601f67f79a277e3720c58b43154f194582a3e52ac4412aca85150233e1eef26fe69a9f80448471592ab941a8290_1280.jpg",
    "imageWidth": 4460,
    "imageHeight": 2973,
    "imageSize": 780651,
    "views": 172796,
    "downloads": 101434,
    "collections": 652,
    "likes": 458,
    "comments": 65,
    "user_id": 894430,
    "user": "StockSnap",
    "userImageURL":
        "https://cdn.pixabay.com/user/2015/03/30/12-22-31-508_250x250.jpg"
  }
];
