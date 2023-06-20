import 'package:flutter/material.dart';

///Data

Text simpleTextTitle(String text) {
  return Text(
    text,
    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
  );
}

Row simpleDesc(IconData icon, String text) {
  return Row(
    children: [
      Icon(icon),
      const Padding(padding: EdgeInsets.only(left: 5)),
      Text(text),
    ],
  );
}

Container simpleButton({IconData? icon, String? text}) {
  return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue),
      child: text != null
          ? Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 17),
              textAlign: TextAlign.center,
            )
          : Icon(
              icon,
              color: Colors.white,
            ));
}

Column amiPicture(String image, String name, double width) {
  return Column(
    children: [
      Container(
        width: width,
        margin: const EdgeInsets.all(7),
        padding: const EdgeInsets.all(5),
        height: width * 2,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
      Text(name)
    ],
  );
}

Row allAmi(double width) {
  Map<String, String> friends = {
    "Mathieu": "images/profil.jpg",
    "Ulrich": "images/profil3.jpg",
    "Issa": "images/profil2.jpg"
  };
  List<Widget> childrens = [];
  friends.forEach((name, image) {
    childrens.add(amiPicture(image, name, width));
  });
  return Row(
    children: childrens,
  );
}

Container post(String imageProfit, String name, String time, String imagePost,
    String like, String commente, String desc) {
  return Container(
    decoration: BoxDecoration(color: Colors.grey.shade200),
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.all(5),
    child: Column(children: [
      Row(
        children: [
          circleAvatar(25, imageProfit),
          Text(name),
          const Spacer(),
          Text(time),
        ],
      ),
      Image.asset(imagePost),
      Text(
        desc,
        textAlign: TextAlign.center,
      ),
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Icon(Icons.favorite),
          ),
          Text('$like likes'),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Icon(Icons.comment),
          ),
          Text('$commente commentaires')
        ],
      ),
    ]),
  );
}

CircleAvatar circleAvatar(double width, String imageProfil) {
  return CircleAvatar(
    radius: width,
    backgroundColor: Colors.white,
    child: CircleAvatar(
      radius: width - 2,
      backgroundImage: AssetImage(imageProfil),
    ),
  );
}
