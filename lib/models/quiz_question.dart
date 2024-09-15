class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get getShuffledAnswers {
    // creating a new copy of the answers array
    final shuffledList = List.of(answers);
    // shuffling the array to show it to the users
    shuffledList.shuffle();
    // returned the shuffled array
    return shuffledList;
  }
}
