class HomeItemModel {
  String? title;
  Function()? onTap;
  HomeItemModel({this.onTap, this.title});
}

List<HomeItemModel> homeitems = [
  HomeItemModel(title: 'Home', onTap: () {}),
  HomeItemModel(title: 'About the Course', onTap: () {}),
  HomeItemModel(title: 'Program', onTap: () {}),
  HomeItemModel(title: 'Benefits', onTap: () {}),
  HomeItemModel(title: 'Instructors', onTap: () {}),
  HomeItemModel(title: 'Reviews', onTap: () {}),
  HomeItemModel(title: 'Price', onTap: () {}),
];
