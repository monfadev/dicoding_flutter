part of 'pages.dart';

/// MODUL LISTVIEW
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(
                'FARM HOUSE LEMBANG',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    category(
                      text: 'fauzi',
                      icon: Icons.ac_unit_outlined,
                    ),
                    // Column(
                    //   children: <Widget>[
                    //     Icon(Icons.calendar_today),
                    //     SizedBox(height: 8.0),
                    //     Text(
                    //       'Open Everyday',
                    //     ),
                    //   ],
                    // ),
                    // Column(
                    //   children: <Widget>[
                    //     Icon(Icons.calendar_today),
                    //     SizedBox(height: 8.0),
                    //     Text(
                    //       'Open Everyday',
                    //     ),
                    //   ],
                    // ),
                    // Column(
                    //   children: <Widget>[
                    //     Icon(Icons.calendar_today),
                    //     SizedBox(height: 8.0),
                    //     Text(
                    //       'Open Everyday',
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpghttps://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpghttps://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpghttps://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 200,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget category({String? text, IconData? icon}) {
  return Column(
    children: <Widget>[
      Icon(icon),
      SizedBox(height: 8.0),
      Text(
        text!,
      ),
    ],
  );
}

// LIST VIEW
Widget listView() {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // return ListView(
  //   children: numberList
  //       .map(
  //         (number) => Container(
  //           height: 250,
  //           decoration: BoxDecoration(
  //             color: Colors.grey,
  //             border: Border.all(color: Colors.black),
  //           ),
  //           child: Center(
  //             child: Text(
  //               '$number', // Ditampilkan sesuai item
  //               style: TextStyle(fontSize: 50),
  //             ),
  //           ),
  //         ),
  //       )
  //       .toList(),
  // );
  return ListView(
    children: numberList.map((e) {
      return Container();
    }).toList(),
  );
}
