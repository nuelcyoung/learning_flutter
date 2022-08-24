import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:training/screens/home.dart';

// class RoundedInput extends StatelessWidget {
//   final String hintText;
//   final IconData icon;
//   final ValueChanged<String> onChanged;
//   const RoundedInput({
//     Key? key,
//     this.hintText,
//     this.icon,
//     this.onChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const TextFieldContainer(
//       child: TextField(
//         decoration: InputDecoration(
//           icon: Icon(Icons.person,
//           color: Color.fromARGB(255, 97, 7, 112),
//           ),
//           hintText: hintText,
//           border: InputBorder.none,
//         ),
//       )
//     );
//   }
// }
// class TextFieldContainer extends StatelessWidget {
//   const TextFieldContainer({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get colors => null;

  child() => null;

  get bold => null;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  // setState((context){
  //   isLoading = false;
  // });

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: -0,
              child: Image.asset(
                "assets/images/background.png",
                scale: 1.2,
                width: size.width * 1,
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(24, 90, 24, 0),
                child: ListView(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(24),
                      child: const Text(
                        'KiloRecharge',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13))),
                            fillColor: Color.fromARGB(255, 249, 249, 249),
                            labelText: 'Email',
                          ),
                        )),
                       const SizedBox(
                         height: 10),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(13))),
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 40, 1, 74),
                            fontWeight: FontWeight.bold),
                        fillColor: Color.fromARGB(255, 43, 3, 83),
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(
                         height: 10),
                    Container(
                      height: 60,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: ElevatedButton(
                         style: const ButtonStyle(
                           //backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                         ),
                        child: const Text('Login'),
                        onPressed: ()=>Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Home()))
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}


