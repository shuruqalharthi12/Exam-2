final options = [
  'عرض التوصيل',
  'الجمعات',
  'فطور',
  "مخبوزات",
  "مشروبات",
  "حلويات"
];

final optionImages = [
  'https://plus.unsplash.com/premium_photo-1683984171269-04c84ee23234?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=50',
  'https://images.unsplash.com/photo-1530103862676-de8c9debad1d?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=adi-goldstein-Hli3R6LKibo-unsplash.jpg&w=640',
  'https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=rachel-park-hrlvr2ZlUNk-unsplash.jpg&w=640',
  'https://images.unsplash.com/photo-1623334044303-241021148842?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=conor-brown-sqkXyyj4WdE-unsplash.jpg&w=640',
  'https://images.unsplash.com/photo-1551024709-8f23befc6f87?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=kobby-mendez-xBFTjrMIC0c-unsplash.jpg&w=640',
  'https://images.unsplash.com/photo-1587314168485-3236d6710814?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=joyful-vT5xrj3z1OE-unsplash.jpg&w=640'
];

class OptionChifz {
  final String title;
  final String imgURL;
  OptionChifz({required this.title, required this.imgURL});

  static List<OptionChifz> getOptions() {
    return options
        .map((e) =>
            OptionChifz(title: e, imgURL: optionImages[options.indexOf(e)]))
        .toList();
  }
}
