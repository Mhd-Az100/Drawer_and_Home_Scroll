class Restuarantmodel {
  String? title;
  String? subtitle;
  String? img;
  bool? offer;
  Restuarantmodel({this.title, this.subtitle, this.img, this.offer});
}

List<Restuarantmodel> listrestuarant = [
  Restuarantmodel(
      offer: true,
      title: 'Pizza Di Rocco',
      subtitle: 'Tortilla22 Wrap',
      img: 'assets/img/r1.jpg'),
  Restuarantmodel(
      offer: false,
      title: 'Chicken Di Roco',
      subtitle: 'Tortilla33 Wrap',
      img: 'assets/img/r2.jpg'),
  Restuarantmodel(
      offer: true,
      title: 'Pasta Di Roco',
      subtitle: 'Tortilla44 Wrap',
      img: 'assets/img/r3.jpg'),
  Restuarantmodel(
      offer: false,
      title: 'Pasta Di Roco',
      subtitle: 'Tortilla44 Wrap',
      img: 'assets/img/r4.jpg'),
];
