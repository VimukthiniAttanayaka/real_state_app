import 'package:flutter/material.dart';
import 'package:realstateapp/blocs/bloc_exports.dart';
import 'package:realstateapp/colors.dart';
import 'package:realstateapp/widget/Catalog01Widget.dart';

class Catalog01screen extends StatefulWidget {
  const Catalog01screen({super.key});

  @override
  State<Catalog01screen> createState() => _Catalog01screenState();
}

class _Catalog01screenState extends State<Catalog01screen> {
  String userName = 'Stanislav';

  @override
  Widget build(BuildContext context) {
    final propertyBloc = BlocProvider.of<PropertyBloc>(context);
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 110.0,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.BackgroundColor2,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
            ),
          ),
          flexibleSpace: Column(children: [
            const SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Implement drawer opening logic here
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Hi,',
                    style: TextStyle(
                        color: AppColors.Dark100, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    userName ?? '',
                    style: const TextStyle(
                        color: AppColors.Dark100, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 8),
                  Badge(
                    textColor: AppColors.secondaryColor,
                    smallSize: 12,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.Dark40,
                      child: Text(
                        userName!.substring(0, 1).toUpperCase(),
                        style: const TextStyle(color: AppColors.Dark100),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              )
            ]),
            const SizedBox(height: 8),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 8.0, bottom: 8.0, left: 20.0, right: 8.0),
                            child: Icon(Icons.search),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search...',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ))
          ])),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Featured',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: AppColors.Dark100),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/catalog03');
                      },
                      child: const Text(
                        'View all',
                        style: TextStyle(color: AppColors.Dark40),
                      ),
                    )
                  ],
                )),
            SizedBox(
                height: 200,
                child: BlocBuilder<PropertyBloc, PropertyState>(
                    bloc: propertyBloc,
                    builder: (context, state) {
                      if (state.loading) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state.error != null) {
                        return Center(child: Text(state.error!));
                      } else {
                        final propertyList = state.properties;
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: propertyList.length,
                            itemBuilder: (context, index) {
                              final item = propertyList[index];
                              return Container(
                                  width: 150,
                                  margin: const EdgeInsets.all(8),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: Image.network(
                                              item.imageUrl,
                                              width: double.infinity,
                                              height: 150,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 15,
                                            right: 15,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              decoration: BoxDecoration(
                                                color: AppColors.white,
                                                border: Border.all(
                                                    color: AppColors.white),
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                              child: Text(
                                                '\$ ${item.price} ',
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ]),
                                        Text(
                                          item.title,
                                          style: const TextStyle(
                                              color: AppColors.Dark100),
                                        ),
                                      ]));
                            });
                      }
                    })),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'New offers ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: AppColors.Dark100),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/catalog03');
                      },
                      child: const Text(
                        'View all',
                        style: TextStyle(color: AppColors.Dark60),
                      ),
                    )
                  ],
                )),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: BlocBuilder<PropertyBloc, PropertyState>(
                    bloc: propertyBloc,
                    builder: (context, state) {
                      if (state.loading) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state.error != null) {
                        return Center(child: Text(state.error!));
                      } else {
                        final newOffersPropertyList = state.properties;
                        return ListView.builder(
                            itemCount: newOffersPropertyList.length,
                            itemBuilder: (context, index) {
                              var property = newOffersPropertyList[index];
                              return Catalog01Widget(property: property);
                            });
                      }
                    }))
          ],
        ),
      ),
    );
  }
}
