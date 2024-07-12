import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitforge_frontend/data/remote/tools/network_client.dart';

final networkClientProvider = Provider((ref) => NetworkClient().init());
