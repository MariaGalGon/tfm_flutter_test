List<int> options = [1, 2, 3, 4, 5, 6, 7];

List<AdjectivePair> adjectives = [
  new AdjectivePair("annoying", "enjoyable"),
  new AdjectivePair("valuable", "inferior"),
  new AdjectivePair("boring", "exciting"),
  new AdjectivePair("fast", "slow"),
  new AdjectivePair("usual", "leading edge"),
  new AdjectivePair("inefficient", "efficient"),
  new AdjectivePair("conservative", "innovative"),
  new AdjectivePair("organized", "cluttered"),
  new AdjectivePair("secure", "not secure")
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