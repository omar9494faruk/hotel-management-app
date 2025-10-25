import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelAppUi extends StatelessWidget {
  const HotelAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: GoogleFonts.roboto(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Bali, Indonesia",
              style: GoogleFonts.openSans(
                color: Color(0xFF007EF2),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    "Images/bell_icon.png",
                    width: 19,
                    height: 19,
                  ),
                ),
                Container(child: Image.asset("Images/bell_ellipse.png")),
              ],
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.date_range_outlined,
                    color: Color(0xFF007EF2),
                  ),
                  label: Text(
                    "24 OCT-26 OCT",
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Color(0xFF007EF2),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF007EF2).withOpacity(0.12),
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person_2_outlined, color: Color(0xFF007EF2)),
                  label: Text(
                    "3 guests",
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Color(0xFF007EF2),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF007EF2).withOpacity(0.12),
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 83,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Search Hote By Name",
                      labelStyle: GoogleFonts.roboto(
                        fontSize: 15,
                        color: Color(0xFF7F7F7F),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.grey,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a hotel name';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 17,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.display_settings_outlined),
                    style: IconButton.styleFrom(
                      backgroundColor: Color(0xFF007EF2),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Recommended Hotels",
              style: GoogleFonts.openSans(
                fontSize: 20,
                color: Color(0xFF007EF2),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 300,
              child: PageView.builder(
                itemCount: 5,
                controller: PageController(viewportFraction: 0.6),
                padEnds: false,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 200,
                              height: 135,
                              child: Image.asset("Images/card_example.png"),
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  color: Color(0xFF007EF2).withOpacity(0.12),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "10% OFF",
                                      style: GoogleFonts.openSans(
                                        color: Color(0xFF007EF2),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  color: Color(0xFF007EF2).withOpacity(0.12),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xFFFFD700),
                                              size: 15,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "4.5",
                                            style: GoogleFonts.openSans(
                                              color: Color(0xFF007EF2),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  child: Icon(
                                    CupertinoIcons.heart,
                                    color: Color(0xFF007EF2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            "AYANA Resort",
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color(0xFF7F7F7F),
                                size: 15,
                              ),
                              Text(
                                "Bali, Indonesia",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Color(0xFF7F7F7F),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "\$200 - \$500 USD",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF007EF2),
                                  ),
                                ),
                                TextSpan(
                                  text: "/night",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Business Accomodates",
              style: GoogleFonts.openSans(
                fontSize: 20,
                color: Color(0xFF007EF2),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 230,
              child: PageView.builder(
                itemCount: 5,
                controller: PageController(viewportFraction: 0.6),
                padEnds: false,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 200,
                              height: 135,
                              child: Image.asset("Images/business_card.png"),
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  color: Color(0xFF007EF2).withOpacity(0.12),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "10% OFF",
                                      style: GoogleFonts.openSans(
                                        color: Color(0xFF007EF2),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  color: Color(0xFF007EF2).withOpacity(0.12),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "4.5",
                                      style: GoogleFonts.openSans(
                                        color: Color(0xFF007EF2),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
