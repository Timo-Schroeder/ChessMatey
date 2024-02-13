import 'package:chessmatey/common/widgets/header_bar.dart';
import 'package:chessmatey/features/tournament-selection/presentation/pages/tournament_creation_screen.dart';
import 'package:chessmatey/features/tournament-selection/presentation/widgets/tournament_selection_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TournamentSelectionScreen extends ConsumerWidget {
  const TournamentSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const HeaderBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TournamentSelectionList(),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TournamentCreationScreen(),
                  ),
                );
              },
              child: const Text('New Tournament'),
            ),
          ],
        ),
      ),
    );
  }
}
