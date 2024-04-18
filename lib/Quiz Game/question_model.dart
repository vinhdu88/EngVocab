class Question {
  final String questionText;
  final List<Answer> answerList;

  Question({required this.questionText, required this.answerList});
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer({required this.answerText, required this.isCorrect});
}

List<Question> getQuestions() {
  List<Question> list = [];
  list.add(Question(
    questionText: 'What does the word "eloquent" mean?',
    answerList: [
      Answer(answerText: 'Shy', isCorrect: false),
      Answer(answerText: 'Skillful with words', isCorrect: true),
      Answer(answerText: 'Goofy', isCorrect: false),
      Answer(answerText: 'Unintelligible', isCorrect: false),
    ],
  ));
  list.add(Question(
    questionText: 'Which word is a synonym for "exuberant"?',
    answerList: [
      Answer(answerText: 'Sad', isCorrect: false),
      Answer(answerText: 'Energetic', isCorrect: true),
      Answer(answerText: 'Boring', isCorrect: false),
      Answer(answerText: 'Timid', isCorrect: false),
    ],
  ));
  list.add(Question(
    questionText: 'What is the opposite of "generous"?',
    answerList: [
      Answer(answerText: 'Kind', isCorrect: false),
      Answer(answerText: 'Stingy', isCorrect: true),
      Answer(answerText: 'Clever', isCorrect: false),
      Answer(answerText: 'Patient', isCorrect: false),
    ],
  ));
  list.add(Question(
    questionText: 'What does "adversity" refer to?',
    answerList: [
      Answer(answerText: 'Success', isCorrect: false),
      Answer(answerText: 'Happiness', isCorrect: false),
      Answer(answerText: 'Difficulties', isCorrect: true),
      Answer(answerText: 'Loneliness', isCorrect: false),
    ],
  ));
  list.add(Question(
    questionText: 'Which word best describes someone who is "meticulous"?',
    answerList: [
      Answer(answerText: 'Careless', isCorrect: false),
      Answer(answerText: 'Messy', isCorrect: false),
      Answer(answerText: 'Thorough', isCorrect: true),
      Answer(answerText: 'Forgetful', isCorrect: false),
    ],
  ));
  list.add(Question(
    questionText: 'What is the meaning of the term "diligent"?',
    answerList: [
      Answer(answerText: 'Hardworking', isCorrect: true),
      Answer(answerText: 'Lazy', isCorrect: false),
      Answer(answerText: 'Disinterested', isCorrect: false),
      Answer(answerText: 'Unreliable', isCorrect: false),
    ],
  ));
  list.add(Question(
    questionText: 'Which word is an antonym of "courageous"?',
    answerList: [
      Answer(answerText: 'Brave', isCorrect: false),
      Answer(answerText: 'Fearless', isCorrect: false),
      Answer(answerText: 'Cowardly', isCorrect: true),
      Answer(answerText: 'Bold', isCorrect: false),
    ],
  ));
  list.add(Question(
    questionText: 'What does the word "eclectic" mean?',
    answerList: [
      Answer(answerText: 'Focused', isCorrect: false),
      Answer(answerText: 'Exclusive', isCorrect: false),
      Answer(answerText: 'Varied', isCorrect: true),
      Answer(answerText: 'Unusual', isCorrect: false),
    ],
  ));
  list.add(Question(
    questionText: 'Which word is a synonym for "resilient"?',
    answerList: [
      Answer(answerText: 'Fragile', isCorrect: false),
      Answer(answerText: 'Strong', isCorrect: true),
      Answer(answerText: 'Delicate', isCorrect: false),
      Answer(answerText: 'Weak', isCorrect: false),
    ],
  ));
  list.add(Question(
    questionText: 'What is the opposite of "vivid"?',
    answerList: [
      Answer(answerText: 'Dull', isCorrect: true),
      Answer(answerText: 'Colorful', isCorrect: false),
      Answer(answerText: 'Bright', isCorrect: false),
      Answer(answerText: 'Lively', isCorrect: false),
    ],
  ));
  return list;
}
