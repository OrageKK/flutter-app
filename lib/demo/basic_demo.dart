import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        // 主轴对齐
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            // BoxDecoration 设置颜色后，Container不能设置color
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.only(left: 8.0, right: 30, top: 20, bottom: 8),
            margin: EdgeInsets.all(20.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   ),
              //   bottom: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   ),
              // ),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* 
 * Text--行内不同样式 
*/
class RichTextDemo extends StatelessWidget {
  const RichTextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'oragekk',
        style: TextStyle(
          fontSize: 34.0,
          color: Colors.deepPurpleAccent,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.me',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.cyan,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

/* 
 * Text基础 
*/
class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 18.0,
  );

  final String _author = "徐凤年";
  final String _title = "北凉镇魂歌";

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》——$_author \n北凉参差百万户，其中多少铁衣裹枯骨？当年辽东也寒苦，最后千里转战魂归土。昔时年少骑马出，数百同袍如手足。单刀断后无从修，甲胄破烂谁来顾。唯有手足身做盾，唯有同袍血肉补。黄金战甲何入库，良马重骑悠闲图。十战不死成老卒，百战不归忘浮屠。庙堂官袍密密织，老卒寒衣何人缝。冷风凉雨八九时，借得寥寥军士从。功名是贵少俸禄，生死博来利交出。不敢忘却血中死，死扛城门是为龙？六百袍泽几人在，三十万存老字营。孤魂嚎，野鬼哭，北凉功过青山万古伏。活人孤，亡者骷，是非对错勿要诗词付。横刀长笑有酒否？旌旗所指天下看沉浮。功名付与酒一壶，试问帝王将相几捧土？天下兴亡百姓苦，不问鬼神知晓悲凉赋。笑谈几骑开西蜀，几人生死几人赎？蜀中尚有十万众，天险蜀江有何用。三千轻甲敌十万，投鞭断流杀皇族。赵家那时湮成灰，军师素缟十里猝。滚滚东水随波流，生死恩仇尘世透。公主坟上散乱伍，拼得四万戟入库。老字营中卒不退，百甲活一剩白熊。兵圣纵横三十载，奈何此战败亡国。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      // 超出省略
      overflow: TextOverflow.ellipsis,
    );
  }
}
