import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}): super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // 查找父级最近的Scaffold对应的ScaffoldState对象
        ScaffoldState _state = context.findAncestorStateOfType<ScaffoldState>()!;
        // 打开抽屉菜单
        _state.openDrawer();
      },
      child: const Text('打开抽屉'),
    );
  }
}