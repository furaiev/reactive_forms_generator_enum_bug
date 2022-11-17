// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'test_form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveTestFormFormConsumer extends StatelessWidget {
  const ReactiveTestFormFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, TestFormForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTestFormForm.of(context);

    if (formModel is! TestFormForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class TestFormFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const TestFormFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final TestFormForm form;
}

class ReactiveTestFormForm extends StatelessWidget {
  const ReactiveTestFormForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final TestFormForm form;

  final WillPopCallback? onWillPop;

  static TestFormForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<TestFormFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        TestFormFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as TestFormFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return TestFormFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class TestFormFormBuilder extends StatefulWidget {
  const TestFormFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final TestForm? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, TestFormForm formModel, Widget? child) builder;

  final void Function(BuildContext context, TestFormForm formModel)? initState;

  @override
  _TestFormFormBuilderState createState() => _TestFormFormBuilderState();
}

class _TestFormFormBuilderState extends State<TestFormFormBuilder> {
  late FormGroup _form;

  late TestFormForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = TestFormForm(widget.model, _form, null);

    final elements = _formModel.formElements();
    _form.setValidators(elements.validators);
    _form.setAsyncValidators(elements.asyncValidators);

    if (elements.disabled) {
      _form.markAsDisabled();
    }

    _form.addAll(elements.controls);

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void dispose() {
    _form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveTestFormForm(
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _form,
        onWillPop: widget.onWillPop,
        builder: (BuildContext context, FormGroup formGroup, Widget? child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class TestFormForm implements FormModel<TestForm> {
  TestFormForm(
    this.testForm,
    this.form,
    this.path,
  ) {}

  static String propertiesControlName = "properties";

  final TestForm? testForm;

  final FormGroup form;

  final String? path;

  String propertiesControlPath() => pathBuilder(propertiesControlName);
  List<String> get _propertiesValue =>
      propertiesControl.value?.whereType<String>().toList() ?? [];
  bool get containsProperties {
    try {
      form.control(propertiesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get propertiesErrors => propertiesControl.errors;
  void get propertiesFocus => form.focus(propertiesControlPath());
  void propertiesValueUpdate(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    propertiesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void propertiesValuePatch(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    propertiesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void propertiesValueReset(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      propertiesControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormArray<String> get propertiesControl =>
      form.control(propertiesControlPath()) as FormArray<String>;
  void propertiesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      propertiesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      propertiesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addPropertiesItem(
    String value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    propertiesControl.add(FormControl<String>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  TestForm get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return TestForm(type: testForm?.type, properties: _propertiesValue);
  }

  TestFormForm copyWithPath(String? path) {
    return TestFormForm(testForm, form, path);
  }

  void updateValue(
    TestForm value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          TestFormForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(
    TestForm value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value:
              TestFormForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        typeControlName: FormArray<TestType>(
            testForm?.type
                    .map((e) => FormControl<TestType>(
                          value: e,
                          validators: [],
                          asyncValidators: [],
                          asyncValidatorsDebounceTime: 250,
                          disabled: false,
                        ))
                    .toList() ??
                [],
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        propertiesControlName: FormArray<String>(
            testForm?.properties
                    .map((e) => FormControl<String>(
                          value: e,
                          validators: [],
                          asyncValidators: [],
                          asyncValidatorsDebounceTime: 250,
                          disabled: false,
                        ))
                    .toList() ??
                [],
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveTestFormFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveTestFormFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(TestFormForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, TestFormForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, TestFormForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTestFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveTestFormFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveTestFormFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      TestFormForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, TestFormForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, V? item, TestFormForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTestFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
