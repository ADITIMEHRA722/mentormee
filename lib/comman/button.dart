import 'package:flutter/material.dart';

class Btns extends StatelessWidget {
  Btns({Key? key, this.onTap,this.btnName,this.color, this.width, this.height}) : super(key: key);
  final  Function()? onTap;
  String? btnName;
  double? width, height;
  Color? color;
  dynamic bgclr;
  dynamic textStyle;
  dynamic text;
  BorderRadiusGeometry? borderRadius;
  EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
          onTap:onTap,
          child: Padding(
            padding: padding??EdgeInsets.only(left: 30,right: 10),
            child: Container(alignment: Alignment.center,
            child: Text(btnName!,
            style: TextStyle(color: Colors.black,fontSize: 16),),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black
              ),
            color: color?? Colors.transparent,
            borderRadius: BorderRadius.circular(10)
            ),
            height: height ??50,width:width ??200,
            ),
          ),
        );
  }
}