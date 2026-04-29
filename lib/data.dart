import 'data_type.dart';

const List<Plant> kPlants = [
  Plant(
    name: 'Sunflower',
    role: 'Sun production',
    description: 'The backbone of every defense. Keep a steady sun income.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/e/e2/Sunflower1.png/revision/latest?cb=20090521221033',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/2/22/Ezgif-7-5ed785be037f.gif/revision/latest?cb=20231202215922',
  ),
  Plant(
    name: 'Peashooter',
    role: 'Ranged damage',
    description: 'Reliable single-lane damage for early waves.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/8/85/Peashooter1.png/revision/latest?cb=20230804102104',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/f/f4/1Peashooter.gif/revision/latest?cb=20120518215405'
  ),
  Plant(
    name: 'Cherry Bomb',
    role: 'Area burst',
    description: 'Emergency clear for clustered lanes.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/0/0d/Cherry_Bomb1.png/revision/latest?cb=20090521215844',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/d/d3/Cherry-Bomb.gif/revision/latest?cb=20110318220216',
  ),
  Plant(
    name: 'Wall-nut',
    role: 'Defense',
    description: 'Buys time for stronger plants to finish the job.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/c/c0/Wall-nut1.png/revision/latest?cb=20090521221605',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/c/c1/4Wall-nut.gif/revision/latest?cb=20121221011048',
  ),
  Plant(
    name: 'Potato Mine',
    role: 'Delayed trap',
    description: 'One-time use that can surprise early zombies.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/f/f2/Potato_Mine1.png/revision/latest?cb=20090521220546',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/6/61/Ezgif-2-c00f1ff54ebf.gif/revision/latest?cb=20201227002821',
  ),

  Plant(
    name: 'Snow Pea',
    role: 'Slow + damage',
    description: 'Chill attackers and control tempo.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/c/cd/Snow_Pea1.png/revision/latest?cb=20090521220859',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/e/e3/Snow-Pea.gif/revision/latest?cb=20160420134640',
  ),
  Plant(
    name: 'Chomper',
    role: 'Melee burst',
    description: 'Devours zombies in a single bite.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/a/a3/Chomper1.png/revision/latest?cb=20090521220057',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/8/89/Rhr5ld_th.gif/revision/latest?cb=20110903004137',
  ),
  Plant(
    name: 'Repeater',
    role: 'Double shot',
    description: 'Doubles damage output for a lane.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/9/9c/Repeater1.png/revision/latest?cb=20090521220801',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/7/7c/Repeater.gif/revision/latest?cb=20190531025229',
  ),
];

const List<Zombie> kZombies = [
  Zombie(
    name: 'Basic Zombie',
    threat: 'Low',
    description: 'A slow shambler that tests your early defenses.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/5/54/Zombie1.png/revision/latest?cb=20230830191507',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/c/cc/Zombie.gif/revision/latest?cb=20100526125141',
  ),
  Zombie(
    name: 'Conehead Zombie',
    threat: 'Medium',
    description: 'The cone offers extra protection. Focus fire.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/c/c2/Conehead_Zombie1.png/revision/latest?cb=20230830191504',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/6/6d/Conehead-Zombie.gif/revision/latest?cb=20101202025331',
  ),
  Zombie(
    name: 'Buckethead Zombie',
    threat: 'High',
    description: 'Tough shell requires sustained damage.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/c/c7/Buckethead_Zombie1.png/revision/latest?cb=20230830190441',
  ),
  Zombie(
    name: 'Pole Vaulting Zombie',
    threat: 'High',
    description: 'Leaps the first plant. Place bait in front.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/f/fe/Pole_Vaulting_Zombie1.png/revision/latest?cb=20230830191502',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/7/7a/Pole-Vaulting-Zombie.gif/revision/latest?cb=20100526125117',
  ),
  Zombie(
    name: 'Newspaper Zombie',
    threat: 'Medium',
    description: 'Floats over defenses. Prepare counters.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/e/eb/Newspaper_Zombie1.png/revision/latest?cb=20230830191501',
  ),
  Zombie(
    name: 'Football Zombie',
    threat: 'High',
    description: 'Rolls through defenses. Focus fire.',
    imageUrl:
        'https://static.wikia.nocookie.net/plantsvszombies/images/8/85/Football_Zombie1.png/revision/latest?cb=20240924104047',
    gifURL:
        'https://static.wikia.nocookie.net/plantsvszombies/images/1/1f/Football-Zombie.gif/revision/latest?cb=20100526124231',
  ),
];

const List<StrategyTip> kStrategies = [
  StrategyTip(
    title: 'Opening Economy',
    summary: 'Stack sun producers early.',
    description:
        'Aim for two full columns of sun producers before mid-game. Protect them with cheap blockers.',
    imageUrl:
        'https://imgs.search.brave.com/K12j_R4eQZRJVV6fKWqDsuOoy98sCL3J_pFVRUrSGis/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuc3RlYW11c2Vy/Y29udGVudC5jb20v/dWdjLzExOTAwMzk0/MTc4MDA1NDI1MjMw/L0MxQUJEMTE5MTNE/N0RENjk2NDEzRDc4/QkI1RjgyMzhDMDkx/QTc0MEMv',
  ),
  StrategyTip(
    title: 'Lane Control',
    summary: 'Balance offense and defense.',
    description:
        'Build steady damage in every lane. Keep a fast clear option ready for surprise waves.',
    imageUrl:
        'https://imgs.search.brave.com/OVSOnFJu9-eZisjGDCzw5hLTDm9lJpW3vBW4KxjbfUk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wcmV2/aWV3LnJlZGQuaXQv/cHZ6LXJlcGxhbnRl/ZC1zdGVhbS1wcmV2/aWV3LXBpY3R1cmVz/LXYwLW5xeDdjdDh2/dzdnZjEuanBnP3dp/ZHRoPTY0MCZjcm9w/PXNtYXJ0JmF1dG89/d2VicCZzPTlmNTFj/ZGFiZWY2MTJkOTM3/MTA3ODhmMzA1NTA5/OGFhNDFjNmMwMGI',
  ),
  StrategyTip(
    title: 'Boss Prep',
    summary: 'Save burst plants.',
    description:
        'Hold powerful area plants for the hardest wave. Timing matters more than stacking.',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_M4HZiJAluGeaoAAyjyQPfFsdao9nG38XQ&s',
  ),
];