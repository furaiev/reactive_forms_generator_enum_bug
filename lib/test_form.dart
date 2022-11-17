import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'test_form.gform.dart';

@ReactiveFormAnnotation()
class TestForm {
  TestForm({
    @FormArrayAnnotation() this.type = const [],
    @FormArrayAnnotation() this.properties = const [],
  });

  final List<TestType> type;

  final List<String> properties;
}

enum TestType { auto, mechanic, unknown }
