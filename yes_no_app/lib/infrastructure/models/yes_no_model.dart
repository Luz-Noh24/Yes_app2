import 'package:yes_no_app/domain/entities/message.dart';

///El modelo define que datos debe contener la aplicación
  ///factory sirve para crear una nueva instancia
  ///



class YesNoModel {
    final String answer;
    final bool forced;
    final String image;

    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    // crear una instancia de message desde el modelo
    Message toMessageEntity()=> 
    Message //condicional para darle el valor al mensaje
    (text: answer == 'yes' ? 'Sí': answer == 'no' ? 'No': 'Quizá'
    , 
    fromWho: FromWho.him,
    imageUrl: image);
}
