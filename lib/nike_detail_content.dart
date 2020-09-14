import 'package:flutter/material.dart';
import 'package:nikex/shoe.dart';

class NikeDetailContent extends StatefulWidget {
  final Shoe shoe;
  NikeDetailContent({this.shoe});

  @override
  _NikeDetailContentState createState() => _NikeDetailContentState();
}

class _NikeDetailContentState extends State<NikeDetailContent> {
  String sexSelected = "M";
  String ageSelected = "6";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  widget.shoe.title,
                  style: TextStyle(
                    color: Color(0xFF474747),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "\$${widget.shoe.price}",
                style: TextStyle(
                  color: Color(0xFFEF0021),
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            widget.shoe.description,
            style: TextStyle(
              color: Color(0xFFA7A7A7),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: double.infinity,
            child: Text(
              "Read More ...",
              style: TextStyle(
                color: Color(
                  0xFFEF0021,
                ),
                fontSize: 12,
              ),
              textAlign: TextAlign.end,
            ),
          ),
          Row(
            children: [
              Text(
                "Gender",
                style: TextStyle(
                  color: Color(0xFF474747),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 12),
              RawChip(
                onPressed: () {
                  sexSelected = "M";
                  setState(() {});
                },
                showCheckmark: false,
                elevation: 5,
                selectedColor: Color(0xFFEF0021),
                backgroundColor: Color(0xFFF8F8F8),
                labelStyle: TextStyle(
                  color: sexSelected == "M" ? Colors.white : Color(0xFFA7A7A7),
                  fontSize: 12,
                ),
                label: Container(
                  width: 60,
                  child: Center(
                    child: Text(
                      'Men',
                    ),
                  ),
                ),
                selected: sexSelected == "M",
              ),
              SizedBox(width: 8),
              RawChip(
                onPressed: () {
                  sexSelected = "F";
                  setState(() {});
                },
                showCheckmark: false,
                elevation: 5,
                selectedColor: Color(0xFFEF0021),
                backgroundColor: Color(0xFFF8F8F8),
                labelStyle: TextStyle(
                  color: sexSelected == "F" ? Colors.white : Color(0xFFA7A7A7),
                  fontSize: 12,
                ),
                label: Container(
                  width: 60,
                  child: Center(
                    child: Text(
                      'Women',
                    ),
                  ),
                ),
                selected: sexSelected == "F",
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Size",
                style: TextStyle(
                  color: Color(0xFF474747),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 35),
              RawChip(
                onPressed: () {
                  ageSelected = "6";
                  setState(() {});
                },
                showCheckmark: false,
                elevation: 5,
                selectedColor: Color(0xFFEF0021),
                backgroundColor: Color(0xFFF8F8F8),
                labelStyle: TextStyle(
                  color: ageSelected == "6" ? Colors.white : Color(0xFFA7A7A7),
                  fontSize: 12,
                ),
                label: Container(
                  width: 18,
                  child: Center(
                    child: Text(
                      '6',
                    ),
                  ),
                ),
                selected: ageSelected == "6",
              ),
              SizedBox(
                width: 5,
              ),
              RawChip(
                onPressed: () {
                  ageSelected = "7";
                  setState(() {});
                },
                showCheckmark: false,
                elevation: 5,
                selectedColor: Color(0xFFEF0021),
                backgroundColor: Color(0xFFF8F8F8),
                labelStyle: TextStyle(
                  color: ageSelected == "7" ? Colors.white : Color(0xFFA7A7A7),
                  fontSize: 12,
                ),
                label: Container(
                  width: 18,
                  child: Center(
                    child: Text(
                      '7',
                    ),
                  ),
                ),
                selected: ageSelected == "7",
              ),
              SizedBox(
                width: 5,
              ),
              RawChip(
                onPressed: () {
                  ageSelected = "8";
                  setState(() {});
                },
                showCheckmark: false,
                elevation: 5,
                selectedColor: Color(0xFFEF0021),
                backgroundColor: Color(0xFFF8F8F8),
                labelStyle: TextStyle(
                  color: ageSelected == "8" ? Colors.white : Color(0xFFA7A7A7),
                  fontSize: 12,
                ),
                label: Container(
                  width: 18,
                  child: Center(
                    child: Text(
                      '8',
                    ),
                  ),
                ),
                selected: ageSelected == "8",
              ),
              SizedBox(
                width: 5,
              ),
              RawChip(
                onPressed: () {
                  ageSelected = "9";
                  setState(() {});
                },
                showCheckmark: false,
                elevation: 5,
                selectedColor: Color(0xFFEF0021),
                backgroundColor: Color(0xFFF8F8F8),
                labelStyle: TextStyle(
                  color: ageSelected == "9" ? Colors.white : Color(0xFFA7A7A7),
                  fontSize: 12,
                ),
                label: Container(
                  width: 18,
                  child: Center(
                    child: Text(
                      '9',
                    ),
                  ),
                ),
                selected: ageSelected == "9",
              ),
              SizedBox(
                width: 5,
              ),
              RawChip(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11.0),
                    side: BorderSide(color: Color(0xFFEF0021))),
                onPressed: () {
                  ageSelected = "10";
                  setState(() {});
                },
                showCheckmark: false,
                elevation: 5,
                selectedColor: Color(0xFFEF0021),
                backgroundColor: Color(0xFFF8F8F8),
                labelStyle: TextStyle(
                  color: ageSelected == "10" ? Colors.white : Color(0xFFA7A7A7),
                  fontSize: 12,
                ),
                label: Container(
                  width: 18,
                  child: Center(
                    child: Text(
                      '10',
                    ),
                  ),
                ),
                selected: ageSelected == "10",
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color(0xFFEF0021))),
                  color: Color(0xFFEF0021),
                  onPressed: () {},
                  child: Text(
                    "Add to Bag",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
