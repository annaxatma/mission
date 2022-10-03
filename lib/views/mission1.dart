part of 'pages.dart';

class Mission1Page extends StatefulWidget {
  @override
  State<Mission1Page> createState() => _Mission1PageState();
}

class _Mission1PageState extends State<Mission1Page> {

  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Mission 1"),
            ),
            body: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                      gradient: LinearGradient(
                      colors: [
                      Color.fromARGB(255, 158, 221, 255),
                        Color.fromARGB(255, 225, 249, 255),
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                      )),
                    Container(
                      child: Column(
                      children: [
                        Flexible(flex: 3, child: Container(decoration: const BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/pic.jpg'))),)),
                        Flexible(flex: 2, child: Row(
                        children: [
                          Flexible(child: Container(margin: const EdgeInsets.only(left: 10, right: 5, top: 10, bottom: 10), width: 80, height: 80, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: const DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/pic1.jpg'))),)),
                          Flexible(child: Container(margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10), width: 80, height: 80, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: const DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/pic2.jpg'))),)),
                          Flexible(child: Container(margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10), width: 80, height: 80, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: const DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/pic3.jpg'))),)),
                          Flexible(child: Container(margin: const EdgeInsets.only(left: 5, right: 10, top: 10, bottom: 10), width: 80, height: 80, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: const DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/pic4.jpg'))),)),
                        ],
                        )),
                        Flexible(flex: 1, child: Container(padding: const EdgeInsets.only(bottom: 10), child: const Text("How hard life is T^T", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),)),
                        Flexible(flex: 6, child:ListView(
                          padding: const EdgeInsets.only(left: 10, right: 10),

                          scrollDirection: Axis.vertical,
                          children: [
                            Flexible(
                              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", textAlign: TextAlign.justify,),
                            )
                          ],
                        ))
                        // Expanded(flex: 6, child: ListView(
                        //
                        //
                        //
                        //   scrollDirection: Axis.vertical,
                        //   children: const [
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Text("Android Cupcake"),
                        //     ),
                        //
                        //
                        //
                        //   ],
                        //   ),
                        // ),
                        // Flexible(flex: 4, child: Container(margin: const EdgeInsets.only(right: 15, left: 15, bottom: 10), child: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", textAlign: TextAlign.justify,)))
                        // Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/pic.jpg')))),
                        // Expanded(child: Container(
                        //   child: LayoutBuilder(builder: (context, constraint){
                        //     return SingleChildScrollView(
                        //       child: ConstrainedBox(
                        //         constraints:
                        //         BoxConstraints(minHeight: constraint.maxHeight),
                        //         child: IntrinsicHeight(
                        //           child: Column(
                        //             children: [
                        //               Expanded(
                        //                 child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     );
                        //   },),
                        // ))
                      ],
                      ),
                      ),
                    Container(
                      alignment: Alignment.topRight,
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      child: FloatingActionButton(
                          mini: true,
                          onPressed: () {
                            liked();
                          },
                          child: _isFavorite 
                              ? Icon(Icons.favorite, color: Colors.red)
                              : Icon(Icons.favorite_border_outlined)
                      ),
                    )
                  ],
              )
            )
        )
    );
  }
  void liked() {
    setState(() {
      if(_isFavorite){
        _isFavorite = false;
      }else{
        _isFavorite = true;
      }
    });
  }

}

