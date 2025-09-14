import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Icon(Icons.menu, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SliverToBoxAdapter(
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Container(
                      height: size.height * 0.1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
