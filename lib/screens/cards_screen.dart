import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Cards Page'),
          backgroundColor: Colors.pinkAccent,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.lime,
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding:EdgeInsets.all(8.0),
                  child: Text('Este es un texto de prueba par el ejemplo de mi card,la card esta recibiendo como hijo un widget de tipo Text, :)'),
                ),
              ),
              HeroCard(),
              CardIcecream(),
              CardProduct(),
              FavoriteCard()
            ],
          ),
        ),
    );
  }
}

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(28)
      ),
      margin: EdgeInsetsDirectional.all(10),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
                ),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRykYBAQJgRsMKpu3hdSNtmOFu9NXKxq2Ndkb0hI_1daw&s=10',fit: BoxFit.cover, ),
              ),
              Align(
                alignment: AlignmentGeometry.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25)
                    )
                  ),
                  width: 60,
                  height:60,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.pink,)),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text('Pizza Margarita', style: TextStyle(color: Colors.white, fontSize: 25),)),
          ),
          Padding(padding: EdgeInsetsGeometry.all(10), child: Text('Ad proident ea ad adipisicing enim culpa velit consequat non. Ut commodo cupidatat veniam tempor ut. Nostrud aliquip ea Lorem cupidatat sint voluptate tempor anim. Quis elit sunt officia veniam anim id velit aliqua eiusmod officia excepteur. Esse ea eu pariatur mollit ea fugiat. Minim dolor sint velit voluptate fugiat duis cupidatat cupidatat. Ullamco labore minim cillum sint sunt officia duis eiusmod qui.', style: TextStyle(color: Colors.white), textAlign: TextAlign.justify),)

        ],
      ),
    );
  }
}

class CardProduct extends StatefulWidget {
   const CardProduct({super.key});
  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.blueGrey,
          width: 2
        ),
        borderRadius: BorderRadiusGeometry.circular(28)
      ),
      color: Colors.transparent,
      margin: EdgeInsets.all(12),
      elevation: 0,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(30),
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNz_tPE4a6Q1MU-iSOG2JMAuoTV6DG5Qk_EHldr4FFgQ&s=10'),
          ),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Helado de chocolate', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: (){}, child: Text('Add to Cart')),
                  ),
                  IconButton(onPressed: (){
                      setState(() {
                      contador++;
                      });
                  }, icon: Icon(Icons.money)),
                  Text('$contador', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                  IconButton(onPressed: (){
                    setState(() {
                      if(contador>0){
                      contador--;
                      }
                      });
                  }, icon: Icon(Icons.remove)),
              
                ],
              ),
            )
        ],
      ),
    );
  }
}


class CardIcecream extends StatelessWidget {
  const CardIcecream({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)
            ),
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNz_tPE4a6Q1MU-iSOG2JMAuoTV6DG5Qk_EHldr4FFgQ&s=10')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text('Chocolat Ice Cream', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),)
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(onPressed: (){}, child: Text('Leche')),
                SizedBox(width: 5,),
                TextButton(onPressed: (){}, child: Text('Dulce')),
                SizedBox(width: 5,),
                TextButton(onPressed: (){}, child: Text('Organico'))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text('Este es un helado de chocolade proveniente de Namkesein', textAlign: TextAlign.left,)),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text('\$10.00', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text('+2 Delivey'),
                    )
                  ],
                ),
                Expanded(

                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: FilledButton(
                      style: ButtonStyle(
                        
                      ),
                      onPressed: (){}, child: Text('Add to Cart')),
                  ),
                )
              ],
            )
            
        ],
      ),
    );
  }
}

class HeroCard extends StatelessWidget {
  const HeroCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)
            ),
            child: Image.network('https://s.yimg.com/lo/mysterio/api/62770f19ecc3c399e08e45d61afbab337e4dce52f13cb66c2f3de2e1b1fe5e02/lightyear_networkapi/resizefill_w1200%3Bquality_80%3Bformat_webp/https%3A%2F%2Fmedia.zenfs.com%2Fes%2Fanimal_pol_tico_619%2Ff1b7931d7c5afea81d4052d21ba0d042',
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text('Viktor Von Doom',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),
          ),
          Padding(
            padding: EdgeInsets.all(4),
            child: Text('Dr.Doom es un supervillano de Marvel, que es muy poderoso porque usa magia y tecnologia.'),
          )
        ],
      ),
    );
  }

  

}