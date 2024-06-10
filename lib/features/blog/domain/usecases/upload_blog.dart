import 'dart:io';

import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/blog/domain/entities/blog.dart';
import 'package:blog_app/features/blog/domain/repositories/blog_repository.dart';
import 'package:fpdart/fpdart.dart';

class UploadBlog implements UseCase<Blog, BlogUploadParams> {
  final BlogRepository blogREpository;

  UploadBlog(this.blogREpository);

  @override
  Future<Either<Failure, Blog>> call(params) async {
    return await blogREpository.uploadBlog(
      image: params.image,
      title: params.title,
      content: params.content,
      posterId: params.posterId,
      topics: params.topics,
    );
  }
}

class BlogUploadParams {
  final File image;
  final String title;
  final String content;
  final String posterId;
  final List<String> topics;

  BlogUploadParams({
    required this.image,
    required this.title,
    required this.content,
    required this.posterId,
    required this.topics,
  });
}
