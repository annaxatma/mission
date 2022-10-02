part of 'pages.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  
  int angka = 0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          elevation: 0,
        ),
        body: Container(
          alignment: Alignment.center, // align vertikal
          width: double.infinity, // sizenya kayak full constraint layout
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("0", style: TextStyle(fontSize: 42),),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        angka = angka + 1;
                      });
                    }, // unonimus
                    child: Text("+", style: TextStyle(fontSize: 55),)),

                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        angka = angka - 1;
                      });
                    }, // unonimus
                    child: Text("-", style: TextStyle(fontSize: 55),))
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}