class MostOrdermodel {
  String? title;
  String? subtitle;
  String? img;
  MostOrdermodel({this.title, this.subtitle, this.img});
}

List<MostOrdermodel> listmost = [
  MostOrdermodel(
      title: 'Pizza Di Rocco',
      subtitle: 'Tortilla22 Wrap',
      img: 'assets/img/r1.jpg'),
  MostOrdermodel(
      title: 'Chicken Di Roco',
      subtitle: 'Tortilla33 Wrap',
      img: 'assets/img/r2.jpg'),
  MostOrdermodel(
      title: 'Pasta Di Roco',
      subtitle: 'Tortilla44 Wrap',
      img: 'assets/img/r3.jpg')
];
