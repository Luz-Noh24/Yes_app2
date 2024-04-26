import 'package:flutter/material.dart';
/* Flutter no acepta directamente
hexadecimal */
/*_customColor se le añadio _ para
hacerlo privado las cuales solo se 
pueden utilizar en el archivo en el
que estan */
const Color _customColor = Color.fromARGB(96, 92, 17, 212);




const List <Color> _colorTheme =
[
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];




class AppTheme
{
  
  final int selectedColor;
  AppTheme
  (
    {
      /*para que desde afuera se pueda mandar 
      required this.selectedColor*/
      this.selectedColor = 0

    }
    ):assert
    (
      selectedColor >= 0 && selectedColor <= _colorTheme.length -1,
      'Colors must be between 0 and ${_colorTheme.length}'
    );


  /*Regresa el tema de manera
    dinámica  */
  ThemeData theme()
  {
    return ThemeData
    (
      useMaterial3: true, 
      colorSchemeSeed: _colorTheme[selectedColor],
      /*Modo oscuro */
      brightness: Brightness.dark 
      /*Modo blanco
      brightness: Brightness.ligth */
    );
    

  }
}