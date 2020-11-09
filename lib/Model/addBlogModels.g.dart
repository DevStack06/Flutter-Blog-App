// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addBlogModels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddBlogModel _$AddBlogModelFromJson(Map<String, dynamic> json) {
  return AddBlogModel(
    coverImage: json['coverImage'] as String,
    count: json['count'] as int,
    share: json['share'] as int,
    comment: json['comment'] as int,
    id: json['_id'] as String,
    username: json['username'] as String,
    body: json['body'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$AddBlogModelToJson(AddBlogModel instance) =>
    <String, dynamic>{
      'coverImage': instance.coverImage,
      'count': instance.count,
      'share': instance.share,
      'comment': instance.comment,
      '_id': instance.id,
      'username': instance.username,
      'title': instance.title,
      'body': instance.body,
    };
