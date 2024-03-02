import 'package:flutter/material.dart';

class PantallaCompra extends StatefulWidget {
  @override
  _PantallaCompraState createState() => _PantallaCompraState();
}

class _PantallaCompraState extends State<PantallaCompra> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simula un proceso de carga de 3 segundos antes de mostrar el mensaje de agradecimiento
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compra'),
      ),
      body: Center(
        child: _isLoading
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Colors.green, // Color verde para el círculo de carga
              strokeWidth: 6, // Grosor del círculo de carga
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green), // Color del círculo de carga
            ),
            SizedBox(height: 20), // Espacio entre el círculo de carga y el texto
            Text(
              'Cargando...',
              style: TextStyle(fontSize: 24, color: Colors.green), // Tamaño de fuente y color del texto
            ),
          ],
        )
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: 80, // Tamaño del icono de verificación
              color: Colors.green, // Color verde para el icono de verificación
            ),
            SizedBox(height: 20), // Espacio entre el icono de verificación y el texto
            Text(
              'Gracias por su compra',
              style: TextStyle(fontSize: 24, color: Colors.green), // Tamaño de fuente y color del texto
            ),
          ],
        ),
      ),
    );
  }
}
