// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class WordListView extends StatefulWidget {
  const WordListView({super.key});

  @override
  State<WordListView> createState() => _WordListViewState();
}

class _WordListViewState extends State<WordListView> {
  List<Map<String, dynamic>> _allWords = [
    {
      "id": 1,
      "word": 'Apple',
      "description":
          'a round fruit with a red, green, or yellow skin and a crisp texture.'
    },
    {
      "id": 2,
      "word": 'Airplane',
      "description":
          'a powered flying vehicle with fixed wings and a weight greater than that of the air it displaces.'
    },
    {
      "id": 3,
      "word": 'Adventure',
      "description":
          'an exciting or daring experience, often involving unknown risks and challenges.'
    },
    {
      "id": 4,
      "word": 'Animal',
      "description":
          'A living organism that feeds on organic matter, typically having specialized sense organs and the ability to move.'
    },
    {
      "id": 5,
      "word": 'Antarctica',
      "description":
          'the southernmost continent, located largely within the Antarctic Circle and characterized by extreme cold temperatures.'
    },
    {
      "id": 6,
      "word": 'Banana',
      "description": 'a long, curved fruit with a yellow skin and soft flesh.'
    },
    {
      "id": 7,
      "word": 'Bicycle',
      "description":
          'a vehicle with two wheels, powered by pedals and typically propelled by human effort.'
    },
    {
      "id": 8,
      "word": 'Butterfly',
      "description":
          'an insect with large, often colorful wings that undergoes metamorphosis from a caterpillar to an adult.'
    },
    {
      "id": 9,
      "word": 'Beach',
      "description":
          'a sandy or pebbly shore by the ocean, sea, lake, or river, often associated with recreational activities and relaxation.'
    },
    {
      "id": 10,
      "word": 'Book',
      "description":
          'a written or printed work consisting of pages bound together, typically containing stories, information, or ideas.'
    },
    {
      "id": 11,
      "word": 'Cat',
      "description":
          'a small, carnivorous mammal commonly kept as a pet, known for its independent nature and agility.'
    },
    {
      "id": 12,
      "word": 'Chocolate',
      "description":
          'a sweet food made from roasted and ground cacao seeds, typically brown in color and often used in desserts and confectionery.'
    },
    {
      "id": 13,
      "word": 'Computer',
      "description":
          'an electronic device capable of storing, processing, and retrieving data, commonly used for various tasks such as communication, calculation, and entertainment.'
    },
    {
      "id": 14,
      "word": 'Courage',
      "description":
          'the ability to face and overcome fear, danger, or difficulty; bravery.'
    },
    {
      "id": 15,
      "word": 'Cloud',
      "description":
          'a visible mass of condensed water droplets or ice crystals suspended in the atmosphere, typically high above the ground.'
    },
    {
      "id": 16,
      "word": 'Dog',
      "description":
          'a domesticated carnivorous mammal commonly kept as a pet or working animal, known for its loyalty and companionship.'
    },
    {
      "id": 17,
      "word": 'Dance',
      "description":
          'a rhythmic movement of the body, typically accompanied by music, often performed as an expression of art, celebration, or social interaction.'
    },
    {
      "id": 18,
      "word": 'Diamond',
      "description":
          'a precious gemstone composed of carbon, known for its exceptional hardness and brilliance, often used in jewelry.'
    },
    {
      "id": 19,
      "word": 'Democracy',
      "description":
          'a system of government in which power is vested in the people, who exercise it through elected representatives or directly.'
    },
    {
      "id": 20,
      "word": 'Drama',
      "description":
          'a genre of literature, theater, or film involving conflict and emotion, often characterized by intense storytelling and compelling performances.'
    },
    {
      "id": 21,
      "word": 'Elephant',
      "description":
          'a large, herbivorous mammal with a long trunk, large ears, and tusks, native to Africa and Asia.'
    },
    {
      "id": 22,
      "word": 'Earth',
      "description":
          'the third planet from the sun and the only known celestial body to support life, characterized by its diverse ecosystems and abundant water.'
    },
    {
      "id": 23,
      "word": 'Energetic',
      "description": 'having or showing enthusiasm, liveliness, or vigor.'
    },
    {
      "id": 24,
      "word": 'Envelope',
      "description":
          'a flat, usually rectangular paper container used for enclosing a letter or document.'
    },
    {
      "id": 25,
      "word": 'Education',
      "description":
          'the process of acquiring knowledge, skills, values, or attitudes through instruction, study, or practical experience.'
    },
    {
      "id": 26,
      "word": 'Fish',
      "description":
          'a cold-blooded aquatic animal with gills, typically having fins and a streamlined body, adapted for living in water.'
    },
    {
      "id": 27,
      "word": 'Forest',
      "description":
          'a large area covered predominantly with trees and undergrowth, creating a habitat for various wildlife.'
    },
    {
      "id": 28,
      "word": 'Friendship',
      "description":
          'a close and mutually trusting relationship between two or more people, characterized by affection, support, and loyalty.'
    },
    {
      "id": 29,
      "word": 'Flower',
      "description":
          'the reproductive structure of plants, typically colorful and fragrant, responsible for seed production.'
    },
    {
      "id": 30,
      "word": 'Food',
      "description":
          'any nutritious substance that is consumed to provide energy, sustain growth, and maintain health.'
    },
    {
      "id": 31,
      "word": 'Guitar',
      "description":
          'a stringed musical instrument with a flat-backed, waisted body and a fretted neck, typically played by strumming or plucking the strings.'
    },
    {
      "id": 32,
      "word": 'Garden',
      "description":
          'a piece of land cultivated for growing flowers, plants, or vegetables, often used for aesthetic or recreational purposes.'
    },
    {
      "id": 33,
      "word": 'Globe',
      "description":
          'a spherical representation of the Earth or celestial bodies, typically used for geographical or educational purposes.'
    },
    {
      "id": 34,
      "word": 'Gratitude',
      "description":
          'the quality of being thankful or appreciative, often expressed towards someone for their kindness or assistance.'
    },
    {
      "id": 35,
      "word": 'Gravity',
      "description":
          'the force that attracts objects toward the center of the Earth or other physical bodies, proportional to their mass.'
    },
    {
      "id": 36,
      "word": 'Horse',
      "description":
          'a large, hoofed mammal with a long mane and tail, often domesticated for riding, racing, or working purposes.'
    },
    {
      "id": 37,
      "word": 'Happiness',
      "description":
          'a state of joy, contentment, or pleasure, often derived from positive experiences, relationships, or personal fulfillment.'
    },
    {
      "id": 38,
      "word": 'Hospital',
      "description":
          'a medical institution where patients receive diagnosis, treatment, and care for illnesses, injuries, or medical conditions.'
    },
    {
      "id": 39,
      "word": 'History',
      "description":
          'the study of past events, particularly human achievements, actions, and societal developments, often recorded and interpreted through various sources.'
    },
    {
      "id": 40,
      "word": 'Hurricane',
      "description":
          'a powerful, rotating storm characterized by strong winds and heavy rainfall, typically forming over warm ocean waters.'
    },
    {
      "id": 41,
      "word": 'Internet',
      "description":
          'a global computer network that enables communication and information sharing among individuals, organizations, and devices worldwide.'
    },
    {
      "id": 42,
      "word": 'Ice cream',
      "description":
          'a frozen dessert made from dairy products, sweeteners, and various flavors, often enjoyed in scoops or cones.'
    },
    {
      "id": 43,
      "word": 'Island',
      "description":
          'a piece of land surrounded by water, smaller than a continent, often characterized by its isolation and distinct ecosystem.'
    },
    {
      "id": 44,
      "word": 'Innovation',
      "description":
          'the introduction of new ideas, methods, or technologies, often leading to advancements, improvements, or creative solutions.'
    },
    {
      "id": 45,
      "word": 'Imagination',
      "description":
          'the faculty or ability to form mental images, ideas, or concepts that are not present to the senses, often associated with creativity and originality.'
    },
    {
      "id": 46,
      "word": 'Jaguar',
      "description":
          'a large, carnivorous feline species native to the Americas, known for its powerful build and distinctive coat pattern.'
    },
    {
      "id": 47,
      "word": 'Jellyfish',
      "description":
          'a translucent, gelatinous sea creature with tentacles and a bell-shaped body, typically found in marine environments.'
    },
    {
      "id": 48,
      "word": 'Jazz',
      "description":
          'a genre of music characterized by improvisation, syncopation, and distinctive rhythms, originating from African American communities.'
    },
    {
      "id": 49,
      "word": 'Justice',
      "description":
          'the fair and impartial treatment of individuals, guided by principles of morality, equality, and the rule of law.'
    },
    {
      "id": 50,
      "word": 'Journey',
      "description":
          'a travel or expedition from one place to another, often involving a significant distance or a meaningful experience.'
    },
    {
      "id": 51,
      "word": 'Kangaroo',
      "description":
          'a large marsupial native to Australia, known for its powerful hind legs and tail, and its ability to hop.'
    },
    {
      "id": 52,
      "word": 'Keyboard',
      "description":
          'a set of keys or buttons used to input data or commands into a computer, typewriter, or musical instrument.'
    },
    {
      "id": 53,
      "word": 'Kindness',
      "description":
          'the quality of being friendly, generous, and considerate towards others, often shown through acts of compassion and empathy.'
    },
    {
      "id": 54,
      "word": 'Kingdom',
      "description":
          'a form of government or a realm ruled by a monarch, or a category used in biological classification.'
    },
    {
      "id": 55,
      "word": 'Knowledge',
      "description":
          'information, understanding, or awareness gained through experience, learning, or study.'
    },
    {
      "id": 56,
      "word": 'Lion',
      "description":
          'a large, carnivorous feline species, often referred to as the "king of the jungle," known for its majestic appearance and strength.'
    },
    {
      "id": 57,
      "word": 'Love',
      "description":
          'a deep affection, attachment, or care towards someone or something, often associated with strong emotions and positive feelings.'
    },
    {
      "id": 58,
      "word": 'Language',
      "description":
          'a system of communication consisting of words, gestures, and rules, used by humans to express thoughts, ideas, and emotions.'
    },
    {
      "id": 59,
      "word": 'Lightning',
      "description":
          'a sudden and powerful electrical discharge accompanied by a flash of light and thunder, typically occurring during a storm.'
    },
    {
      "id": 60,
      "word": 'Landscape',
      "description":
          'the visible features, such as mountains, rivers, and vegetation, of an area of land, often appreciated for its beauty or portrayed in art.'
    },
    {
      "id": 61,
      "word": 'Moon',
      "description":
          'the natural satellite of the Earth, which orbits around it and reflects light from the Sun, appearing as a shining object in the night sky.'
    },
    {
      "id": 62,
      "word": 'Music',
      "description":
          'a form of artistic expression that combines sounds, rhythms, and melodies to create an aesthetic and emotional experience.'
    },
    {
      "id": 63,
      "word": 'Mountain',
      "description":
          'a large natural elevation of the Earth\'s surface, typically with steep sides and a peak, often associated with scenic beauty and outdoor recreation.'
    },
    {
      "id": 64,
      "word": 'Mind',
      "description":
          'the faculty of consciousness and thought, encompassing perception, cognition, emotion, and memory.'
    },
    {
      "id": 65,
      "word": 'Movie',
      "description":
          'a form of entertainment consisting of a series of moving images, often accompanied by sound, that tells a story or portrays a specific concept or event.'
    },
    {
      "id": 66,
      "word": 'Nature',
      "description":
          'the physical world and its phenomena, including plants, animals, landscapes, and natural processes, often considered separate from human civilization.'
    },
    {
      "id": 67,
      "word": 'Night',
      "description":
          'the period of darkness that occurs between sunset and sunrise, characterized by the absence of sunlight.'
    },
    {
      "id": 68,
      "word": 'Novel',
      "description":
          'a long fictional narrative, typically in prose form, that tells a story and explores characters, settings, and themes in detail.'
    },
    {
      "id": 69,
      "word": 'Nutrition',
      "description":
          'the process of obtaining and consuming food for growth, metabolism, and overall health, as well as the study of nutrients and their effects on the body.'
    },
    {
      "id": 70,
      "word": 'Newspaper',
      "description":
          'a printed publication that provides news, articles, and information about current events, politics, sports, and various topics of interest.'
    },
    {
      "id": 71,
      "word": 'Ocean',
      "description":
          'a vast body of saltwater that covers a significant portion of the Earth\'s surface, consisting of interconnected seas and supporting diverse marine life.'
    },
    {
      "id": 72,
      "word": 'Orange',
      "description":
          'a citrus fruit with a bright, orange-colored rind and pulpy interior, known for its sweet and tangy taste.'
    },
    {
      "id": 73,
      "word": 'Oxygen',
      "description":
          'a chemical element and essential component of the Earth\'s atmosphere, necessary for respiration and combustion.'
    },
    {
      "id": 74,
      "word": 'Opportunity',
      "description":
          'a favorable or advantageous circumstance or chance for progress, success, or achievement.'
    },
    {
      "id": 75,
      "word": 'Orchestra',
      "description":
          'a large ensemble of musicians playing various instruments, typically including strings, woodwinds, brass, and percussion, performing symphonic or classical music.'
    },
    {
      "id": 76,
      "word": 'Penguin',
      "description":
          'a flightless bird species found in the Southern Hemisphere, known for its distinctive black and white plumage and its ability to swim.'
    },
    {
      "id": 77,
      "word": 'Pizza',
      "description":
          'a savory dish consisting of a round, flat bread base topped with tomato sauce, cheese, and various toppings, often baked in an oven.'
    },
    {
      "id": 78,
      "word": 'Photography',
      "description":
          'the art, practice, or profession of capturing and producing images using a camera or other photographic equipment.'
    },
    {
      "id": 79,
      "word": 'Peace',
      "description":
          'a state of harmony, tranquility, and absence of conflict or violence, often sought after for the well-being and stability of individuals and societies.'
    },
    {
      "id": 80,
      "word": 'Planet',
      "description":
          'a celestial body that orbits around a star, typically larger than a moon but smaller than a star, with some planets hosting life.'
    },
    {
      "id": 81,
      "word": 'Queen',
      "description":
          'a female ruler who holds the highest position of power in a monarchy, often inheriting the title or marrying into the royal family.'
    },
    {
      "id": 82,
      "word": 'Quiet',
      "description":
          ' the absence of noise or disturbance, characterized by a calm and peaceful atmosphere or a low volume of sound.'
    },
    {
      "id": 83,
      "word": 'Quick',
      "description":
          'characterized by speed or rapidity, often indicating a fast or swift action or response.'
    },
    {
      "id": 84,
      "word": 'Quality',
      "description":
          'the standard or degree of excellence or superiority of something, often used to describe the characteristics or attributes of a product or service.'
    },
    {
      "id": 85,
      "word": 'Quotation',
      "description":
          'a passage or phrase taken from a text or speech and repeated or cited by someone else, often used to support or illustrate a point.'
    },
    {
      "id": 86,
      "word": 'Rainbow',
      "description":
          'a meteorological phenomenon characterized by a spectrum of colors appearing in the sky after rainfall, caused by the reflection, refraction, and dispersion of sunlight in water droplets.'
    },
    {
      "id": 87,
      "word": 'Robot',
      "description":
          'a machine or mechanical device designed to carry out tasks automatically or with some level of autonomy, often programmed to perform specific functions.'
    },
    {
      "id": 88,
      "word": 'Rainforest',
      "description":
          'a dense forest ecosystem characterized by high amounts of rainfall and a diverse range of plant and animal species, typically found in tropical regions.'
    },
    {
      "id": 89,
      "word": 'Resilience',
      "description":
          'the ability to recover, adapt, or bounce back from adversity, challenges, or difficult circumstances, often associated with strength and perseverance.'
    },
    {
      "id": 90,
      "word": 'Romance',
      "description":
          'a genre of literature, film, or art that focuses on romantic love, passion, and emotional relationships, often involving idealized or fantastical elements.'
    },
    {
      "id": 91,
      "word": 'Sunshine',
      "description":
          'the direct or indirect light and warmth from the Sun, often associated with pleasant weather and a sense of positivity.'
    },
    {
      "id": 92,
      "word": 'Soccer',
      "description":
          'a team sport played with a round ball, where two teams try to score goals by kicking the ball into the opposing team\'s net, also known as football in many parts of the world.'
    },
    {
      "id": 93,
      "word": 'Symphony',
      "description":
          'a long musical composition typically divided into multiple movements and performed by an orchestra, often involving various instruments and complex harmonies.'
    },
    {
      "id": 94,
      "word": 'Science',
      "description":
          'a systematic and organized study of the natural world, including the observation, experimentation, and explanation of phenomena through empirical evidence and logical reasoning.'
    },
    {
      "id": 95,
      "word": 'Serenity',
      "description":
          'a state of calmness, tranquility, and peace, often associated with a sense of inner harmony and contentment.'
    },
    {
      "id": 96,
      "word": 'Tiger',
      "description":
          'a large, carnivorous feline species known for its distinctive orange coat with black stripes, found primarily in parts of Asia.'
    },
    {
      "id": 97,
      "word": 'Tree',
      "description":
          'a tall, perennial plant with a trunk and branches, typically made of wood, which bears leaves and often produces fruits or flowers.'
    },
    {
      "id": 98,
      "word": 'Time',
      "description":
          'a measurable period during which events occur in a sequence, often used to track the progression of events and measure durations.'
    },
    {
      "id": 99,
      "word": 'Technology',
      "description":
          'the application of scientific knowledge, skills, and tools to create, modify, and utilize systems, products, or processes for practical purposes.'
    },
    {
      "id": 100,
      "word": 'Travel',
      "description":
          'the act of moving from one place to another, often for the purpose of exploration, tourism, or visiting different locations.'
    },
    {
      "id": 101,
      "word": 'Umbrella',
      "description":
          'a portable device consisting of a collapsible canopy supported by a central rod, used to protect against rain or sunlight.'
    },
    {
      "id": 102,
      "word": 'Universe',
      "description":
          'the totality of all matter, energy, space, and time, including galaxies, stars, planets, and other celestial bodies.'
    },
    {
      "id": 103,
      "word": 'Unicorn',
      "description":
          'a mythical creature often depicted as a horse with a single horn on its forehead, symbolizing grace, purity, and magic.'
    },
    {
      "id": 104,
      "word": 'Unity',
      "description":
          'the state of being united or joined together, often referring to a sense of harmony, cooperation, and togetherness.'
    },
    {
      "id": 105,
      "word": 'University',
      "description":
          'an institution of higher education that offers undergraduate and postgraduate degrees in various fields of study and research.'
    },
    {
      "id": 106,
      "word": 'Vacation',
      "description":
          'a period of time during which a person takes a break from work or daily routine to relax, travel, or engage in leisure activities.'
    },
    {
      "id": 107,
      "word": 'Victory',
      "description":
          'a state of winning or triumphing over an opponent or a difficult challenge, often associated with a sense of accomplishment and success.'
    },
    {
      "id": 108,
      "word": 'Volunteer',
      "description":
          'a person who offers their time, skills, or services willingly and without payment for a particular cause, organization, or community.'
    },
    {
      "id": 109,
      "word": 'Velocity',
      "description":
          'the rate at which an object changes its position in a particular direction, often measured as the distance traveled per unit of time.'
    },
    {
      "id": 110,
      "word": 'Vibrant',
      "description":
          'full of energy, brightness, and vitality, often describing something that is vivid, dynamic, or highly stimulating.'
    },
    {
      "id": 111,
      "word": 'Water',
      "description":
          'a transparent, odorless, and tasteless liquid that is essential for the survival of all known forms of life, covering a significant portion of the Earth\'s surface.'
    },
    {
      "id": 112,
      "word": 'World',
      "description":
          'the planet Earth and all life and phenomena on it, often used to refer to the entirety of human civilization and the global community.'
    },
    {
      "id": 113,
      "word": 'Wisdom',
      "description":
          'the ability to apply knowledge, experience, and good judgment to make sound decisions and choices, often associated with deep understanding and insight.'
    },
    {
      "id": 114,
      "word": 'Wildlife',
      "description":
          'animals and plants that live and grow in natural environments, often referring to species that are not domesticated or cultivated by humans.'
    },
    {
      "id": 115,
      "word": 'Winter',
      "description":
          'the coldest season of the year, characterized by low temperatures, shorter days, and often the presence of snow, ice, and frost.'
    },
    {
      "id": 116,
      "word": 'Xenophobia',
      "description":
          'an intense or irrational dislike or fear of people from other countries or cultures.'
    },
    {
      "id": 117,
      "word": 'X-ray',
      "description":
          'a form of electromagnetic radiation that can penetrate materials and is used in various fields for imaging and diagnostic purposes.'
    },
    {
      "id": 118,
      "word": 'Xylophone',
      "description":
          'a musical instrument consisting of a series of wooden bars of different lengths that are struck with mallets to produce musical tones.'
    },
    {
      "id": 119,
      "word": 'Xerophyte',
      "description":
          'a plant species that is adapted to survive in dry or arid conditions, often characterized by specialized structures to conserve water.'
    },
    {
      "id": 120,
      "word": 'Xenon',
      "description":
          'a chemical element that is a noble gas, often used in various applications such as lighting, lasers, and medical imaging.'
    },
    {
      "id": 121,
      "word": 'Yellow',
      "description":
          'a color resembling that of ripe lemons or egg yolks, often associated with brightness, cheerfulness, and optimism.'
    },
    {
      "id": 122,
      "word": 'Yoga',
      "description":
          'a physical, mental, and spiritual practice originating in ancient India, involving various postures, breathing exercises, and meditation for relaxation and overall well-being.'
    },
    {
      "id": 123,
      "word": 'Youth',
      "description":
          'the period of life between childhood and adulthood, typically associated with energy, enthusiasm, and a sense of growth and development.'
    },
    {
      "id": 124,
      "word": 'Yearning',
      "description":
          'a strong feeling of longing or desire for something or someone, often accompanied by an emotional or heartfelt longing.'
    },
    {
      "id": 125,
      "word": 'Yacht',
      "description":
          'a recreational boat or vessel used for leisure activities or racing, often associated with luxury and enjoyment on the water.'
    },
    {
      "id": 126,
      "word": 'Zebra',
      "description":
          'a large, wild animal native to Africa, characterized by its black and white stripes on its body.'
    },
    {
      "id": 127,
      "word": 'Zenith',
      "description":
          'the highest point or peak, often used metaphorically to refer to the culmination or apex of something.'
    },
    {
      "id": 128,
      "word": 'Zigzag',
      "description":
          'a pattern or path characterized by sharp angles or abrupt changes in direction, often resembling a series of connected \'Z\' shapes.'
    },
    {
      "id": 129,
      "word": 'Zucchini',
      "description":
          'a type of summer squash that is typically green and elongated, often used as a vegetable in cooking.'
    },
    {
      "id": 130,
      "word": 'Zudiac',
      "description":
          'a belt or band of the celestial sphere divided into twelve equal parts or signs, each named after a constellation, used in astrology.'
    },
  ];

  List<Map<String, dynamic>> _foundWords = [];
  @override
  void initState() {
    _foundWords = _allWords;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allWords;
    } else {
      results = _allWords
          .where((word) =>
              word['word'].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundWords = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => _runFilter(value),
                decoration: InputDecoration(
                  labelText: 'Search',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _foundWords.length,
                  itemBuilder: (context, index) => Card(
                    key: ValueKey(_foundWords[index]["id"]),
                    color: Colors.grey,
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Text(
                        _foundWords[index]["id"].toString(),
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      title: Text(
                        _foundWords[index]["word"],
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        _foundWords[index]["description"].toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
