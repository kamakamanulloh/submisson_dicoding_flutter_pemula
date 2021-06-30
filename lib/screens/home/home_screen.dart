import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_travel/model/place.dart';
import 'package:flutter_travel/screens/detail/detail_screen.dart';


import 'widget/search_input.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SearchInput(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Jombang Kota Santri',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),

              Expanded(

                child: PlaceStaggeredGridview(),


              )
            ],

          ),
        ),
      )


    );
  }

}
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          width: 24,
        ),
        onPressed: () {},
      ),
      actions: [
        UnconstrainedBox(
          child: Container(
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
                color: mPrimaryColor, borderRadius: BorderRadius.circular(8)),
            child: Image.asset(
              'assets/images/user.png',
              width: 36,
            ),
          ),
        )
      ],

    );
  }



class PlaceStaggeredGridview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: StaggeredGridView.countBuilder(
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 4,

        itemCount: placeList.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        itemBuilder: (context, index) {
          final Place place = placeList[index];


          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: placeList[index]);
              }));

            },
            child: Container(
              alignment: Alignment.bottomLeft,
              height: place.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      place.imageUrl,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      place.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),

            ),
          );
        },


      ),

    );
  }
}


