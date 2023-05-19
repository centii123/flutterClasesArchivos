import 'package:flutter/material.dart';

class navpro extends StatelessWidget implements PreferredSizeWidget {
  final link;
  final String? tipo;
  const navpro({super.key, this.link, this.tipo});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("hola"),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/pagina1");
            },
            icon: Icon(Icons.tab_sharp)),
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            if (tipo == "inicio") {
              Navigator.pop(context);
            } else {
              Navigator.pushNamed(context, link);
            }
            //Navigator.popAndPushNamed(context, link) no aparece para retroceder;
          },
        ),
      ],
    );
    ;
  }
}
