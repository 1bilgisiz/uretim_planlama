import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationDetailButtonCardWidget.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationDetailCounterCardWidget.dart';
import 'package:uretim_planlama/Utils/Images.dart';

class OperationDetailSliderButtonSlider extends StatelessWidget {
  const OperationDetailSliderButtonSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<OperationDetailButtonOption> buttons = [
      OperationDetailButtonOption(
        color: Colors.blue,
        icon: Icons.play_arrow,
        title: 'BAŞLAT',
        onPressed: () {
          showAlertDialog(context);
        },
      ),
      OperationDetailButtonOption(
        color: Colors.red,
        icon: Icons.pause,
        title: 'DURDUR',
      ),
      OperationDetailButtonOption(
        color: Colors.green,
        icon: Icons.task_alt,
        title: 'ONAYLA',
      ),
    ];

    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Stack(
        children: [
          Positioned.fill(
            child: Blur(
              blur: .001,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Images.slider4Background),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  children: [
                    SizedBox(width: 10),
                    Expanded(
                      child: OperationDetailCounterCardWidget(
                        title: "GÜN",
                        value: "00",
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: OperationDetailCounterCardWidget(
                        title: "SAAT",
                        value: "00",
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: OperationDetailCounterCardWidget(
                        title: "DAKİKA",
                        value: "00",
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade100),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.yellow.withOpacity(0.5),
                    ),
                    height: 150,
                    child: const Center(
                      child: Text(
                        "BEKLENİYOR",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(4.0, 4.0),
                              blurRadius: 10.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 70),
                    ...buttons.map((e) => Expanded(
                        child: OperationDetailButtonCardWidget(option: e))),
                    const SizedBox(width: 70)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Column(
            children: [
              Text(
                "İŞLEM SEÇ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 20),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.settings, color: Colors.black),
                  label: const Text(
                    'HAZIRLIK BAŞLAT',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200,
                    side: const BorderSide(color: Colors.black, width: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.play_arrow, color: Colors.black),
                  label: const Text(
                    'ÜRETİM BAŞLAT',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.purple.shade200,
                    side: const BorderSide(color: Colors.black, width: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
