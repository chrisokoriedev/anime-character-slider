class AnimeCharacter {
  final String name;
  final String des;
  final String serie;
  final String weapon;
  final String move;
  final String wife;

  final String foregroundImage;
  final String backgroundImage;

  AnimeCharacter(
      {required this.name,
      required this.des,
      required this.serie,
      required this.weapon,
      required this.move,
      required this.wife,
      required this.foregroundImage,
      required this.backgroundImage});
}

List<AnimeCharacter> getList = [
  AnimeCharacter(
      name: 'Naruto Uzumaki',
      des:
          "A spirited ninja with a dream of becoming the Hokage, Naruto harnesses the power of the Nine-Tails fox demon sealed within him.",
      serie: 'Naruto',
      weapon: 'Kunai',
      move: 'Rasengan/Bijuu Mode',
      wife: 'Hinata Hyuga',
      foregroundImage:
          'https://i.pinimg.com/564x/22/3f/a8/223fa84e2e58598d27a6d733b5ff99e7.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/73/03/85/7303858d8f1ee448bf2d1c35e672461f.gif'),
  AnimeCharacter(
      name: 'Ichigo Kurosaki',
      des:
          "A high school student with the ability to see ghosts, Ichigo becomes a Soul Reaper to protect the living and the dead.",
      serie: 'Bleach',
      weapon: 'Zangetsu (Sword)',
      move: 'Mugetsu',
      wife: 'Orihime Inoue',
      foregroundImage:
          'https://i.pinimg.com/236x/66/4d/a2/664da2a224db5856d9273513bd141019.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/df/62/ff/df62ffe84153e3aa157325cd5f9769f9.gif'),
  AnimeCharacter(
      name: 'Goku',
      des:
          "A Saiyan warrior with an insatiable appetite for combat and food, Goku defends Earth from powerful foes.",
      serie: 'Dragon Ball Z',
      weapon: 'Power Pole (Nyoi-Bo)',
      move: 'Kamehameha/Ultra Instinct',
      wife: 'Chi-Chi',
      foregroundImage:
          'https://i.pinimg.com/236x/14/3a/9f/143a9f7d78bb7b7fc168301e646eea88.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/1c/2b/4d/1c2b4d69a6899b8366d554af6d254831.gif'),
  AnimeCharacter(
      name: 'Edward Elric',
      des:
          "A young alchemist who lost his arm and leg in a failed human transmutation, Edward seeks the Philosopher's Stone to restore his brother's body.",
      serie: 'Fullmetal Alchemist',
      weapon: 'Automail Arm',
      move: 'Transmutation',
      wife: 'Winry Rockbell',
      foregroundImage:
          'https://i.pinimg.com/564x/38/94/7f/38947f3ff56859931fb1916b9885eb13.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/b7/f0/bc/b7f0bcec712f6ff45be93feb7d1668d4.gif'),
  AnimeCharacter(
      name: 'Natsu Dragneel',
      des:
          "A Dragon Slayer wizard with fire-based powers, Natsu embarks on dangerous quests with his friends from the Fairy Tail guild.",
      serie: 'Fairy Tail',
      weapon: 'None',
      move: 'Fire Dragon King\'s Destruction Fist',
      wife: 'Lucy Heartfilia',
      foregroundImage:
          'https://i.pinimg.com/564x/cc/ac/62/ccac62e52348328b9547526b3b7b4721.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/84/cd/44/84cd442222b4461fc067db586cf47524.gif'),

  AnimeCharacter(
      name: 'Sasuke Uchiha',
      des:
          "A member of the Uchiha clan seeking revenge for his family's massacre, Sasuke's journey is marked by his powerful Sharingan abilities.",
      serie: 'Naruto',
      weapon: 'Kusanagi Sword',
      move: 'Amaterasu/Indra\'s Arrow',
      wife: 'Sakura Haruno',
      foregroundImage:
          'https://i.pinimg.com/564x/04/7f/0c/047f0c9e8903563a09c6dc0417f036b7.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/f6/cc/18/f6cc180589394f3ffcc60ecbc39dc555.gif'),
  AnimeCharacter(
      name: 'Meliodas',
      des:
          "The captain of the Seven Deadly Sins, Meliodas is a powerful demon seeking redemption and protecting the kingdom of Liones.",
      serie: 'The Seven Deadly Sins',
      weapon: 'Demon Sword Lostvayne',
      move: 'Full Counter',
      wife: 'Elizabeth Liones',
      foregroundImage:
          'https://i.pinimg.com/564x/9b/00/e4/9b00e46c8897cc1e046152f4a006cac2.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/ff/ef/6a/ffef6afff9a2b3fe43125db58dafb14f.gif'),

  AnimeCharacter(
      name: 'Tanjiro Kamado',
      des:
          "A kind-hearted boy who becomes a Demon Slayer to avenge his family and cure his sister, Nezuko, who was turned into a demon.",
      serie: 'Demon Slayer: Kimetsu no Yaiba',
      weapon: 'Nichirin Sword',
      move: 'Hinokami Kagura: Dance',
      wife: 'Kanao Tsuyuri',
      foregroundImage:
          'https://i.pinimg.com/564x/9f/99/6e/9f996eeca7264769ebf6b30572717102.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/3c/5e/de/3c5ede367e8435e37ede6541de94da87.gif'),

  // AnimeCharacter(
  //     name: 'Tanjiro Kamado',
  //     des:
  //         "Tanjiro Kamado is a fictional character and the protagonist of Koyoharu Gotouge's manga Demon Slayer: Kimetsu no Yaiba",
];
