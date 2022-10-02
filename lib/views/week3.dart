part of 'pages.dart';

class Week3Page extends StatefulWidget {
  @override
  State<Week3Page> createState() => _Week3PageState();
}

class _Week3PageState extends State<Week3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Week 3"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(flex: 2, child: Container(child: Text("text 1"), decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/s.jpg'))),)),
            Flexible(flex: 3, child: Container(color: Colors.blueAccent,)),
            Flexible(flex: 4, child: Container(color: Color(0xFF5ABB73),)) //warna dari hex, inisialisasi 0xFF lalu dilanjutkan code hex nya
          ],
        ),
      )
    );
  }
}

