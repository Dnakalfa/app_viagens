import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ViagensRecord extends FirestoreRecord {
  ViagensRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "imgUrl" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  bool hasImgUrl() => _imgUrl != null;

  // "vontade" field.
  int? _vontade;
  int get vontade => _vontade ?? 0;
  bool hasVontade() => _vontade != null;

  // "investimento" field.
  int? _investimento;
  int get investimento => _investimento ?? 0;
  bool hasInvestimento() => _investimento != null;

  // "visitado" field.
  bool? _visitado;
  bool get visitado => _visitado ?? false;
  bool hasVisitado() => _visitado != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  void _initializeFields() {
    _descricao = snapshotData['descricao'] as String?;
    _imgUrl = snapshotData['imgUrl'] as String?;
    _vontade = castToType<int>(snapshotData['vontade']);
    _investimento = castToType<int>(snapshotData['investimento']);
    _visitado = snapshotData['visitado'] as bool?;
    _nome = snapshotData['nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('viagens');

  static Stream<ViagensRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ViagensRecord.fromSnapshot(s));

  static Future<ViagensRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ViagensRecord.fromSnapshot(s));

  static ViagensRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ViagensRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ViagensRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ViagensRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ViagensRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ViagensRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createViagensRecordData({
  String? descricao,
  String? imgUrl,
  int? vontade,
  int? investimento,
  bool? visitado,
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descricao': descricao,
      'imgUrl': imgUrl,
      'vontade': vontade,
      'investimento': investimento,
      'visitado': visitado,
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class ViagensRecordDocumentEquality implements Equality<ViagensRecord> {
  const ViagensRecordDocumentEquality();

  @override
  bool equals(ViagensRecord? e1, ViagensRecord? e2) {
    return e1?.descricao == e2?.descricao &&
        e1?.imgUrl == e2?.imgUrl &&
        e1?.vontade == e2?.vontade &&
        e1?.investimento == e2?.investimento &&
        e1?.visitado == e2?.visitado &&
        e1?.nome == e2?.nome;
  }

  @override
  int hash(ViagensRecord? e) => const ListEquality().hash([
        e?.descricao,
        e?.imgUrl,
        e?.vontade,
        e?.investimento,
        e?.visitado,
        e?.nome
      ]);

  @override
  bool isValidKey(Object? o) => o is ViagensRecord;
}
