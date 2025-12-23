// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_formula.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteFormulaAdapter extends TypeAdapter<FavoriteFormula> {
  @override
  final int typeId = 3;

  @override
  FavoriteFormula read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteFormula(
      formulaId: fields[0] as String,
      addedAt: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteFormula obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.formulaId)
      ..writeByte(1)
      ..write(obj.addedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteFormulaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

