// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewEntry _$NewEntryFromJson(Map<String, dynamic> json) => NewEntry(
      content: json['content'] as String,
      moodType: json['mood_type'] as String,
    );

Map<String, dynamic> _$NewEntryToJson(NewEntry instance) => <String, dynamic>{
      'content': instance.content,
      'mood_type': instance.moodType,
    };
