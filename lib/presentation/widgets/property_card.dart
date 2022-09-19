import 'package:flutter/material.dart';
import 'package:skawa/core/enums.dart';
import 'package:skawa/data/models/location.dart';
import 'package:skawa/data/models/property.dart';

class PropertyCard extends StatelessWidget {
  final Property property;
  const PropertyCard({Key? key, required this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xffD1DAE4),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 8),
              blurRadius: 24,
              color: const Color(0xff003767).withOpacity(.2),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            property.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: [
              Text(
                property.assignmentType.asText,
                style: const TextStyle(fontSize: 16),
              ),
              ...property.estateTypes
                  .map(
                    (e) => Text(
                      e.asText,
                      style: const TextStyle(fontSize: 16),
                    ),
                  )
                  .toList(),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            color: const Color(0xffF3F6FA),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                //loc
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16),
                  child: SizedBox(
                    height: 16,
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          final loc = property.locations[index];
                          return Text(loc.displayName);
                        },
                        separatorBuilder: (_, index) => const Text(", "),
                        itemCount: property.locations.length),
                  ),
                ),
                const Divider(height: 1),
                //price
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16),
                  child: Row(children: [
                    const Expanded(
                      child: Text("Ár"),
                    ),
                    Expanded(
                      child: Text(property.priceFormatted),
                    ),
                  ]),
                ),
                const Divider(height: 1),
                //area
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16),
                  child: Row(children: [
                    const Expanded(
                      child: Text("Alapterület"),
                    ),
                    Expanded(
                      child: Text(property.baseAreaFormatted),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 32,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete, color: Color(0xff003767))),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications,
                        color: Color(0xff003767))),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit, color: Color(0xff003767))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
