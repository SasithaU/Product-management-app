// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'user.dart';

// // **************************************************************************
// // TypeAdapterGenerator
// // **************************************************************************

// class UserAdapter extends TypeAdapter<User> {
//   @override
//   final int typeId = 0;

//   @override
//   User read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return User(
//       name: fields[0] as String,
//       email: fields[1] as String,
//       role: fields[2] as String,
//       password: fields[3] as String,
//       isBlocked: fields[4] as bool,
//     );
//   }

//   @override
//   void write(BinaryWriter writer, User obj) {
//     writer
//       ..writeByte(5)
//       ..writeByte(0)
//       ..write(obj.name)
//       ..writeByte(1)
//       ..write(obj.email)
//       ..writeByte(2)
//       ..write(obj.role)
//       ..writeByte(3)
//       ..write(obj.password)
//       ..writeByte(4)
//       ..write(obj.isBlocked);
//   }

//   @override
//   int get hashCode => typeId.hashCode;

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is UserAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
