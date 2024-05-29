import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modernui/shared/common_widget.dart';
import '../../shared/assets.dart';
import '../../shared/colors.dart';
import 'detailed_screen.dart';

class HomeScreenPage extends StatelessWidget {
  HomeScreenPage({super.key});

  List<String> imageOfList = [
    AppAssets.first_book,
    AppAssets.second_book,
    AppAssets.third_book
  ];

  List<String> headlineOfList = [
    'Gita',
    'Discovery Of India',
    'THE BLUE UMBRELLA'
  ];

  List<String> subtitlelineOfList = [
    'Roopa Pai',
    'Nehru Jawaharlal',
    'Ruskin Bond',
  ];

  List<String> discriptionLineOfList = [
    "The Bhagavad Gita is set in a narrative framework of dialogue between the Pandava prince Arjuna and his charioteer guide Krishna, an avatar of Vishnu. At the start of the Kurukshetra War between the Pandavas and the Kauravas, Arjuna despairs thinking about the violence and death the war will cause in the battle against his kin and becomes emotionally preoccupied with a dilemma.[9] Wondering if he should renounce the war, Arjuna seeks the counsel of Krishna, whose answers and discourse constitute the Bhagavad Gita. Krishna counsels Arjuna to \"fulfil his Kshatriya (warrior) duty\" for the upholding of dharma.[10] The Krishna–Arjuna dialogue covers a broad range of spiritual topics, touching upon moral and ethical dilemmas, and philosophical issues that go far beyond the war that Arjuna faces.[1][11][12] The setting of the text in a battlefield has been interpreted as an allegory for the struggles of human life.Summarizing the Upanishadic conceptions of God, the Gita posits the existence of an individual self (Atman) and the supreme self (Brahman) within each being.[note 1] The dialogue between the prince and his charioteer has been interpreted as a metaphor for an immortal dialogue between the human self and God.[note 2] Commentators of Vedanta read varying notions in the Bhagavad Gita about the relationship between the Atman (individual Self) and Brahman (supreme Self); Advaita Vedanta affirms on the non-dualism of Atman and Brahman,[13] Vishishtadvaita asserts qualified non-dualism with Atman and Brahman being related but different in certain aspects, while Dvaita Vedanta declares the complete duality of Atman and Brahman.The Bhagavad Gita is one of the most revered Hindu scriptures,[3] and per Hindu mythology, it was written by the god Ganesha, as told to him by the sage Veda Vyasa. It forms the chapters 23–40 of book 6 of the Mahabharata called the Bhishma Parva. The text covers Jñāna, Bhakti, Karma, and Rāja yogas,[6] while incorporating ideas from the Samkhya-Yoga philosophy.[web 1][note 4] The Bhagawad Gita is a central text in the Vaishnava Hindu tradition, and is part of the prasthanatrayi. Numerous commentaries have been written on the Bhagavad Gita with differing views on its essence and essentials. It has been noted that if there is any one text that comes near to embodying the totality of Hindu thought, it is the Bhagavad Gita.",
    "The Discovery of India was written by the Indian freedom fighter Jawaharlal Nehru (later India's first Prime Minister) during his incarceration in 1942–1945 at Ahmednagar Fort in present-day Indian state of Maharashtra by British colonial authorities before the independence of India.[1] The book was written in 1944 but published in 1946. The journey in The Discovery of India begins from ancient history, leading up to the last years of the British Raj. Nehru uses his knowledge of the Upanishads, Vedas, and textbooks on ancient history to introduce to the reader the development of India from the Indus Valley civilization, through the changes in socio-political scenario every foreign invader brought, to the present day conditions. Nehru was jailed for his participation in the Quit India Movement along with other Indian leaders, and he used this time to write down his thoughts and knowledge about India's history. The book provides a broad view of Indian history, philosophy, and culture as viewed from the eyes of an Indian fighting for the independence of his country. He wrote the book during his imprisonment.",
    "In the village of Garhwal, a girl named Binya used to live there. She was living with her widowed mother and her older brother named Biju.In that same village, a man named Ram Bharosa had an old shop that sold Coca-Cola with no ice, tea, curd, or sweets. One day, Binya receives a beautiful blue umbrella from some foreigners in exchange for her leopard claw pendant. Soon, the shopkeeper becomes jealous of the umbrella and tries to buy it from Binya by claiming, \"This is a fancy umbrella which small girls should not have,\" but Binya refuses. As time passes, Ram Bharosa's jealousy of the umbrella turns into an obsession. He employs a boy named Rajaram from the next village to work at the shop. When Rajaram learns of his boss' desire to own the umbrella, he makes an attempt to steal it but fails and is caught. Rajaram then gives up Ram Bharosa's name, causing his shop to be boycotted. Ram Bharosa is now remorseful of his actions and miserable. Binya realizes her showing off the blue umbrella indirectly led to Ram Bharosa's suffering. In the end, Binya willingly gives the umbrella to Ram Bharosa, who in turn gifts her a bear claw pendant. At last, it ends with a happy note when Binya gives it to Ram Bharosa who made it an umbrella which could be borrowed and returned. Thus, everyone in the village used it for their daily purposes.",
  ];

  List<String> nameList = ['Marie Curie', 'Galileo Galilei', 'Ada Lovelace'];

  List<String> userNameList = [
    '@madame_curie',
    '@galileo_star',
    '@lovelace_coder'
  ];

  List<String> authImageList = [
    AppAssets.auth_p1,
    AppAssets.auth_p2,
    AppAssets.auth_p3,
  ];

  List<int> priceOfList = [
    350,
    250,
    650
  ];

  List<String> linkOfList = [
    'https://www.amazon.in/Gita-Children-Roopa-Pai/dp/9351950123/',
    'https://www.amazon.in/Discovery-India-Jawaharlal-Nehru/dp/0143031031/',
    'https://www.amazon.in/Blue-Umbrella-Ruskin-Bond/dp/8171673406/'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(CupertinoIcons.cube_box).animate().scale(
                    duration: 450.ms, curve: Curves.decelerate),
                const Icon(CupertinoIcons.shopping_cart)
                    .animate()
                    .scale(duration: 450.ms, curve: Curves.decelerate)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Opacity(
              opacity: 0.7,
              child: const AutoSizeText(
                'Unleash your creativity for the',
                maxLines: 1,
                style: TextStyle(
                    fontSize: 28,
                    // color: HexColor(AppColor.textColorshade2),
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Oswald'),
              )
                  .animate()
                  .scale(duration: 450.ms, curve: Curves.decelerate),
            ),
            const SizedBox(
              height: 5,
            ),
            const AutoSizeText(
              'World To See',
              maxLines: 1,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Roboto'),
            )
                .animate()
                .scale(duration: 450.ms, curve: Curves.decelerate),
            const SizedBox(
              height: 5,
            ),
            Opacity(
              opacity: 0.5,
              child: const AutoSizeText(
                'Ignite your imagination and share your artistic spark with the world.',
                maxLines: 2,
                style: TextStyle(
                    fontSize: 28,
                    // color: HexColor(AppColor.textColorshade3),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Oswald'),
              )
                  .animate()
                  .scale(duration: 450.ms, curve: Curves.decelerate),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Popular Arts',
                  style: TextStyle(
                      fontSize: 27, fontWeight: FontWeight.w600),
                ).animate().scale(
                    duration: 450.ms, curve: Curves.decelerate),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ).animate().scale(
                      duration: 450.ms, curve: Curves.decelerate),
                )
              ],
            ),
            Expanded(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  aspectRatio: 1 / 1,
                  viewportFraction: 0.7,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  animateToClosest: true,
                ),
                itemCount: 3,
                itemBuilder: (BuildContext context, int itemIndex,
                    int pageViewIndex) =>
                    Expanded(
                      child: MyCard(index: itemIndex),
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget MyCard({required int index}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Get.to(
            ExpandViewListItem(
              image: imageOfList[index],
              heading: headlineOfList[index],
              subtitle: subtitlelineOfList[index],
              discription: discriptionLineOfList[index],
              username: userNameList[index],
              name: nameList[index],
              price: priceOfList[index],
              authImage: authImageList[index],
              link: linkOfList[index],
            ),
          );
        },
        child: Container(
          width: Get.width * 0.7,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: HexColor(AppColor.buttonColor2),
                spreadRadius: 0.1,
                blurRadius: 13,
              ),
            ],
            image: DecorationImage(
              image: AssetImage(imageOfList[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.black.withOpacity(0.8),
                    width: double.infinity,
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            headlineOfList[index],
                            maxLines: 1,
                            style: const TextStyle(
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
                            ),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: AutoSizeText(
                              subtitlelineOfList[index],
                              maxLines: 1,
                              style: const TextStyle(
                                fontFamily: 'Oswald',
                                fontWeight: FontWeight.w800,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CommonWidget.threeFriends(),
                              Material(
                                color: HexColor(AppColor.buttonColor2),
                                elevation: 20.0,
                                shape: const CircleBorder(),
                                child: InkWell(
                                  customBorder: const CircleBorder(),
                                  onTap: () {
                                    print('hata');
                                    CommonWidget.openAmazon(linkOfList[index]);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        6.0), // Adjust this value to change overall button size
                                    child: Icon(
                                      Icons.shopping_bag_rounded,
                                      color: HexColor(AppColor.textColorshade1),
                                      size: 25.0, // Adjust icon size as needed
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ).animate().scaleY(
                    begin: 10,
                    // delay: 150.ms,
                    duration: 1000.ms,
                    curve: Curves.decelerate),
              ],
            ),
          ),
        ).animate().scale(duration: 450.ms, curve: Curves.decelerate),
      ),
    );
  }
}
