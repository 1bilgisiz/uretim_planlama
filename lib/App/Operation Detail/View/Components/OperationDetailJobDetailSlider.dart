import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:uretim_planlama/App/Operation%20Detail/View/Components/OperationDetailWorkDetailCardWidget.dart';
import 'package:uretim_planlama/Utils/Images.dart';

class OperationDetailJobDetailSlider extends StatelessWidget {
  const OperationDetailJobDetailSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Stack(
          children: [
            Positioned.fill(
              child: Blur(
                blur: .001,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Images.slider2Backgorund),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "İŞ DETAYLARI",
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          shadows: [
                            Shadow(
                                offset: Offset(4, 4),
                                blurRadius: 5,
                                color: Colors.black)
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      OperationDetailWorkDetailCardWidget(
                        icon: Icons.assignment,
                        title: "OP ID: 12345",
                      ),
                      OperationDetailWorkDetailCardWidget(
                        icon: Icons.build,
                        title: "OPERASYON: MALZEME ÜRETİMİ",
                      ),
                      OperationDetailWorkDetailCardWidget(
                        icon: Icons.production_quantity_limits,
                        title: "ÜRETİLECEK MALZEME: LAZER MAKİNA",
                      ),
                      OperationDetailWorkDetailCardWidget(
                        icon: Icons.factory,
                        title: "İŞ MERKEZİ: D00262-ELEKTRİK PANO MONTAJ",
                      ),
                      OperationDetailWorkDetailCardWidget(
                        icon: Icons.calendar_today,
                        title: "BAŞLAMA TARİHİ: 22 EKİM 2024",
                      ),
                      OperationDetailWorkDetailCardWidget(
                        icon: Icons.calendar_today_outlined,
                        title: "BİTİŞ TARİHİ: 25 EKİM 2024",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
