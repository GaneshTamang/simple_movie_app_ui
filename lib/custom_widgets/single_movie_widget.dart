import 'package:flutter/material.dart';
import 'package:movie_app_pakhrinsolthi/custom_widgets/navigated_movie_page.dart';

class CustomMovieWidget extends StatelessWidget {
  final String image;

  const CustomMovieWidget({Key? key, required this.image})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MoviePage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 180 * 80,
          width: MediaQuery.of(context).size.width / 180 * 200,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  image,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'movie 1',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star_rate, color: Colors.amber),
                          Icon(
                            Icons.star_border_sharp,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '7.8',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ],
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
