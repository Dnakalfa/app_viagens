import '/flutter_flow/flutter_flow_util.dart';
import 'nova_viagem_widget.dart' show NovaViagemWidget;
import 'package:flutter/material.dart';

class NovaViagemModel extends FlutterFlowModel<NovaViagemWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // State field(s) for imgUrl widget.
  FocusNode? imgUrlFocusNode;
  TextEditingController? imgUrlTextController;
  String? Function(BuildContext, String?)? imgUrlTextControllerValidator;
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
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    imgUrlFocusNode?.dispose();
    imgUrlTextController?.dispose();

    vontadeFocusNode?.dispose();
    vontadeTextController?.dispose();
  }
}
