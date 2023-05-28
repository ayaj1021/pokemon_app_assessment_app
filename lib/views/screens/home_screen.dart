import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_pokemon_app/components/all_pokemon_component.dart';
import 'package:pokedex_pokemon_app/components/favorite_component.dart';
import 'package:pokedex_pokemon_app/providers/tab_selected_font_provider.dart';
import 'package:pokedex_pokemon_app/styles/app_styles.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  TabController? controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tabIsSelected = ref.watch(tabSelectedFont);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'images/pokedex_top_image.png',
          scale: 4,
        ),
      ),
      body: Column(
        children: [
          DefaultTabController(
            length: 2,
            child: TabBar(
                controller: controller,
                labelColor: AppStyles.primaryColor,
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(
                    child: Text('All Pokemons', style: AppStyles.tabBarText),
                  ),
                  Tab(
                    child: Text(
                      'Favorites',
                      style: AppStyles.tabBarText,
                    ),
                  )
                ]),
          ),
          Expanded(
            child: TabBarView(controller: controller, children: [
              AllComponentScreen(),
              const FavoriteComponentScreen()
            ]),
          ),
        ],
      ),
    );
  }
}
