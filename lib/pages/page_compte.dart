
import 'package:cubes/pages/page_MesRessources.dart';
import 'package:cubes/pages/page_accueil.dart';
import 'package:flutter/material.dart';
import 'package:cubes/models/user.dart';
import 'package:cubes/api/api_user.dart';

class PageCompte extends StatefulWidget {
  final String idUser;
  const PageCompte({Key? key, required this.idUser}) : super(key: key);

  @override
  _PageCompteState createState() => _PageCompteState();
}

class _PageCompteState extends State<PageCompte> {
  @override
  void initState() {
    super.initState();
  }

  String? nom;
  String? prenom;
  String? pseudo;
  String? mail;

  /*void data() async{
    /*ApiUser apiUser = ApiUser();*/
    User? leUser = await apiUser.getOneUser(widget.idUser);

    setState(() {
      nom = leUser!.userNom.toString();
      prenom = leUser.userPrenom;
      pseudo = leUser.userPseudo;
      mail = leUser.userMail;

    });
    print('le tropheeeeeeeeeee');
    print(pseudo);

  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),//you can paste your custom code color, but this one is for demo purpose,
      body: ListView(
        padding: EdgeInsets.all(12),
        physics: BouncingScrollPhysics(),//use this for a bouncing experience
        children: [
          Container(height:35),
          userTile(),
          divider(),
          colorTiles(),
          divider(),
          bwTiles(),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(),
      // floatingActionButton: fab(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget userTile(){
    //I use pixabay.com & unsplash.com for most of the time.
    return ListTile(
      leading: CircleAvatar(
      ),
      title: Text( "Sonia Watts",
        style: TextStyle( fontWeight: FontWeight.bold) ,
      ),
      subtitle: Text( "@Sonia_Wts"),
    );
  }

  Widget divider(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(
        thickness: 1.5,
      ),
    );
  }


  Widget colorTiles(){
    return Column(
      children: [
        colorTile(Icons.person_outline,Colors.deepPurple,"Donn??es Personelles",),
        //colorTile(Icons.image,Colors.pink,"Mes Ressources"),
        TextButton(onPressed: ()async {
    await Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => PageMesRessources(),
    ),
    );

    print('FloatingActionButton pressed ...');
    }, child: Text("Mes Ressources", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500 ),)),
        colorTile(Icons.auto_awesome_motion,Colors.orange,"Biblith??ques"),
        colorTile(Icons.settings_outlined,Colors.blue,"Param??tres"),
      ],
    );
  }


  Widget bwTiles(){
    // Color color = Colors.blueGrey.shade800; not satisfied, so let us pick it
    return Column(
      children: [
        bwTile(Icons.info_outline,"FAQs"),
        bwTile(Icons.border_color_outlined,"Handbook"),
        bwTile(Icons.textsms_outlined,"Community"),
      ],
    );
  }


//only for ease of understanding, other wise you can use colorTile Directly,
// in my preference, i split the widgets into as many chunks as possible

  Widget bwTile(IconData icon,String text){
    return colorTile(icon, Colors.black,text,blackAndWhite: true);
  }


  Widget colorTile(IconData icon,Color color,String text,{bool blackAndWhite =false}){
    Color pickedColor = Color(0xfff3f4fe);
    return ListTile(
      leading: Container(
        child: Icon(icon,color: color),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: blackAndWhite? pickedColor : color.withOpacity(0.09),
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      title: Text(text , style: TextStyle( fontWeight: FontWeight.w500 ),),
      trailing: Icon(Icons.arrow_forward_ios,color:Colors.black,size:20),
      onTap: (){

      },
    );
  }



  Widget bottomNavigationBar(){
    List<IconData> icons = [
      Icons.home, Icons.search, Icons.add, Icons.notifications, Icons.person_outline,
    ];


    return BottomNavigationBar(
      currentIndex: 2,
      items: icons.map((icon) => item(icon)).toList(),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
    );
  }

  BottomNavigationBarItem item(IconData icon,){
    return BottomNavigationBarItem(
      icon: icon==Icons.add? addButton(): Icon(icon),
      label: "label",
    );
  }

  Widget addButton(){
    return CircleAvatar(
      child: Icon(Icons.add, color: Colors.white),
      backgroundColor: Colors.blue,
    );
  }


}
