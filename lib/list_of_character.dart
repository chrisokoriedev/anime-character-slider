class AnimeCharacter {
  final String name;
  final String des;
  final String foregroundImage;
  final String backgroundImage;

  AnimeCharacter(
      {required this.name,
      required this.des,
      required this.foregroundImage,
      required this.backgroundImage});
}

List<AnimeCharacter> getList = [
  AnimeCharacter(
      name: 'Tanjiro Kamado',
      des:
          "Tanjiro Kamado is a fictional character and the protagonist of Koyoharu Gotouge's manga Demon Slayer: Kimetsu no Yaiba",
      foregroundImage:
          'https://i.pinimg.com/564x/9f/99/6e/9f996eeca7264769ebf6b30572717102.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/3c/5e/de/3c5ede367e8435e37ede6541de94da87.gif')
];
