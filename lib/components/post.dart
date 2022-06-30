import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String posterId;
  final String posterNom;
  final String posterPrenom;
  final String posterPseudo;
  final String message;
  final String photo;
  final String? likers;
  final String? comments;
  final String createdAt;

  const Post({Key? key, required this.posterId,required this.posterNom,required this.posterPrenom,required this.posterPseudo,required this.message,required this.photo, this.likers, this.comments,required this.createdAt,}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 26,
              child: new Text(getInitial(widget.posterPrenom, widget.posterNom)),
            ),
            title: RichText(
              text: TextSpan(
                  text: '${widget.posterPseudo} ',
                  style: Theme.of(context).textTheme.headline6,
                  children: [
                    TextSpan(
                        text: '@${widget.posterPseudo} ',
                        style: Theme.of(context).textTheme.subtitle1,
                        children: [
                          TextSpan(
                              text: widget.createdAt.substring(0,9),)
                        ]),
                  ]),
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    widget.message,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: () {},padding: const EdgeInsets.all(0.0), icon: IconNumberedWidget(
                          ico: Icons.message,
                          number: widget.posterPseudo.length)),//commentaire
                      Spacer(),
                      /*IconNumberedWidget(
                          ico: LineIcons.retweet, number: data.retweets),
                      Spacer(),*/
                      IconButton(onPressed: () {}, padding: const EdgeInsets.all(0.0), icon: IconNumberedWidget(
                          ico: Icons.favorite, number: widget.posterPrenom.length),),//likes

                      Spacer(),
                    ])
              ],
            ),
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          ),
          Divider(
            color: Colors.grey.shade700,
            thickness: 0.5,
          )
        ],
      ),
    );
  }
}

String getInitial(String nom, String prenom) {
  var initial = nom.substring(0,1) + prenom.substring(0,1);
  return initial;
}

class IconNumberedWidget extends StatelessWidget {
  final IconData ico;
  final int number;
  const IconNumberedWidget({Key? key, required this.ico, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {},
            child: Icon(
              ico,
              color: Colors.grey,
            )),
        SizedBox(width: 10),
        Text(number.toString())
      ],
    );
  }
}