
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1470115636492-6d2b56f9146d?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTh8fHxlbnwwfHx8fHw%3D',
    'https://images.unsplash.com/photo-1561176162-0b01b0df76ed?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8OXx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1567878673942-be055fed5d30?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D',

  ];

  runApp(MaterialApp(

    home:Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true, // Auto-play the images
                  ),
                  items: imageUrls.map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),

                //slider use
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          // flex: 3,
                          child: Container(
                            margin: EdgeInsets.all(3),
                            height: 170,
                            width: 100,
                            color: Colors.yellow,
                              child:Image.network("https://images.unsplash.com/photo-1634382615649-7227ce9a5cee?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aGQlMjBpbWFnZXxlbnwwfHwwfHx8MA%3D%3D",
                              fit: BoxFit.fitWidth,
                              )
                            //Child Cont use
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(3),
                            height: 170,
                            width: 100,
                            color: Colors.green,
                            //Child Cont use
                            child:Image.network("https://images.unsplash.com/photo-1532230592347-3aed07f8e6e8?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGhkJTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D"
                                ,fit: BoxFit.fill),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(3),
                            height: 170,
                            width: 100,
                            color: Colors.orange,
                            child:Image.network("https://images.unsplash.com/photo-1589251204996-3367cc27f084?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGhkJTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D",fit: BoxFit.fill),
                            //Child Cont use
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(3),
                            height: 170,
                            width: 100,
                            color: Colors.orange,
                            child: Center(child: Text('Container4')),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(3),
                            height: 170,
                            width: 100,
                            color: Colors.red,
                            child: Center(child: Text('Container5')),
                          ),
                        ),
                           Expanded(
                             child: Container(
                              margin: EdgeInsets.all(3),
                              height: 170,
                              width: 100,
                              color: Colors.blue,
                              child: Center(child: Text('Container6')),
                          ),
                           ),
                      ],
                    )
                  ],
                ),
              ),
            ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people),
            label: 'Profile',
              backgroundColor: Colors.yellow
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
              backgroundColor: Colors.orange
          ),
        ],
      ),
    ),
  ));
}

