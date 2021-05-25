import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  const ViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridViewExtentDemo();
  }
}

class GridViewExtentDemo extends StatelessWidget {
  const GridViewExtentDemo({Key? key}) : super(key: key);

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item$index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0, // 交叉轴最大尺寸
      crossAxisSpacing: 16.0, // 交叉轴（横轴） 间距
      mainAxisSpacing: 16.0, // 主轴 间距
      // scrollDirection: Axis.horizontal, // 滚动方向
      children: _buildTiles(100),
    );
  }
}

/// 网格视图
class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({Key? key}) : super(key: key);

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item$index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // 交叉轴（横轴） 数量
      crossAxisSpacing: 16.0, // 交叉轴（横轴） 间距
      mainAxisSpacing: 16.0, // 主轴 间距
      scrollDirection: Axis.horizontal, // 滚动方向
      children: _buildTiles(100),
    );
  }
}

class PageViewBuildrDemo extends StatelessWidget {
  const PageViewBuildrDemo({Key? key}) : super(key: key);

  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
        ),
        Positioned(
          // 绝对定位容器
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false, // 超过一半自动翻页
      // reverse: true, // 倒叙
      // scrollDirection: Axis.vertical, // 水平垂直滚动
      onPageChanged: (currentPage) => debugPrint('page:$currentPage'),
      controller: PageController(
        initialPage: 1,
        keepPage: false, // 记住用户滚动的页面
        viewportFraction: 0.85, // 占用可视窗口的85%
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'One',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Two',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Three',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
