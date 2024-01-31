List<int> options = [1, 2, 3, 4, 5, 6, 7];

List<AdjectivePair> adjectives = [
  new AdjectivePair("bonito", "feo"),
  new AdjectivePair("complicado", "fácil"),
  new AdjectivePair("inseguro", "seguro"),
  new AdjectivePair("original", "convencional"),
  new AdjectivePair("mejorable", "perfecto"),
  new AdjectivePair("rápido", "lento"),
  new AdjectivePair("sobrecargado", "ordenado"),
  new AdjectivePair("valioso", "de poco valor"),
  new AdjectivePair("no recomendable", "recomendable")
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