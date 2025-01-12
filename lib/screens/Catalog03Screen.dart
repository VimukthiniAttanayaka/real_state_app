import 'package:flutter/material.dart';
import 'package:realstateapp/blocs/bloc_exports.dart';
import 'package:realstateapp/colors.dart';
import 'package:realstateapp/widget/Catalog03Widget.dart';

class Catalog03screen extends StatefulWidget {
  const Catalog03screen({super.key});

  @override
  State<Catalog03screen> createState() => _Catalog03screenState();
}

class _Catalog03screenState extends State<Catalog03screen> {
  @override
  Widget build(BuildContext context) {
    final propertyBloc = BlocProvider.of<PropertyBloc>(context);
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
            child: AppBar(
              backgroundColor: AppColors.BackgroundColor3,
              automaticallyImplyLeading: false,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
              title: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.Dark100),
                    child: IconButton(
                      icon: const Icon(Icons.menu, color: AppColors.white),
                      onPressed: () {
                        // Handle drawer opening logic here
                      },
                    ),
                  ),
                  const SizedBox(width: 10.0),
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
                    ),
                  ),
                ],
              ),
            )),
        body: SingleChildScrollView(
            child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Popular rent offers ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColors.Dark100),
              ),
            ),
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
                        final propertyList = state.properties;
                        return ListView.builder(
                            itemCount: propertyList.length,
                            itemBuilder: (context, index) {
                              var property = propertyList[index];
                              return Catalog03Widget(property: property);
                            });
                      }
                    }))
          ],
        )));
  }
}
