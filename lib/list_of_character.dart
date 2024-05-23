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
          'https://i.pinimg.com/originals/9a/1f/11/9a1f11839c9f9e902f09e8259805319a.gif'),
  AnimeCharacter(
      name: 'Ichigo Kurosaki',
      des:
          "A high school student with the ability to see ghosts, Ichigo becomes a Soul Reaper to protect the living and the dead.",
      serie: 'Bleach',
      weapon: 'Zangetsu (Sword)',
      move: 'Mugetsu',
      wife: 'Orihime Inoue',
      foregroundImage:
          'https://i.pinimg.com/564x/9f/99/6e/9f996eeca7264769ebf6b30572717102.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/3c/5e/de/3c5ede367e8435e37ede6541de94da87.gif'),
  AnimeCharacter(
      name: 'Goku',
      des:
          "A Saiyan warrior with an insatiable appetite for combat and food, Goku defends Earth from powerful foes.",
      serie: 'Dragon Ball Z',
      weapon: 'Power Pole (Nyoi-Bo)',
      move: 'Kamehameha/Ultra Instinct',
      wife: 'Chi-Chi',
      foregroundImage:
          'https://i.pinimg.com/564x/9f/99/6e/9f996eeca7264769ebf6b30572717102.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/3c/5e/de/3c5ede367e8435e37ede6541de94da87.gif'),
  AnimeCharacter(
      name: 'Edward Elric',
      des:
          "A young alchemist who lost his arm and leg in a failed human transmutation, Edward seeks the Philosopher's Stone to restore his brother's body.",
      serie: 'Fullmetal Alchemist',
      weapon: 'Automail Arm',
      move: 'Transmutation without a Circle',
      wife: 'Winry Rockbell',
      foregroundImage:
          'https://i.pinimg.com/564x/9f/99/6e/9f996eeca7264769ebf6b30572717102.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/3c/5e/de/3c5ede367e8435e37ede6541de94da87.gif'),
  AnimeCharacter(
      name: 'Inuyasha',
      des:
          "A half-demon searching for the Sacred Jewel Shards to become a full demon, Inuyasha battles many foes with his powerful sword, Tessaiga.",
      serie: 'Inuyasha',
      weapon: 'Tessaiga (Sword)',
      move: 'Wind Scar/Backlash Wave',
      wife: 'Kagome Higurashi',
      foregroundImage:
          'https://i.pinimg.com/564x/9f/99/6e/9f996eeca7264769ebf6b30572717102.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/3c/5e/de/3c5ede367e8435e37ede6541de94da87.gif'),
  AnimeCharacter(
      name: 'Kirito (Kazuto Kirigaya)',
      des:
          "A skilled player in virtual reality MMORPGs, Kirito fights to free himself and others from the deadly game, Sword Art Online.",
      serie: 'Sword Art Online',
      weapon: 'Elucidator and Dark Repulser (Dual Swords)',
      move: 'Starburst Stream',
      wife: 'Asuna Yuuki',
      foregroundImage:
          'https://i.pinimg.com/564x/9f/99/6e/9f996eeca7264769ebf6b30572717102.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/3c/5e/de/3c5ede367e8435e37ede6541de94da87.gif'),
  AnimeCharacter(
      name: 'Natsu Dragneel',
      des:
          "A Dragon Slayer wizard with fire-based powers, Natsu embarks on dangerous quests with his friends from the Fairy Tail guild.",
      serie: 'Fairy Tail',
      weapon: 'None (uses Dragon Slayer Magic)',
      move: 'Dragon Force/Fire Dragon King\'s Destruction Fist',
      wife: 'Lucy Heartfilia',
      foregroundImage:
          'https://i.pinimg.com/564x/9f/99/6e/9f996eeca7264769ebf6b30572717102.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/3c/5e/de/3c5ede367e8435e37ede6541de94da87.gif'),
  AnimeCharacter(
      name: 'Lelouch vi Britannia',
      des:
          "An exiled prince with the power of Geass, Lelouch leads a rebellion against the Holy Britannian Empire to create a better world.",
      serie: 'Code Geass',
      weapon: 'None (uses Geass power)',
      move: 'Geass Command "Absolute Obedience"',
      wife: 'C.C.',
      foregroundImage:
          'https://i.pinimg.com/564x/9f/99/6e/9f996eeca7264769ebf6b30572717102.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/3c/5e/de/3c5ede367e8435e37ede6541de94da87.gif'),
  AnimeCharacter(
      name: 'Sasuke Uchiha',
      des:
          "A member of the Uchiha clan seeking revenge for his family's massacre, Sasuke's journey is marked by his powerful Sharingan abilities.",
      serie: 'Naruto',
      weapon: 'Kusanagi Sword',
      move: 'Amaterasu/Indra\'s Arrow',
      wife: 'Sakura Haruno',
      foregroundImage:
          'https://i.pinimg.com/564x/9f/99/6e/9f996eeca7264769ebf6b30572717102.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/3c/5e/de/3c5ede367e8435e37ede6541de94da87.gif'),
  AnimeCharacter(
      name: 'Meliodas',
      des:
          "The captain of the Seven Deadly Sins, Meliodas is a powerful demon seeking redemption and protecting the kingdom of Liones.",
      serie: 'The Seven Deadly Sins',
      weapon: 'Demon Sword Lostvayne',
      move: 'Full Counter/Trillion Dark',
      wife: 'Elizabeth Liones',
      foregroundImage:
          'https://i.pinimg.com/564x/9f/99/6e/9f996eeca7264769ebf6b30572717102.jpg',
      backgroundImage:
          'https://i.pinimg.com/originals/3c/5e/de/3c5ede367e8435e37ede6541de94da87.gif'),

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
