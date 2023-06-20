import 'package:flutter/material.dart';
import 'package:first_projet/widgets/utile_widget.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basics'),
        backgroundColor: Colors.blue,
      ),
      body: const BodyProfilPage(),
    );
  }
}

class BodyProfilPage extends StatelessWidget {
  const BodyProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              "images/banniere.jpg",
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 140),
                child: circleAvatar(60, 'images/pp.jpg')),
          ],
        ),
        const Row(
          children: [
            Spacer(),
            Text('Okono Wilfried',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
            Spacer()
          ],
        ),
        const Text(
          'De rien je me construis un empire. Je suis dévéloppeur backend web et mobile.',
          textAlign: TextAlign.center,
        ),
        Row(
          children: [
            Expanded(
              child: simpleButton(text: 'Modifier le profil'),
            ),
            simpleButton(icon: Icons.border_color)
          ],
        ),
        const Divider(
          height: 20,
          thickness: 1,
          color: Colors.grey,
        ),
        simpleTextTitle('A propos de moi'),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Column(children: [
            simpleDesc(Icons.home, 'Ange Raphael, Douala, Cameroun'),
            simpleDesc(Icons.work, 'Stage professionel'),
            simpleDesc(Icons.favorite, 'couple'),
          ]),
        ),
        simpleTextTitle('Amis'),
        allAmi(MediaQuery.of(context).size.width / 3.5),
        const Divider(
          thickness: 10,
        ),
        post('images/pp.jpg', 'Okono Wilfride', 'Il y a 5 heures',
            'images/post2.jpg', '100', '10', 'Juste de passage'),
        post('images/profil2.jpg', 'Issa', 'Il y a 10 heures',
            'images/post1.jpg', '12', '10', 'Juste de passage'),
        post('images/profil3.jpg', 'Ulrich', 'Il y a 21 heures',
            'images/post3.jpg', '60', '10', 'En lune de miel avec ma blanche'),
      ],
    ));
  }
}
