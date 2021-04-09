import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Oragekk',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('Oragekk@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/18461481?v=4'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage(
                    'https://t1.hxzdhn.com/uploads/tu/202011/9999/f8bf76bd21.jpg'),
                // 填满整个区域
                fit: BoxFit.cover,
                // 滤镜（ColorFilter.mode 两个参数：颜色，混合模式）
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400]!.withOpacity(0.6),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
