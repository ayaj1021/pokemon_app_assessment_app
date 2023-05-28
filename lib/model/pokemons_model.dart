class PokemonModel {
  final String img;
  final int id;
  final String title;
  final String type;

  PokemonModel(
      {required this.img,
      required this.id,
      required this.title,
      required this.type});

  // static PokemonModel fromJson(Map<String, dynamic> data) {
  //   return PokemonModel(
  //       img: data['img'],
  //       id: data['id'],
  //       title: data['title'],
  //       type: data['type']);
  // }
}

List<PokemonModel> getPokemonModel() {
  List<PokemonModel> list = [];

  list.add(PokemonModel(
      img: 'images/image1.png',
      id: 001,
      title: 'Bulbasur',
      type: 'Grass, poison'));

  list.add(PokemonModel(
      img: 'images/image2.png',
      id: 002,
      title: 'Ivysaur',
      type: 'Grass, poison'));
  list.add(PokemonModel(
      img: 'images/image3.png',
      id: 003,
      title: 'Venusaur',
      type: 'Grass, poison'));
  return list;
}
