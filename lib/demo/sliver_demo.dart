import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

class SliverDemo extends StatelessWidget {
  const SliverDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  const SliverListDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 32.0),
          child: Material(
            borderRadius: BorderRadius.circular(12.0),
            /**
             * clipBehavior: Clip.hardEdge如果您需要剪辑，请添加，并且没有抗锯齿的剪辑对于您（和您的客户）的眼睛来说已经足够了。当您剪切矩形或具有非常小的弯曲区域（例如圆角矩形的角）的形状时，这是常见的情况。
             * 添加clipBehavior: Clip.antiAlias如果你需要抗锯齿剪裁。这以稍高的成本为您提供更平滑的边缘。这是处理圆和圆弧时的常见情况。
             * clip.antiAliasWithSaveLayer如果您想要与之前（2018 年 5 月）完全相同的行为，请添加。请注意，它的性能成本非常高。这可能只是很少需要。您可能需要这样做的一种情况是，如果您的图像覆盖在非常不同的背景颜色上。在这些情况下，请考虑是否可以避免在一个位置重叠多种颜色（例如，仅在没有图像的地方显示背景颜色）。
             */
            clipBehavior: Clip.antiAlias, // 为提升性能默认为Clip.none
            elevation: 14.0, // 阴影
            shadowColor: Colors.grey.withOpacity(0.5),
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 32.0,
                  left: 32.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        posts[index].title,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        posts[index].author,
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }, childCount: posts.length),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  const SliverGridDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 交叉轴最大数量
        crossAxisSpacing: 8.0, // 交叉轴间距
        mainAxisSpacing: 8.0, // 主轴间距
        childAspectRatio: 1.0, // 控制显示比例，默认1.0
      ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      }, childCount: posts.length),
    );
  }
}
