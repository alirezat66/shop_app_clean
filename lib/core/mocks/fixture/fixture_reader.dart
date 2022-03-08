import 'dart:io';

String fixture(String name) => File('lib/core/mocks/json_files/$name').readAsStringSync();