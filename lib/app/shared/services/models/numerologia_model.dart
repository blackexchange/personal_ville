
class NumerologiaModel{
  int id;
  String nome = "";
  String nascimento = "";
  String destino = "";
  String missao ="";
  String psiquico = "";
  List <String> dividasCarmicas = [];
  List <String> tendenciasOcultas = [];
  String motivacao = "";
  String expressao= "";
  String impressao= "";

  NumerologiaModel({this.id, this.nome,this.nascimento, this.psiquico, this.dividasCarmicas,
  this.tendenciasOcultas,this.motivacao, this.missao, this.destino, this.expressao, this.impressao});

  toJson(){
    return {
      "nome": nome,
      "nascimento": nascimento

    };
  }

  factory NumerologiaModel.fromJson(Map json){
    return NumerologiaModel(
      id: json["id"],
      nome: json["nome"],
      nascimento: json["nascimento"]
    );
  }
}