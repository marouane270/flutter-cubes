import 'package:flutter/material.dart';

class PageCom extends StatefulWidget {
  const PageCom({Key? key}) : super(key: key);

  @override
  _PageComState createState() => _PageComState();
}

class _PageComState extends State<PageCom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "[NOM POST]",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
                "4 commentaires",
                style: TextStyle(
                  fontSize: 13,
                ),
              )
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width - 55 ,
                        child: Card(
                          margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                          ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                              hintText: "Entrez votre commentaire...",
                                  prefixIcon: IconButton(
                                    icon: Icon(
                                      Icons.emoji_emotions,
                                    ),
                                    onPressed: () {},
                                  ),
                                  contentPadding: EdgeInsets.all(5)
                            ),
                          ),
                        ),
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 8),
                    child: CircleAvatar(
                      radius: 25,
                      child: IconButton(
                        icon: Icon(Icons.east),
                        onPressed: (){},
                      ),
                    )),

                  ],
                ),

            )
          ],
        ),
      ),
    );
  }
}
