import 'package:custom/widgets/custom_row.dart';
import 'package:custom/widgets/divider.dart';
import 'package:custom/widgets/text.dart';
import 'package:flutter/material.dart';

class Sample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Material(
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: MySliverAppBar(expandedHeight: 160),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 160),
                          
                          height: 1000,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeadText(data: 'Features'),
                             const SizedBox(height: 20,),
                             const PremiumRow(icon: Icons.language, one: 'Custom domain name', two: 'Get your own domain and build \nyour brand on internet'),
                            const SizedBox(height: 20,),
                             const PremiumRow(icon: Icons.verified, one: 'Verified Seller badge', two: 'Get your own domain and build \nyour brand on internet'),
                            const SizedBox(height: 20,),
                             const PremiumRow(icon: Icons.laptop, one: 'Dukaan for PC', two: 'Get your own domain and build \nyour brand on internet'),
                             const SizedBox(height: 20,),
                             const PremiumRow(icon: Icons.mic, one: 'Priority Support', two: 'Get your own domain and build \nyour brand on internet'),
                             const SizedBox(height: 20,),
                             const DividerCustom(),
                             const SizedBox(height: 20,),
                             HeadText(data: 'Frequently asked questions')
                            
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double? expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        // Image.network(
        //   "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        //   fit: BoxFit.cover,
        // ),
        Container(
          color: Colors.blue,
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: const Text(
            "Dukaan Premium",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 28,
            ),
          ),
        ),
        Positioned(
          top: expandedHeight! / 2.6 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 28,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight!),
            child: Card(
              elevation: 10,
              child: SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: SizedBox(
                            width: 180,
                            child: Image.network(
                                'https://mydukaan.io/blog/wp-content/uploads/2021/04/dukaan_blog.png')),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      HeadText(data: 'Get Dukaan For Just'),
                      const SizedBox(
                        height: 8,
                      ),
                      HeadText(data: '₹4,999/year'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'All the advanced features for\nscaling your buisness',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      )
                      // ContentText(data: 'All the advanced features for\nscaling your')
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight!;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}