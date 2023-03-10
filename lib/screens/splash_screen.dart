import 'package:flutter/material.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/screens/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const LoginScreen()), (_) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    MySize().init(
      context,
    );
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/png/splasbg2.png"),fit: BoxFit.fill),
                ),
                child:  Center(child: Image(image: const AssetImage("assets/images/png/splasimg.png"),fit: BoxFit.contain,height: MySize.size164,width: MySize.size137,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
