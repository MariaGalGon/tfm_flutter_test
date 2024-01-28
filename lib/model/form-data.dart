List<int> options = [1, 2, 3, 4, 5, 6, 7];

List<AdjectivePair> adjectives = [
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2"),
  new AdjectivePair("valor 1", "valor 2")
]; 

class AdjectivePair {
  String _adjLeft; 
  String _adjRight;

  AdjectivePair(this._adjLeft, this._adjRight);

  String get adjLeft => this._adjLeft;
  set adjLeft(String value) => this._adjLeft = value;

  String get adjRight => this._adjRight;
  set adjRight(String value) => this._adjRight = value;
}

class SelectedAnswers {
  int indexQuestion;
  int? answerSelected;

  SelectedAnswers(this.indexQuestion, this.answerSelected);
}