import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_deneme2/components/constants.dart';

// ignore_for_file: prefer_const_constructors
void main() {
  runApp(Falci());
}

class Falci extends StatefulWidget {
  const Falci({Key? key}) : super(key: key);

  @override
  _FalciState createState() => _FalciState();
}

class _FalciState extends State<Falci> {
  List<String> yanitlar = [
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  String secilenFal = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: AppBar(
            title: Text('FAL'),
            centerTitle: true,
            backgroundColor: Color(0xFF7b1fa2),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 30)),
                CircleAvatar(
                    radius: 120,
                    backgroundImage: AssetImage('assets/images/screen-0.jpg')),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      secilenFal = yanitlar[Random().nextInt(5)];
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                    child: ListTile(
                      leading: Icon(Icons.add_to_home_screen_sharp,
                          color: Colors.red),
                      title: Text(
                        'AŞK',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      secilenFal = yanitlar[Random().nextInt(5) + 5];
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.fromLTRB(25, 15, 25, 15),
                    child: ListTile(
                      leading: Icon(
                        Icons.money,
                        color: Colors.green,
                      ),
                      title: Text(
                        'PARA',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      secilenFal = yanitlar[Random().nextInt(5) + 10];
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.only(left: 25, right: 25, bottom: 15),
                    child: ListTile(
                      leading: Icon(Icons.handyman, color: Colors.blue),
                      title: Text(
                        'TAVSIYE',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        secilenFal,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        textAlign: TextAlign.center,
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
