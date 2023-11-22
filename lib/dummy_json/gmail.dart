import 'package:flutter/material.dart';

class GmailDart extends StatefulWidget {
  const GmailDart({super.key});

  @override
  State<GmailDart> createState() => _GmailDartState();
}

class _GmailDartState extends State<GmailDart> {
  bool isSearchBoxExpanded = false;
  bool onTap = false;
  double containerHeight = 60.0;

  final TextEditingController _textEditingController = TextEditingController();
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gmail Search'),
      ),
      body: Stack(children: [
        Container(
          color: Colors.amberAccent,
          width: double.infinity,
          height: h,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              if (containerHeight == 60.0) {
                containerHeight = h;
                onTap = true;
                FocusScope.of(context).requestFocus(_focusNode);
              } else {
                containerHeight = 60.0;
                onTap = false;
              }
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutCubicEmphasized,
            height: containerHeight,
            width: double.infinity, // Set the desired width
            margin: onTap ? null : const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24),
            ),
            child: onTap
                ? Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 240, 240),
                    ),
                    child: TextFormField(
                      controller: _textEditingController,
                      focusNode: _focusNode,
                      cursorColor: const Color.fromARGB(255, 37, 37, 37),
                      decoration: const InputDecoration(
                        hintText: 'Search Wallpapers',
                        hintStyle: TextStyle(color: Colors.grey),
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  )
                : Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 18),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 240, 240),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Text(
                      'Search Wallpaper',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
          ),
        ),
      ]),
      // body: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       ElevatedButton(
      //         onPressed: () {
      //           // Activate the TextFormField when the button is clicked
      //           FocusScope.of(context).requestFocus(_focusNode);
      //         },
      //         child: Text('Activate TextFormField'),
      //       ),
      //       SizedBox(height: 20),
      //       TextFormField(
      //         focusNode: _focusNode,
      //         controller: _textEditingController,
      //         decoration: InputDecoration(
      //           labelText: 'Enter text',
      //           border: OutlineInputBorder(),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
