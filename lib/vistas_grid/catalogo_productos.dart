import 'package:flutter/material.dart';

class CatalogoProductos extends StatelessWidget {
  // Lista de los 14 productos con tus links de GitHub
  final List<Map<String, String>> productos = [
    {"nombre": "Audífonos Pro", "sub": "Sonido High-End", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/audfo.jpg"},
    {"nombre": "Audífonos Gamer", "sub": "Micrófono Noise Cancel", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/audifonos_1.jpg"},
    {"nombre": "Monitor UltraWide", "sub": "4K UHD 144Hz", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/descarga%20(1)%20(1).png"},
    {"nombre": "Laptop Gamer V1", "sub": "RTX 4060 Ready", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/laptop_1.jpg"},
    {"nombre": "Monitor Curvo", "sub": "Inmersión Total", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/monitor2.png"},
    {"nombre": "Monitor Slim", "sub": "Oficina y Diseño", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/monitor3.png"},
    {"nombre": "Teclado RGB", "sub": "Mecánico Blue Switch", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/descarga%20(1).png"},
    {"nombre": "Mouse Gamer", "sub": "16000 DPI Óptico", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/descarga%20(2).png"},
    {"nombre": "Teclado Compact", "sub": "60% Wireless", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/teclado4.png"},
    {"nombre": "Teclado Ergonómico", "sub": "Escritura Fluida", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/teclado5.png"},
    {"nombre": "Combo Teclados", "sub": "Kit Profesional", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/teclados.jpg"},
    {"nombre": "Mouse Pro S2", "sub": "Agarre Ergonómico", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/raton2.png"},
    {"nombre": "Mouse Neon", "sub": "Luces RGB Sync", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/raton3.png"},
    {"nombre": "Mouse Sniper", "sub": "Botones Programables", "img": "https://raw.githubusercontent.com/OscarinMtz/Ull_act2_cards/refs/heads/main/raton4.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD3D3D3), // Tu gris de siempre
      appBar: AppBar(
        title: Text("Catálogo ElectroMtz", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xFF42A5F5),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        // Configuración de 2 columnas
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 0.7, // Ajuste para que quepan los textos abajo
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: productos.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 5,
            child: Column(
              children: [
                // Imagen del producto
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.network(
                      productos[index]['img']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                // Información inferior (3 filas)
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // Fila 1: Título
                      Text(
                        productos[index]['nombre']!,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      // Fila 2: Subtítulo
                      Text(
                        productos[index]['sub']!,
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      // Fila 3: Estrellitas
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (i) => Icon(
                          Icons.star, 
                          color: Colors.amber, 
                          size: 15,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}