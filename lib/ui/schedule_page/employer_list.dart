import 'package:flutter/material.dart';
import 'package:vz_mid/main.dart';
import 'package:vz_mid/models/employer.dart';
import 'package:vz_mid/ui/schedule_page/employer_card.dart';

class EmployerList extends StatefulWidget {
  const EmployerList({Key? key}) : super(key: key);

  @override
  State<EmployerList> createState() => _EmployerListState();
}

class _EmployerListState extends State<EmployerList>
    with TickerProviderStateMixin {
  late final Future<List<Employer>> empl;

  @override
  void initState() {
    super.initState();
    empl = locator.repository.getEmployers();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: theme.textTheme.titleLarge?.copyWith(
          color: theme.colorScheme.onPrimary,
        ),
        title: const Text('Расписание'),
        backgroundColor: theme.colorScheme.primary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: theme.colorScheme.onPrimary,
            ),
            color: theme.colorScheme.onPrimary,
          ),
        ],
      ),
      body: FutureBuilder(
        future: empl,
        builder:
            (BuildContext context, AsyncSnapshot<List<Employer>> snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return EmployerCard(
                  employer: snapshot.data![index],
                  onEditTap: () {},
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              itemCount: snapshot.data!.length,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
