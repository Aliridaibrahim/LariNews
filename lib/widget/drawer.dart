import 'package:flutter/material.dart';
import '../Screens/News.dart';
class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.topRight,
      widthFactor: 1,
      child: Column(
        children: [
          const CircleAvatar(

           radius: 35,

          ), const SizedBox(
            height: 20,
          ),
          const  Divider(height: 0,
            color: Colors.black,),

                  Column(
                    children: [
                      ListTile(
                      trailing: const CircleAvatar(
                        backgroundColor: Colors.cyan,
                        maxRadius: 13,
                        minRadius: 13,
                      ),
                        title: const Text("الاخبار",
                        style: TextStyle(
                          fontSize: 15
                        ),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder:(context)=> const News() )),
dense: true,
                        contentPadding: const EdgeInsets.only(left: 1.0, right: 3.0),
                        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                      ),
                    const  Divider(height: 0,
                    color: Colors.black,),
                      ListTile(
                        trailing: const CircleAvatar(
                          backgroundColor: Colors.cyan,
                          maxRadius: 13,
                          minRadius: 13,
                        ),
                        title: const Text("الاخبار",
                          style: TextStyle(
                              fontSize: 15
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder:(context)=> const News() )),
                        dense: true,
                        contentPadding: const EdgeInsets.only(left: 1.0, right: 3.0),
                        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                      ),  const  Divider(height: 0,
                        color: Colors.black,),

                      ListTile(
                        trailing: const CircleAvatar(
                          backgroundColor: Colors.cyan,
                          maxRadius: 13,
                          minRadius: 13,
                        ),
                        title: const Text("الاخبار",
                          style: TextStyle(
                              fontSize: 15
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder:(context)=> const News() )),
                        dense: true,
                        contentPadding: const EdgeInsets.only(left: 1.0, right: 3.0),
                        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                      ),
                      const  Divider(height: 0,
                        color: Colors.black,),
                      ListTile(
                        trailing: const CircleAvatar(
                          backgroundColor: Colors.cyan,
                          maxRadius: 13,
                          minRadius: 13,
                        ),
                        title: const Text("الاخبار",
                          style: TextStyle(
                              fontSize: 15
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder:(context)=> const News() )),
                        dense: true,
                        contentPadding: const EdgeInsets.only(left: 1.0, right: 3.0),
                        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                      ),
                      const  Divider(height: 0,
                        color: Colors.black,),
                      ListTile(
                        trailing: const CircleAvatar(
                          backgroundColor: Colors.cyan,
                          maxRadius: 13,
                          minRadius: 13,
                        ),
                        title: const Text("الاخبار",
                          style: TextStyle(
                              fontSize: 15
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder:(context)=> const News() )),
                        dense: true,
                        contentPadding: const EdgeInsets.only(left: 1.0, right: 3.0),
                        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                      ),
                      const  Divider(height: 0,
                        color: Colors.black,),
                      ListTile(
                        trailing: const CircleAvatar(
                          backgroundColor: Colors.cyan,
                          maxRadius: 13,
                          minRadius: 13,
                        ),
                        title: const Text("الاخبار",
                          style: TextStyle(
                              fontSize: 15
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder:(context)=> const News() )),
                        dense: true,
                        contentPadding: const EdgeInsets.only(left: 1.0, right: 3.0),
                        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                      ),
                      const  Divider(height: 0,
                        color: Colors.black,),
                      ListTile(
                        trailing: const CircleAvatar(
                          backgroundColor: Colors.cyan,
                          maxRadius: 13,
                          minRadius: 13,
                        ),
                        title: const Text("الاخبار",
                          style: TextStyle(
                              fontSize: 15
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder:(context)=> const News() )),
                        dense: true,
                        contentPadding: const EdgeInsets.only(left: 1.0, right: 3.0),
                        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                      ),
                      const  Divider(height: 0,
                        color: Colors.black,),
                      ListTile(
                        trailing: const CircleAvatar(
                          backgroundColor: Colors.cyan,
                          maxRadius: 13,
                          minRadius: 13,
                        ),
                        title: const Text("الاخبار",
                          style: TextStyle(
                              fontSize: 15
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder:(context)=> const News() )),
                        dense: true,
                        contentPadding: const EdgeInsets.only(left: 1.0, right: 3.0),
                        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                      ),
                      const  Divider(height: 0,
                        color: Colors.black,),
                      ListTile(
                        trailing: const CircleAvatar(
                          backgroundColor: Colors.cyan,
                          maxRadius: 13,
                          minRadius: 13,
                        ),
                        title: const Text("الاخبار",
                          style: TextStyle(
                              fontSize: 15
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder:(context)=> const News() )),
                        dense: true,
                        contentPadding: const EdgeInsets.only(left: 1.0, right: 3.0),
                        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                      ),
                      const  Divider(height: 0,
                        color: Colors.black,),
                      ListTile(
                        trailing: const CircleAvatar(
                          backgroundColor: Colors.cyan,
                          maxRadius: 13,
                          minRadius: 13,
                        ),
                        title: const Text("الاخبار",
                          style: TextStyle(
                              fontSize: 15
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder:(context)=> const News() )),
                        dense: true,
                        contentPadding: const EdgeInsets.only(left: 1.0, right: 3.0),
                        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                      ),
                      const  Divider(height: 0,
                        color: Colors.black,),
                      ListTile(
                        trailing: const CircleAvatar(
                          backgroundColor: Colors.cyan,
                          maxRadius: 13,
                          minRadius: 13,
                        ),
                        title: const Text("الاخبار",
                          style: TextStyle(
                              fontSize: 15
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder:(context)=> const News() )),
                        dense: true,
                        contentPadding: const EdgeInsets.only(left: 1.0, right: 3.0),
                        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                      ),  const  Divider(height: 0,
                        color: Colors.black,),
                    ],
                  ),
          const SizedBox(
            height: 25,
          ),
          const Text(" TTTTTTTTTTTTTTTTTTTT")
        ],
      ),

    );
  }
}
