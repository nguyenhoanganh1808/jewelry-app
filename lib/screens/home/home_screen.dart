import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> gridMap = [
      {
        "title": "white sneaker with adidas logo",
        "price": "\$255",
        "images":
            "https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=725&q=80",
      },
      {
        "title": "Black Jeans with blue stripes",
        "price": "\$245",
        "images":
            "https://images.unsplash.com/photo-1541099649105-f69ad21f3246?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      },
      {
        "title": "Red shoes with black stripes",
        "price": "\$155",
        "images":
            "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      },
      {
        "title": "Gamma shoes with beta brand.",
        "price": "\$275",
        "images":
            "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      },
      {
        "title": "Alpha t-shirt for alpha testers.",
        "price": "\$25",
        "images":
            "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      },
      {
        "title": "Beta jeans for beta testers",
        "price": "\$27",
        "images":
            "https://images.unsplash.com/photo-1602293589930-45aad59ba3ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      },
      {
        "title": "V&V  model white t shirts.",
        "price": "\$55",
        "images":
            "https://images.unsplash.com/photo-1554568218-0f1715e72254?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('E V R Y'),
        centerTitle: true,
        actions: const [
          Icon(Icons.shopping_cart_outlined),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'ONE YEAR WARRANTY ON ALL ITEMS',
                    style: Theme.of(context).textTheme.titleMedium!,
                    textAlign: TextAlign.right,
                  ),
                  const Icon(
                    Icons.navigate_next,
                  )
                ],
              ),
            ),
            const SearchBarWidget(),
            SizedBox(
              height: 155,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(16),
                    constraints: const BoxConstraints(maxWidth: 80),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.red,
                          minRadius: 40,
                        ),
                        Text(
                          index == 1 ? 'Best Sellers' : 'Trending On Tiktok',
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: GestureDetector(
                onTap: () {}, // Image tapped
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQDGQ55_znshhGDlxv5sDZz96tD3hxPc5j8CVWMKvJcw&s',
                  fit: BoxFit.cover, // Fixes border issues
                  // width: 110.0,
                  height: 110.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('SHOP BEST SELLERS'),
                Row(
                  children: [Text('View All'), Icon(Icons.navigate_next)],
                )
              ],
            ),
            //product grid view
            GridView.builder(
              primary: false,
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                // mainAxisExtent: 320,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16.0,
                    ),
                    color: Colors.grey.withOpacity(0.1),
                    // color: Colors.amberAccent.shade100,
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                        child: Image.network(
                          "${gridMap.elementAt(index)['images']}",
                          height: 170,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${gridMap.elementAt(index)['title']}",
                              style:
                                  Theme.of(context).textTheme.subtitle1!.merge(
                                        const TextStyle(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "${gridMap.elementAt(index)['price']}",
                              style:
                                  Theme.of(context).textTheme.subtitle2!.merge(
                                        TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey.shade500,
                                        ),
                                      ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_shopping_cart_outlined,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
                // return Container(
                //   height: 200,
                //   child: Column(
                //     children: [
                //       Container(
                //         height: 180,
                //         child: Stack(
                //           children: [
                //             Text(
                //               'Double Cross Me Necklace',
                //             ),
                //             Image.network(
                //                 'https://preview.redd.it/i-got-bored-so-i-decided-to-draw-a-random-image-on-the-v0-4ig97vv85vjb1.png?width=640&crop=smart&auto=webp&s=22ed6cc79cba3013b84967f32726d087e539b699'),
                //             Positioned(
                //               child: Icon(Icons.favorite, size: 30),
                //               top: 12,
                //               left: 12,
                //             ),
                //           ],
                //         ),
                //       ),
                //       Container(
                //         child: Text('hihi'),
                //       )
                //     ],
                //   ),
                // );
              },
            )
          ],
        ),
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          constraints: const BoxConstraints(minHeight: 45),
          surfaceTintColor: const MaterialStatePropertyAll(Colors.white),
          controller: controller,
          elevation: MaterialStateProperty.all(3),
          hintText: 'Search',
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                40.0,
              ), // Adjust the radius as needed
            ),
          ),
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0)),
          onTap: () {
            controller.openView();
          },
          onChanged: (_) {
            controller.openView();
          },
        );
      }, suggestionsBuilder:
              (BuildContext context, SearchController controller) {
        return List<ListTile>.generate(5, (int index) {
          final String item = 'item $index';
          return ListTile(
            title: Text(item),
            onTap: () {},
          );
        });
      }),
    );
  }
}
