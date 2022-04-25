import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../model/category.dart';

part 'category_state.dart';
part 'category_event.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {

  CategoryBloc() : super(CategoryLoading()) {
    on<LoadCategory>(_onLoadCategory);
    on<UpdateCategory>(_onUpdateCategory);
  }

  void _onLoadCategory(LoadCategory event, Emitter<CategoryState> emit) {
    add(UpdateCategory(Category.category));
  }

  void _onUpdateCategory(UpdateCategory event, Emitter<CategoryState> emit) {
    emit(CategoryLoaded(categories: event.categories));
  }
}
