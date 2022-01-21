part of 'pages.dart';

class MainPage extends StatelessWidget {
  static const routeMainPage = '/main_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: Container(
          padding: EdgeInsets.only(
              left: 5.0,
              right: 5.0,
              bottom: 5.0,
              top: MediaQuery.of(context).padding.top + 5),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_pin,
                        color: colorGreen,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Location',
                            style: fontTextBlack.copyWith(fontWeight: w300),
                          ),
                          Text(
                            'Jl. Kenari 3 No.18',
                            style: fontTextBlack.copyWith(
                                fontSize: 16, fontWeight: w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.favorite_outline),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 11),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Find Resto..",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/restaurants.json'),
        builder: (context, snapshot) {
          final List<RestaurantModel> restaurants =
              parseRestaurant(snapshot.data);
          return ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, DetailPage.routeDetailPage,
                      arguments: restaurants[index]);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.only(left: 16, right: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(restaurants[index].urlToImageResto),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            restaurants[index].title,
                            style: fontTextBlack.copyWith(
                                fontSize: 16, fontWeight: w600),
                          ),
                          SizedBox(height: 5),
                          Text(
                            restaurants[index].address,
                            style: fontTextBlack.copyWith(fontWeight: w300),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                color: Colors.yellow,
                              ),
                              Text(
                                  '${restaurants[index].rating} (${restaurants[index].ulasan})',
                                  style: fontTextBlack),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
