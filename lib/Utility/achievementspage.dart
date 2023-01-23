import 'package:flutter/material.dart';
import 'package:portfolio/Utility/components/logos.dart';
import 'package:portfolio/Utility/components/profiles.dart';

Widget achievementspage(context) {
  final size = MediaQuery.of(context).size;
  return Column(
    children: [
      Card(
        color: Colors.black54,
        elevation: 8,
        shadowColor: Colors.white54,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: SizedBox(
          height: size.height * 0.35,
          width: size.width * 1,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'IICC AIR - 228',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '12th - 13th August, 2022 \n\n#iicc (Innovate India Coding Contest) Grand Finale at CHANDIGARH UNIVERSITY campus representing my college. \n\nOnly 1000 coders out of around 100000 from all over India participated in the finals. \n\nIt was great for me to learn, meet top level coders, make new friends and tour the beautiful campus.',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: size.height * 0.035,
      ),
      const Text(
        'Coding profiles',
        style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
      ),
      profilesfield(context, 'Leetcode:', 'Max rating 1714',
          'https://leetcode.com/sj_15/'),
      SizedBox(
        height: size.height * 0.01,
      ),
      profilesfield(context, 'Codechef:', 'Max rating 2034',
          'https://www.codechef.com/users/sj_15'),
      SizedBox(
        height: size.height * 0.01,
      ),
      profilesfield(context, 'Codeforces:', 'Max rating 1251',
          'https://codeforces.com/profile/15_sourav'),
      SizedBox(
        height: size.height * 0.035,
      ),
      logofield(),
    ],
  );
}
