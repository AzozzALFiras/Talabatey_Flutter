import 'package:flutter/material.dart';

import 'Talbeta.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Future Delay() async{
    await new Future.delayed(const Duration(seconds: 5));
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Talbeta()));
  }
  @override
  void initState(){
    super.initState();
    Delay();
  }
  
  Widget build(BuildContext context) {
    return Center(

      child: Image.asset("asset/images/IMG_9508.jpg",
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
