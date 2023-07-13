class QuestionAnswer {
  String Question;
  List<String> OptionSet;
  String CorrectAnswer;
  QuestionAnswer(this.Question, this.OptionSet, this.CorrectAnswer);
}

class QuestionAnswerSet {
  static List<QuestionAnswer> Mathset = [
    QuestionAnswer(
      '0.7 ebong 0.07 er moddhe somporko holo ',
      ['0.7 < 0.07', '0.7 x 10 = 0.07', '0.7 > 0.07', '0.7 = 0.07/10'],
      '0.7 > 0.07',
    ),
    QuestionAnswer(
      '40 / 5 x 4 er sorol maan holo',
      ['2', '1/2', '32', '20'],
      '32',
    ),
    QuestionAnswer(
      '6 er gunoniyok guli holo',
      ['6', '6,3', '6,3,2', '6,3,2,1'],
      '6,3,2,1',
    ),
    QuestionAnswer(
      'Prokrito bhognanso holo',
      ['2 1/2', '4/3', '2', '3/4'],
      '3/4',
    ),
    QuestionAnswer(
      '7 onko bisistho sarthok sonkhati holo',
      ['7', '07', '0707020', '7070700'],
      '7070700',
    ),
  ];
  static List<QuestionAnswer> Physicsset = [
    QuestionAnswer(
      'Kono bostur uporitoler porimaap je rasir dara prokash hoi, ta holo',
      ['Ucchota', 'Khetrofol', 'Ayoton', 'Ghonotto'],
      'Khetrofol',
    ),
    QuestionAnswer(
      'Onobikoron joggo soktir utso holo',
      ['SouroSokti', 'BayuSokti', 'Prakritik Gas', 'Jaibo Gas Sakti'],
      'Prakritik Gas',
    ),
    QuestionAnswer(
      'Aluminium dhatur prodhan akorik holo',
      ['Haematite', 'Bauxite', 'Magnetite', 'Mica'],
      'Bauxite',
    ),
    QuestionAnswer(
      'SI e teh ojon er akok ki',
      ['Candela', 'Kilogram', 'Gram', 'Metre'],
      'Kilogram',
    ),
    QuestionAnswer(
      'konti sothik uttor',
      [
        'Ayoton = doigho + prosto x ucchota',
        'Ayoton = doigho x prosto + ucchota',
        'Ayoton = doigho x prosto x ucchota',
        'Ayoton = doigho + prosto + ucchota'
      ],
      'Ayoton = doigho x prosto x ucchota',
    ),
  ];
  static List<QuestionAnswer> Chemistryset = [
    QuestionAnswer(
      'Ekti rasayonik poriborton holo',
      [
        'Kagoj porano',
        'Korpur ube jaoa',
        'Borof Gole jaoa',
        'Lohake chumboke poriborton kora'
      ],
      'Kagoj porano',
    ),
    QuestionAnswer(
      'Carbon Tetra chloride er sonket holo',
      ['CCl', 'CCl2', 'C4Cl', 'CCl4'],
      'CCl4',
    ),
    QuestionAnswer(
      'Ammonia sonket holo',
      ['NH', 'N3H', 'NH3', 'NH2'],
      'NH3',
    ),
    QuestionAnswer(
      'Jouger khudrotomo kona ke ki bole',
      ['Anu', 'Paramanu', 'Electron', 'Quark'],
      'Paramanu',
    ),
    QuestionAnswer(
      'Konti Moulo noi',
      ['Tama', 'Carbon', 'Sona', 'Ammonia'],
      'Ammonia',
    ),
  ];
  static List<QuestionAnswer> LifeScienceset = [
    QuestionAnswer(
      'Dipotrok kopatika thake hridpinder',
      [
        'Baam Olindo o Baam Niloy',
        'Daan Olindo o Daan Niloy',
        'Baam Olindo o Daan Niloy',
        'Daan Olindo o Baam Niloy'
      ],
      'Baam Olindo o Baam Niloy',
    ),
    QuestionAnswer(
      'Prapto Boyeshko Manuser dehe koti haar thake',
      ['301', '108', '206', '10'],
      '206',
    ),
    QuestionAnswer(
      'Soloksongsheles e ki gas utpadan hoi',
      ['Carbon Dioxide', 'Methane', 'Oxygen', 'Nitrogen'],
      'Oxygen',
    ),
    QuestionAnswer(
      'Rokter rong laal hobar karon holo',
      ['Haemoglobin', 'WBC', 'Platlets', 'Antibody'],
      'Haemoglobin',
    ),
    QuestionAnswer(
      'Rokte ki ki upadan thake',
      ['Lohit rokto konika', 'Seth rokto konika', 'Onucharika', 'Sobkoti'],
      'Sobkoti',
    ),
  ];
}
