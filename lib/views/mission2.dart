part of 'pages.dart';

class Mission2Page extends StatefulWidget {
  const Mission2Page({Key? key}) : super(key: key);

  static const String routeName = "/Mission2Page";

  @override
  State<Mission2Page> createState() => _Mission2PageState();
}

class _Mission2PageState extends State<Mission2Page> {

  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  void dispose() {
    ctrlName.dispose();
    ctrlEmail.dispose();
    ctrlPhone.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mission 2 - Book Place"),
      ),
      body: Container(
          decoration: const BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage("assets/images/pic1.jpg"),
            //   fit: BoxFit.cover,
            // ),
          ),
        padding: EdgeInsets.all(16),
        child: Form(
          key: _loginKey,
          child: ListView(
            padding: const EdgeInsets.only(left: 10, right: 10),
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(height: 16,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      width: 0.8,
                    ),
                  ),
                ),
                controller: ctrlName,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  return value.toString().length < 1 ? "Fill your name" : null;
                },
              ),
              SizedBox(height: 16,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      width: 0.8,
                    ),
                  ),
                ),
                controller: ctrlEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  return !EmailValidator.validate(value.toString()) ? "Email is not valid" : null;
                  // if(!EmailValidator.validate(value.toString())){
                  //   return "Email tidak valid";
                  // }else{
                  //   return null;
                  // }
                },
              ),
              SizedBox(height: 16,),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      width: 0.8,
                    ),
                  ),
                ),
                controller: ctrlPhone,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  return value.toString().length < 12 ? "Wrong phone number" : null;
                },
              ),
              SizedBox(height: 16,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "City",
                  prefixIcon: Icon(Icons.location_city),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      width: 0.8,
                    ),
                  ),
                ),
                controller: ctrlCity,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  return value.toString().length < 1 ? "Fill your city" : null;
                },
              ),
              SizedBox(height: 32,),
              Center(
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.save,
                    ),
                    label: Text('Book Now'),
                    onPressed: () {
                      if(_loginKey.currentState!.validate()){
                        showDialog(
                        context: context,
                        builder: (context){
                          return Dialog(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            elevation: 16,
                            child: Container(
                              child: ListView(
                              shrinkWrap: true,
                                children: <Widget>[
                                  SizedBox(height: 20),
                                  Center(child: Text('Booking Confirmation', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
                                  SizedBox(height: 5),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15, bottom: 10, top: 15),
                                  child: Text("Name: " + ctrlName.text.toString()),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15, bottom: 10),
                                  child: Text("Email: " + ctrlEmail.text.toString()),
                                  ),
                                  Padding(
                                  padding: EdgeInsets.only(left: 15, bottom: 10),
                                  child: Text("Phone: " + ctrlPhone.text.toString()),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15, bottom: 10),
                                  child: Text("City: " + ctrlCity.text.toString()),
                                  ),
                                  TextButton(
                                  onPressed: (){
                                  Navigator.pop(context, true);
                                  },
                                  child: Text("OK")
                                  )
                                ],
                              )
                            )
                          );
                        }
                        );
                      }else{
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              elevation: 16,
                              child: Container(
                                child: ListView(
                                  shrinkWrap: true,
                                  children: <Widget>[
                                    SizedBox(height: 20),
                                    Center(child: Text('Booking Failed', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
                                    SizedBox(height: 20),
                                    Padding(
                                      padding: EdgeInsets.all(15), //apply padding to all four sides
                                      child: Text("Please fill in all the data requirement :)"),
                                    ),
                                    SizedBox(height: 5),
                                    TextButton(
                                        onPressed: (){
                                          Navigator.pop(context, true);
                                        },
                                        child: Text("OK"),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

