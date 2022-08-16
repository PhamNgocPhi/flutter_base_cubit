import 'package:jig_racing/bootstrap.dart';
import 'package:jig_racing/app_environment.dart';

import 'app/app.dart';

void main() {
  bootstrap(() {
    AppEnvironment.initEnvironment(EnvironmentType.production);
    return const App();
  });
}
