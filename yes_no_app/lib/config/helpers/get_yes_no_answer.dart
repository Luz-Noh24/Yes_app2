
import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class GetyesNoAnswer
{
  //se crea la instancia de la clase Dio
  //Nos ayudara a manejar peticiones HTTP
  final _dio = Dio();

  //Obtiene la respuesta
  Future<Message>getAnswer() async
  {
    // Almacenar  la petición GET en una variable
    final response = await _dio.get('https://yesno.wtf/api');

    //Generar un error para obtener  una respuesta breakpoint
    throw UnimplementedError();

  }
}