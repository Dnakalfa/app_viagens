import '/flutter_flow/flutter_flow_util.dart';
import 'editar_viagem_widget.dart' show EditarViagemWidget;
import 'package:flutter/material.dart';

class EditarViagemModel extends FlutterFlowModel<EditarViagemWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // State field(s) for vontade widget.
  FocusNode? vontadeFocusNode;
  TextEditingController? vontadeTextController;
  String? Function(BuildContext, String?)? vontadeTextControllerValidator;
  // State field(s) for investimento widget.
  int? investimentoValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    vontadeFocusNode?.dispose();
    vontadeTextController?.dispose();
  }
}
