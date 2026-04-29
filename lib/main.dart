import 'package:flutter/material.dart';
import 'data_type.dart';
import 'data.dart';
import 'background_music.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    BackgroundMusic.ensurePlaying();
    return MaterialApp(
      title: 'Plants vs. Zombies Almanac',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2E7D32)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const AlmanacHomePage(),
    );
  }
}

class AlmanacHomePage extends StatelessWidget {
  const AlmanacHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFF894522),
        appBar: AppBar(
          title: const Text('Plants vs. Zombies Almanac'),
          actions: [
            TextButton(
              onPressed: BackgroundMusic.toggle,
              child: const Icon(Icons.music_note),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Plants'),
              Tab(text: 'Zombies'),
              Tab(text: 'Strategy'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [PlantListPage(), ZombieListPage(), StrategyIntroPage()],
        ),
      ),
    );
  }
}

class PlantListPage extends StatelessWidget {
  const PlantListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: kPlants.length + 1,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        if (index == 0) {
          return Card(
            child: ListTile(
              title: const Text('Plant Gallery'),
              subtitle: const Text('Browse the full grid collection.'),
              trailing: const Icon(Icons.grid_view),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const PlantGalleryPage()),
                );
              },
            ),
          );
        }
        final plant = kPlants[index - 1];
        return PlantTile(plant: plant);
      },
    );
  }
}

class ZombieListPage extends StatelessWidget {
  const ZombieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: kZombies.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Card(
              child: ListTile(
                title: const Text('Zombie Gallery'),
                subtitle: const Text('Preview threats in a grid view.'),
                trailing: const Icon(Icons.view_module),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ZombieGalleryPage(),
                    ),
                  );
                },
              ),
            ),
          );
        }
        final zombie = kZombies[index - 1];
        return ZombieTile(zombie: zombie);
      },
    );
  }
}

class StrategyIntroPage extends StatelessWidget {
  const StrategyIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: kStrategies.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final tip = kStrategies[index];
        return StrategyTile(tip: tip);
      },
    );
  }
}

class PlantTile extends StatelessWidget {
  final Plant plant;

  const PlantTile({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFC_C6_88),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => PlantDetailPage(plant: plant)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  plant.imageUrl,
                  width: 72,
                  height: 72,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      plant.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(plant.role),
                    const SizedBox(height: 4),
                    Text(
                      plant.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ZombieTile extends StatelessWidget {
  final Zombie zombie;

  const ZombieTile({super.key, required this.zombie});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFC_C6_88),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => ZombieDetailPage(zombie: zombie)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  zombie.imageUrl,
                  width: 72,
                  height: 72,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      zombie.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text('Threat: ${zombie.threat}'),
                    const SizedBox(height: 4),
                    Text(
                      zombie.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StrategyTile extends StatelessWidget {
  final StrategyTip tip;

  const StrategyTile({super.key, required this.tip});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tip.title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 4),
            Text(tip.summary),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => StrategyDetailPage(tip: tip),
                    ),
                  );
                },
                child: const Text('Open'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlantGalleryPage extends StatelessWidget {
  const PlantGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF894522),
      appBar: AppBar(title: const Text('Plant Gallery')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.85,
        ),
        itemCount: kPlants.length,
        itemBuilder: (context, index) {
          final plant = kPlants[index];
          return Card(
            color: const Color(0xFFFC_C6_88),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => PlantDetailPage(plant: plant),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.network(plant.imageUrl, fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      plant.name,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ZombieGalleryPage extends StatelessWidget {
  const ZombieGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF894522),
      appBar: AppBar(title: const Text('Zombie Gallery')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.85,
        ),
        itemCount: kZombies.length,
        itemBuilder: (context, index) {
          final zombie = kZombies[index];
          return Card(
            color: const Color(0xFFFC_C6_88),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ZombieDetailPage(zombie: zombie),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.network(zombie.imageUrl, fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      zombie.name,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlantDetailPage extends StatelessWidget {
  final Plant plant;

  const PlantDetailPage({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFC_C6_88),
      appBar: AppBar(title: Text(plant.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(plant.gifURL, height: 220, fit: BoxFit.cover),
          ),
          const SizedBox(height: 16),
          Text(plant.role, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text(plant.description),
        ],
      ),
    );
  }
}

class ZombieDetailPage extends StatelessWidget {
  final Zombie zombie;

  const ZombieDetailPage({super.key, required this.zombie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFC_C6_88),
      appBar: AppBar(title: Text(zombie.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(zombie.gifURL, height: 220, fit: BoxFit.cover),
          ),
          const SizedBox(height: 16),
          Text(
            'Threat: ${zombie.threat}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(zombie.description),
        ],
      ),
    );
  }
}

class StrategyDetailPage extends StatelessWidget {
  final StrategyTip tip;

  const StrategyDetailPage({super.key, required this.tip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFC_C6_88),
      appBar: AppBar(title: Text(tip.title)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(tip.imageUrl, height: 220, fit: BoxFit.cover),
          ),
          const SizedBox(height: 16),
          Text(tip.summary, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text(tip.description),
        ],
      ),
    );
  }
}
