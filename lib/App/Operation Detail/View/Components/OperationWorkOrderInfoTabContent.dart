import 'package:flutter/material.dart';

class OperationWorkOrderInfoTabContent extends StatelessWidget {
  const OperationWorkOrderInfoTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "İş Emri No:",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Operasyon No:",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Tarih:",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Açıklama:",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Durum:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "12345",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "67890",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "22 Ekim 2024",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Montaj operasyonu",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Tamamlandı",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
