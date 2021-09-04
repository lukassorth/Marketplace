import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MarketplaceApp(),
  ));
}

class MarketplaceApp extends StatefulWidget {
  @override
  _MarketplaceAppState createState() => _MarketplaceAppState();
}

class _MarketplaceAppState extends State<MarketplaceApp> {
//Aqui vou criar um widget personalizado para a caixa de itens
  Widget Items(String name, String categoria, String imgUrl, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        //este widget tornará seu contêiner clicável
        onTap: () {},
        child: Container(
          width: 180.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: [
              Image(
                image: NetworkImage(imgUrl),
                width: 170.0,
                height: 160.0,
                alignment: Alignment.center,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 22.0),
              ),
              Text(
                categoria,
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
              Text(
                '$price\$',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color(0xFFFF9900),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
//Agora vou importar uma lista de imagens que coletei do Unsplash e do site amazon
//você pode escolher a imagem que deseja e adicioná-la à lista

  List<String> ImgUrl = [
    "https://images-na.ssl-images-amazon.com/images/I/71gOkVA6-eL._AC_SX569_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/71jG%2Be7roXL._AC_SL1500_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/511U11XLcrL._AC_SL1000_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/71gOkVA6-eL._AC_SX569_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/71jG%2Be7roXL._AC_SL1500_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/511U11XLcrL._AC_SL1000_.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10161D),
      appBar: AppBar(
        backgroundColor: Color(0xFF222e3D),
        title: Text(
          "Marketplace",
          style: TextStyle(
            color: Color(0xFFFF9900),
          ),
        ),
        centerTitle: true,
        actions: [
          FlatButton(
            onPressed: () {},
            child: Icon(Icons.shopping_cart, color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "Search...",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Novos Itens",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                ),
              ),
            ),
            //Agora vamos adicionar a lista de itens
            Container(
              width: double
                  .infinity, //esta linha fará com que o recipiente ocupe toda a largura do dispositivo
              height:
                  270.0, //quando você deseja criar uma lista, você deve precisar a altura e largura de seu contêiner
              child: ListView(
                scrollDirection:
                    Axis.horizontal, //este faz com que o scroll seja horizontal
                children: [
                  //Colocando os itens
                  Items("Ipad Pro", "Eletrônicos", ImgUrl[0], "989"),
                  Items("Macbook Pro", "Eletrônicos", ImgUrl[1], "12999"),
                  Items("Suporte", "Eletrônicos", ImgUrl[2], "299,99"),
                  Items("Ipad 3", "Eletrônicos", ImgUrl[3], "788,99")
                ],
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            // Segunda lista
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Recomendados para voccê!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                ),
              ),
            ),
            //Agora vamos adicionar a lista de itens
            Container(
              width: double
                  .infinity, //esta linha fará com que o recipiente ocupe toda a largura do dispositivo
              height:
                  270.0, //quando você deseja criar uma lista, você deve precisar a altura e largura de seu contêiner
              child: ListView(
                scrollDirection:
                    Axis.horizontal, //este faz com que o scroll seja horizontal
                children: [
                  //Colocando os itens
                  Items("Ipad Pro", "Eletrônicos", ImgUrl[4], "989"),
                  Items("Macbook Pro", "Eletrônicos", ImgUrl[1], "12999"),
                  Items("Suporte", "Eletrônicos", ImgUrl[2], "299,99"),
                  Items("Ipad 3", "Eletrônicos", ImgUrl[3], "788,99")

                  // Observe que esta é a IU do aplicativo, mas você pode implementar facilmente um serviço de back-end por meio de um REST APi
                ],
              ),
            )
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF10161d),
        selectedItemColor: Color(0xFFFF9900),
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favoritos"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Conta"),
          ),
        ],
      ),
    );
  }
}
