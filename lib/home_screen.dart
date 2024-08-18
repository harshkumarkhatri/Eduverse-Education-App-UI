import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 28,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Recommended ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "courses",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff525fe1),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildTopCard(
                          reviewCount: 39,
                          context: context,
                          courseName: "Junior Scholars Institute",
                          educatorName: "Jos Brown",
                          price: 24,
                          starCount: 4),
                      const SizedBox(
                        width: 12,
                      ),
                      _buildTopCard(
                          reviewCount: 1454,
                          context: context,
                          courseName:
                              "Junior Scholars Institute is a very long name to test the ",
                          educatorName: "Jos Brown",
                          price: 24,
                          starCount: 4)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Top ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "trending",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff525fe1),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildTopCard(
                          reviewCount: 39,
                          context: context,
                          courseName: "Junior Scholars Institute",
                          educatorName: "Jos Brown",
                          price: 24,
                          starCount: 4),
                      const SizedBox(
                        width: 12,
                      ),
                      _buildTopCard(
                          reviewCount: 1454,
                          context: context,
                          courseName:
                              "Junior Scholars Institute is a very long name to test the ",
                          educatorName: "Jos Brown",
                          price: 24,
                          starCount: 4)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Our ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "top picks ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff525fe1),
                        ),
                      ),
                      TextSpan(
                        text: "for you",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 16);
                  },
                  itemBuilder: (context, index) {
                    return _buildBottomCard(
                      reviewCount: 39,
                      context: context,
                      courseName: "Junior Scholars Institute",
                      educatorName: "Jos Brown",
                      price: 24,
                      starCount: 4,
                    );
                  },
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopCard({
    required int starCount,
    required String courseName,
    required String educatorName,
    required int price,
    required BuildContext context,
    required int reviewCount,
  }) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 92,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            courseName,
            maxLines: 1,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            educatorName,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.black,
              fontSize: 8,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                starCount.toString(),
                style: const TextStyle(
                  color: Color(
                    0xffFFA41B,
                  ),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star_rounded,
                    color: index < starCount ? Colors.amber : Colors.grey,
                    size: 12,
                  );
                }),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "($reviewCount)",
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Color(
                    0xff3F3F3F,
                  ),
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            "\$$price",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottomCard({
    required int starCount,
    required String courseName,
    required String educatorName,
    required int price,
    required BuildContext context,
    required int reviewCount,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 128,
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            courseName,
            maxLines: 1,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            educatorName,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.black,
              fontSize: 8,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                starCount.toString(),
                style: const TextStyle(
                  color: Color(
                    0xffFFA41B,
                  ),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star_rounded,
                    color: index < starCount ? Colors.amber : Colors.grey,
                    size: 12,
                  );
                }),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "($reviewCount)",
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Color(
                    0xff3F3F3F,
                  ),
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            "\$$price",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
