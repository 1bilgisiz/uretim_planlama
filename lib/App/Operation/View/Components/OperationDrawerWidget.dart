import 'package:flutter/material.dart';
import 'package:uretim_planlama/Utils/Images.dart';

class OperationDrawerWidget extends StatelessWidget {
  const OperationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey,
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  Images.userImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildListTile("Saniye Bilgiç", Icons.person_2),
            _buildListTile("saniye.bilgic@dener.com", Icons.mail),
            _buildListTile("DENER GRUP BİLGİ TEKNOLOJİLERİ MÜDÜRLÜĞÜ",
                Icons.local_fire_department_sharp),
            _buildListTile("UZMAN YARDIMCISI", Icons.account_tree),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(String title, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.deepPurple),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                maxLines: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
