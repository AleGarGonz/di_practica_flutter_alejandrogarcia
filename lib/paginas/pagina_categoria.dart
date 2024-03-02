import 'package:flutter/material.dart';
import 'package:di_practica_flutter_alejandrogarcia/componentes/card_productos_custom.dart';
import 'descripcion_producto.dart';

class PaginaCategoria extends StatelessWidget {
  final String categoria;

  PaginaCategoria({required this.categoria});

// Mapa que asocia cada categoría con su lista de imágenes y nombres
  final Map<String, List<Map<String, dynamic>>> datosPorCategoria = {
    'Electrodomesticos': [
      {'imageUrl': 'https://www.solartex.co/tienda/wp-content/uploads/2019/11/nevera-solar-vertical-390-litros.jpg', 'title': 'Nevera','descripcion':'Refrigeradora para mantener tus alimentos frescos.'},
      {'imageUrl': 'https://easelectric.es/8752-thickbox_default/horno-8-funciones.jpg', 'title': 'Horno','descripcion':'Horno con 8 funciones de cocción para tus mejores recetas.'},
      {'imageUrl': 'https://www.clickelectrodomesticos.com/media/catalog/product/cache/3aae5c4ff27ad4b9412e4953fd5fc9d7/8/0/80435018_4054373226.jpg', 'title': 'Microondas','descripcion':'Calienta y cocina rápidamente con nuestro microondas.'},
      {'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1N8rat7C7BQJTHUz1ftR0ekHxwYGX2WcLxGFTXWPx3A&s', 'title': 'Lavadora','descripcion':'Lava tu ropa de forma eficiente y rápida.'},
      {'imageUrl': 'https://www.lg.com/es/images/lavavajillas/md07562904/gallery/8806091765765_01.jpg', 'title': 'Lavavajillas','descripcion':'Lavavajillas para una limpieza impecable de tus utensilios.'},
    ],
    'Ropa': [
      {'imageUrl': 'https://images.boardriders.com/global/dcshoes-products/all/default/large/edyha03099_dcshoes,p_kvj0_frt2.jpg', 'title': 'Gorro', 'descripcion': 'Un accesorio perfecto para mantener tu cabeza abrigada.'},
      {'imageUrl': 'https://www.uniformesgranollers.com/41-large_default/sudadera-basica-con-capucha.jpg', 'title': 'Sudadera', 'descripcion': 'Una sudadera cómoda y elegante para cualquier ocasión.'},
      {'imageUrl': 'https://ltde.es/6978-large_default/camiseta-me-gusta-la-fruta.jpg', 'title': 'Camiseta', 'descripcion': 'Camiseta con diseño moderno y fresco.'},
      {'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7WNje5cQYZNjaS2D0OIz2ElFhiwpa3WmLxg5KJiYvCQ&s', 'title': 'Pulsera', 'descripcion': 'Una pulsera elegante y llamativa para tu muñeca.'},
      {'imageUrl': 'https://ociodeporte.es/23641-superlarge_default/chaqueton-izas-loeches-hombre-negro-.jpg', 'title': 'Chaqueton', 'descripcion': 'Un chaquetón resistente y abrigado para el invierno.'},
      {'imageUrl': 'https://ulevel.es/wp-content/uploads/2023/02/caLcetines_0001s_0001_der_blk-scaled.jpg', 'title': 'Calcetines', 'descripcion': 'Calcetines cómodos y transpirables para cualquier ocasión.'},
      {'imageUrl': 'https://master.opitec.com/out/pictures/master/product/1/313046-000-000-VO-02-z.jpg', 'title': 'Guantes', 'descripcion': 'Guantes resistentes y duraderos para proteger tus manos.'},
    ],
    'Hogar': [
      {'imageUrl': 'https://www.franciscosegarra.com/wp-content/uploads/2022/09/mueble-rustico-de-madera.jpg', 'title': 'Mueble', 'descripcion': 'Un mueble rústico y elegante para tu hogar.'},
      {'imageUrl': 'https://www.ikea.com/es/es/images/products/blidvader-lampara-mesa-hueso-ceramica-beige__1243270_ph188697_s5.jpg?f=s', 'title': 'Lampara', 'descripcion': 'Una lámpara de mesa moderna y funcional para iluminar tu espacio.'},
      {'imageUrl': 'https://www.ikea.com/es/es/images/products/parup-sofa-3-plazas-vissle-gris__1041907_pe841187_s5.jpg', 'title': 'Sofa', 'descripcion': 'Un cómodo y elegante sofá de tres plazas para tu sala de estar.'},
      {'imageUrl': 'https://m.media-amazon.com/images/I/71ii9O8+QcL._AC_UF1000,1000_QL80_.jpg', 'title': 'Silla', 'descripcion': 'Una silla resistente y ergonómica para tu escritorio o comedor.'},
      {'imageUrl': 'https://media.istockphoto.com/id/1395191574/es/foto/pantalla-de-televisi%C3%B3n-led-negra-en-blanco-aislada.jpg?s=612x612&w=0&k=20&c=5x9hgnOmbIvniJnNGf5dTHoBlbGxsLVYe-OWCcidMgE=', 'title': 'Television', 'descripcion': 'Una televisión LED de alta definición para disfrutar de tus programas favoritos.'},
      {'imageUrl': 'https://www.decoracionbeltran.com/56547-superlarge_default/estanteria-de-estilo-industrial-serena-grande.jpg', 'title': 'Estanteria', 'descripcion': 'Una estantería de estilo industrial para organizar tus libros y decoraciones.'},
      {'imageUrl': 'https://images.ecestaticos.com/kleuobwY6eUUmCg3V_S9ErpmwVU=/0x1:1798x1350/1200x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F6a2%2Faca%2F99a%2F6a2aca99af848f63deaa733239809a4a.jpg', 'title': 'Cama', 'descripcion': 'Una cama cómoda y elegante para un buen descanso nocturno.'},
      {'imageUrl': 'https://tuscosasdecasa.com/16611-large_default/armario-4-puertas-monika.jpg', 'title': 'Armario', 'descripcion': 'Un armario amplio y funcional para guardar tu ropa y accesorios.'},
    ],
    'Alimentación': [
      {'imageUrl': 'https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2020/08/hamburguesa-2028707.jpg?tf=3840x', 'title': 'Hamburguesa', 'descripcion': 'Una deliciosa hamburguesa perfecta para satisfacer tus antojos.'},
      {'imageUrl': 'https://images.hola.com/imagenes/cocina/recetas/20230208226048/pizza-pepperoni/1-201-303/pizza-pepperoni-age-t.jpg?tx=w_680', 'title': 'Pizza', 'descripcion': 'Una pizza de pepperoni recién horneada con queso derretido y salsa deliciosa.'},
      {'imageUrl': 'https://cdn.recetasderechupete.com/wp-content/uploads/2014/11/macarrones_berenjenas.jpg', 'title': 'Macarrones', 'descripcion': 'Macarrones con berenjenas y una mezcla irresistible de sabores y texturas.'},
      {'imageUrl': 'https://content-cocina.lecturas.com/medio/2022/09/05/paso_a_paso_para_realizar_guiso_de_lentejas_con_arroz_y_verduras_resultado_final_ea154a07_600x600.jpg', 'title': 'Lentejas', 'descripcion': 'Guiso de lentejas con arroz y verduras, una opción nutritiva y reconfortante.'},
      {'imageUrl': 'https://www.arrozsos.es/wp-content/uploads/2023/06/IMG_5374.jpg', 'title': 'Paella', 'descripcion': 'Paella española con arroz, mariscos y deliciosas especias para una experiencia auténtica.'},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoria), // El título será el nombre de la categoría
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://www.creativefabrica.com/wp-content/uploads/2022/12/27/Abstract-Marble-Light-Background-With-Turquoise-White-Grey-Pastel-Color-54732632-1.png', // URL de la imagen de fondo
              fit: BoxFit.cover,
            ),
          ),
          _buildCardGrid(context), // Llama a la función que construirá el GridView de Cards
        ],
      ),
    );
  }

  Widget _buildCardGrid(BuildContext context) {
    // Obtén la lista de datos correspondiente a la categoría actual
    List<Map<String, dynamic>> datos = datosPorCategoria[categoria] ?? [];

    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columnas
          crossAxisSpacing: 10.0, // Espacio entre columnas
          mainAxisSpacing: 10.0, // Espacio entre filas
          childAspectRatio: 0.7, // Proporción de aspecto para controlar la altura de las tarjetas
        ),
        itemCount: datos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navega a la pantalla de descripción del producto, pasando la información del objeto seleccionado
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DescripcionProducto(
                    imageUrl: datos[index]['imageUrl'],
                    title: datos[index]['title'],
                    description: datos[index]['descripcion'],
                  ),
                ),
              );
            },
            child: CardCustom(
              imageUrl: datos[index]['imageUrl'], // URL de la imagen correspondiente
              title: datos[index]['title'], // Título de la tarjeta
              descripcion: datos[index]['descripcion']
            ),
          );
        },
      ),
    );
  }
}




