import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:redbus_app/models/verticaldotline.dart';

class Booking_Bus extends StatefulWidget {
  const Booking_Bus({Key? key}) : super(key: key);

  @override
  State<Booking_Bus> createState() => _Booking_BusState();
}

class _Booking_BusState extends State<Booking_Bus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Sheet Sample')),
      body: const BottomSheetExample(),
    );
  }
}

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({Key? key}) : super(key: key);

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show Bottom Sheet'),
        onPressed: () => _showModalBottomSheet(context),
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.5,
          minChildSize: 0.3,
          maxChildSize: 0.9,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: ListView(
                controller: scrollController,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SPS Travels",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text("22.00 - 06.00 . Sat, 18 May"),
                      SizedBox(height: 5),
                      Text("A/C sleeper (2+1)")
                    ],
                  ),
                  const SizedBox(height: 16),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 200.0,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      initialPage: 0,
                      autoPlay: true,
                    ),
                    items: [
                      'assets/redbus.png',
                      'assets/train.png',
                    ].map((assetpath) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                            ),
                            child: Image.asset(assetpath, fit: BoxFit.cover),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Description of SPS Travels. This can be a long text that describes the services, history, and other details about the travel service.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Text(
                        "Why book this bus?",
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      ),
                      Spacer(),
                      Text("Bus Route"),
                      Spacer(),
                      Text("Boarding Point"),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bus Route",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("6h 30"),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Chennai",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text("Kanchipuram"),
                          Spacer(),
                          Text("vellore"),
                          Spacer(),
                          Text("ambur"),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Krisnagiri",
                          ),
                          Spacer(),
                          Text("Hosur"),
                          Spacer(),
                          Text("Banglore"),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Boarding Points",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Bus Route",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  _buildBusRoute(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Dropping Points",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildBusRoute(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

Widget _buildBusRoute() {
  List<Model> list = [
    Model("Chennai", Colors.red),
    Model("Kanchipuram", Colors.green),
    Model("Vellore", Colors.blue),
    Model("Ambur", Colors.orange),
    Model("Krishnagiri", Colors.purple),
    Model("Hosur", Colors.brown),
    Model("Bangalore", Colors.cyan),
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: List.generate(list.length, (index) {
      return Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Icon(Icons.location_on, color: list[index].color),
                  if (index != list.length - 1)
                    CustomPaint(
                      size: Size(1, 40),
                      painter: VerticalDottedLinePainter(),
                    ),
                ],
              ),
              SizedBox(width: 10),
              Text(
                list[index].address,
                style: TextStyle(
                  color: list[index].color,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          if (index != list.length - 1) SizedBox(height: 10),
        ],
      );
    }),
  );
}

class Model {
  String address;
  Color color;

  Model(this.address, this.color);
}
