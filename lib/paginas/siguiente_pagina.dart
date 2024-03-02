import 'package:flutter/material.dart';
import 'package:di_practica_flutter_alejandrogarcia/componentes/card_custom.dart';
import 'pagina_categoria.dart'; // Importa el archivo donde se definirán las páginas de cada categoría

class SiguientePagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://www.creativefabrica.com/wp-content/uploads/2022/12/27/Abstract-Marble-Light-Background-With-Turquoise-White-Grey-Pastel-Color-54732632-1.png'), // Reemplaza con la URL de tu imagen
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // Navega a la página de la categoría correspondiente
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaginaCategoria(categoria: 'Electrodomesticos')),
                );
              },
              child: CustomCard(
                imageUrl: 'https://media.istockphoto.com/id/1174598609/es/foto/conjunto-de-electrodom%C3%A9sticos-contempor%C3%A1neos-aislados-en-blanco.jpg?s=612x612&w=0&k=20&c=3M_f_azyvD1F9LX8WTgJ3FD5jLSEKMhTWfNgDQHbNe0=',
                title: 'Electrodomesticos',
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Navega a la página de la categoría correspondiente
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaginaCategoria(categoria: 'Ropa')),
                );
              },
              child: CustomCard(
                imageUrl: 'https://st3.depositphotos.com/9747634/32010/i/450/depositphotos_320104748-stock-photo-hangers-with-different-clothes-in.jpg',
                title: 'Ropa',
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Navega a la página de la categoría correspondiente
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaginaCategoria(categoria: 'Hogar')),
                );
              },
              child: CustomCard(
                imageUrl: 'https://www.esneca.com/wp-content/uploads/tipos-de-muebles.jpg',
                title: 'Hogar',
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Navega a la página de la categoría correspondiente
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaginaCategoria(categoria: 'Alimentación')),
                );
              },
              child: CustomCard(
                imageUrl: 'https://fotografias.antena3.com/clipping/cmsimages01/2023/09/28/70CB9841-7629-4AAA-8B03-49CDED566ED0/dia-mundial-alimentacion_98.jpg?crop=1254,706,x0,y0&width=1900&height=1069&optimize=low&format=webply',
                title: 'Alimentación',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

