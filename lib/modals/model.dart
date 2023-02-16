class Quesito {
  final String categoria;
  final String domanda;
  final List<Risposta> risposta;
  final String soluzione;

  Quesito(this.categoria, this.domanda, this.risposta, this.soluzione);
}

class Risposta {
  final String tipo;
  final String risposta;
  final String rispostaImg;
  final bool isCorrect;

  Risposta(this.tipo, this.risposta, this.rispostaImg, this.isCorrect);
}

List<Quesito> domande = [
  Quesito(
    "Documentazione",
    "Test",
    [
      Risposta("Testo", "Risposta 1", "", false),
      Risposta("Testo", "Risposta 2", "", false),
    ],
    "Risposta 2",
  )
];