import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://resources.ninghao.net/images/dragon.jpg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hardLight
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            // padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0, bottom: 20.0),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              // color: Color.fromRGBO(3, 54, 255, 1.0),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.red,
              //     width: 3.0,
              //     style: BorderStyle.solid
              //   )
              // )
              border: Border.all(
                color: Colors.red,
                width: 3.0,
                style: BorderStyle.solid
              ),
              // borderRadius:BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   bottomRight: Radius.circular(64.0)
              // )
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,       // 模糊
                  spreadRadius: -9.0      // 扩散
                )
              ],
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ]
              ),
              // gradient: LinearGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0)
              //   ],
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter
              // )
            ),
          )
        ],
      ),
    );
  }
}


class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );
  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》-- $_author  君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'symboll',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold
        ),
        children: [
          TextSpan(
            text: ".net",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17.0
            )
          )
        ]
      ),
    );
  }
}