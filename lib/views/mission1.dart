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
              title: const Text("Mission 1 - Scenery"),
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
                      ],
                      ),
                      ),
                    Container(
                      alignment: Alignment.topRight,
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      child: Column(
                      children: [
                        FloatingActionButton(
                            mini: true,
                            onPressed: () {
                              liked();
                            },
                            child: _isFavorite
                                ? Icon(Icons.favorite, color: Colors.red)
                                : Icon(Icons.favorite_border_outlined)
                        ),
                      ],
                      )
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      margin: const EdgeInsets.only(bottom: 15, right: 15),
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, Mission2Page.routeName);
                        },
                        child: Text("Book Place"),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.blueAccent),
                                )
                            )
                        )
                      ),
                    )

                    // Container(
                    //   height: 60,
                    //   width: 100,
                    //   decoration: const BoxDecoration(
                    //     gradient: LinearGradient(
                    //         colors: [
                    //           Color.fromARGB(255, 92, 196, 255),
                    //           Color.fromARGB(255, 182, 244, 255),
                    //         ],
                    //         begin: FractionalOffset(0.0, 0.0),
                    //         end: FractionalOffset(1.0, 0.0),
                    //         stops: [0.0, 1.0],
                    //         tileMode: TileMode.clamp),
                    //   ),
                    //   alignment: Alignment.bottomRight,
                    //   margin: const EdgeInsets.only(right: 15, bottom: 15),
                    //   child: Column(
                    //     children: [
                    //
                    //     ],
                    //   )
                    // )
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

