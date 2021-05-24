import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // IconBadge(
          //   Icons.pool,
          // ),
          // IconBadge(
          //   Icons.beach_access,
          //   size: 64.0,
          // ),
          // IconBadge(
          //   Icons.airplay_rounded,
          // ),

          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0, 
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

// 宽高比
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 16.0 / 9.0,
        child: Container(
          color: Color.fromRGBO(3, 54, 255, 1.0),
        ),
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  // const IconBadge({Key key, this.icon, this.size}) : super(key: key);

  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        /**
             * Stack会把小部件叠加到一起，第一个Sizebox的尺寸是最大的，所以它会相当于一个底板
             * alignment的设置是相对于底板来设置，生效给没对齐的部件
             */
        alignment: Alignment.topLeft,
        children: [
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              alignment: Alignment(0.0, -0.9), // (x,y)
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                shape: BoxShape.circle,
                // 渐变-镜像
                gradient: RadialGradient(
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 54, 255, 1.0),
                  ],
                ),
              ),
              child: Icon(
                Icons.brightness_2,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          ),
          Positioned(
            // 绝对定位
            right: 20.0,
            top: 20.0,
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 32.0,
            ),
          ),
          Positioned(
            // 绝对定位
            right: 30.0,
            top: 60.0,
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 25.0,
            ),
          ),
          Positioned(
            // 绝对定位
            right: 40.0,
            top: 90.0,
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
