// Copyright 2016 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:source_span/source_span.dart';

import '../../../visitor/sass/expression.dart';
import '../expression.dart';

class VariableExpression implements Expression {
  final String name;

  final FileSpan span;

  VariableExpression(this.name, {this.span});

  /*=T*/ accept/*<T>*/(ExpressionVisitor/*<T>*/ visitor) =>
      visitor.visitVariableExpression(this);

  String toString() => "\$$name";
}