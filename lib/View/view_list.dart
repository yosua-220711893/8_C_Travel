import 'package:flutter/material.dart';
import 'package:delapan_c_travel_2/data/driver.dart';
import 'package:delapan_c_travel_2/View/drivers.dart';

class ListDriverView extends StatelessWidget {
  const ListDriverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Pengemudi"),
        backgroundColor: const Color(0xFF2A4FF6), 
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return const WideLayout();
          } else {
            return const NarrowLayout();
          }
        },
      ),
    );
  }
}

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DriverList(
      onDriverTap: (driver) => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF2A4FF6), 
          ),
          body: DriverDetail(driver),
        ),
      )),
    );
  }
}

class WideLayout extends StatefulWidget {
  const WideLayout({super.key});

  @override
  State<WideLayout> createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  Driver? _driver;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: DriverList(
              onDriverTap: (driver) => setState(() => _driver = driver),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: _driver == null
              ? const Placeholder()
              : DriverDetail(_driver!),
        ),
      ],
    );
  }
}

class DriverList extends StatelessWidget {
  final void Function(Driver) onDriverTap;
  const DriverList({super.key, required this.onDriverTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drivers.length,
      itemBuilder: (context, index) {
        final driver = drivers[index];
        return GestureDetector(
          onTap: () => onDriverTap(driver),
          child: Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      driver.gambar,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        driver.nama,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2A4FF6), 
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        driver.mobil,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Plat Nomor: ${driver.platNomor}",
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class DriverDetail extends StatelessWidget {
  final Driver driver;
  const DriverDetail(this.driver, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext, boxConstraints) {
        return Center(
          child: boxConstraints.maxHeight > 200
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(driver.gambar, height: 200),
                    const SizedBox(height: 20),
                    Text(
                      driver.nama,
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: const Color(0xFF2A4FF6), 
                          ),
                    ),
                    Text(driver.mobil),
                    Text("Plat Nomor: ${driver.platNomor}"),
                    Text("Telepon: ${driver.telepon}"),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2A4FF6), 
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Hubungi Pengemudi",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(driver.gambar, height: 100),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(driver.nama),
                        Text(driver.mobil),
                        Text("Telepon: ${driver.telepon}"),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Fitur untuk menghubungi pengemudi
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2A4FF6), // Tombol berwarna biru #2A4FF6
                      ),
                      child: const Text(
                        "Hubungi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
