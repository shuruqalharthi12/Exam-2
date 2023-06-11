final resturantsImage = [
  'https://cdn-cndob.nitrocdn.com/TNVcUtOAPuqGFiUbahIgLHOviDAJtxsp/assets/static/optimized/rev-c9f4014/content/thump_profile/vSnF3OifwnrsOufPpgLaHMdtnJWPFXPi.jpg',
  'https://cdn-cndob.nitrocdn.com/TNVcUtOAPuqGFiUbahIgLHOviDAJtxsp/assets/static/optimized/rev-c9f4014/content/thump_profile/IFaXxi7N-fiRtvKCg2pvmc-gCEQV2q_R.jpg',
  'https://cdn-cndob.nitrocdn.com/TNVcUtOAPuqGFiUbahIgLHOviDAJtxsp/assets/static/optimized/rev-c9f4014/content/thump_profile/SSupNXF3SZ-kH0PXtT80leuL3ScwgGsI.jpeg',
  'https://cdn-cndob.nitrocdn.com/TNVcUtOAPuqGFiUbahIgLHOviDAJtxsp/assets/static/optimized/rev-c9f4014/content/thump_profile/OZNKnBlISLSEEBRPy_qX-eaJO8Dx87Zm.jpeg',
  'https://cdn-cndob.nitrocdn.com/TNVcUtOAPuqGFiUbahIgLHOviDAJtxsp/assets/static/optimized/rev-c9f4014/content/thump_profile/8J450FqT4nu8181UVZGHZ9dt6HI2akzC.jpeg'
];

final resturantName = [
  'Mich Cafe | متش كافيه',
  'Shawarma Factory | شاورما فاكتوري',
  'FireFly Burger | فاير فلاي برجر',
  'BALLOONIZER | بالونايزر',
  'Cranberry Cafe | كرانبيري كافيه'
];

class Resturant {
  final String name;
  final String imgURL;
  Resturant({required this.name, required this.imgURL});

  static List<Resturant> getResturants() {
    return resturantName
        .map((e) => Resturant(
            name: e, imgURL: resturantsImage[resturantName.indexOf(e)]))
        .toList();
  }
}
