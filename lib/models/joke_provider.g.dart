// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_provider.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMySavedJokesCollection on Isar {
  IsarCollection<MySavedJokes> get mySavedJokes => this.collection();
}

const MySavedJokesSchema = CollectionSchema(
  name: r'MySavedJokes',
  id: -6595179100321361666,
  properties: {
    r'savedJoke': PropertySchema(
      id: 0,
      name: r'savedJoke',
      type: IsarType.string,
    )
  },
  estimateSize: _mySavedJokesEstimateSize,
  serialize: _mySavedJokesSerialize,
  deserialize: _mySavedJokesDeserialize,
  deserializeProp: _mySavedJokesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _mySavedJokesGetId,
  getLinks: _mySavedJokesGetLinks,
  attach: _mySavedJokesAttach,
  version: '3.1.0+1',
);

int _mySavedJokesEstimateSize(
  MySavedJokes object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.savedJoke.length * 3;
  return bytesCount;
}

void _mySavedJokesSerialize(
  MySavedJokes object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.savedJoke);
}

MySavedJokes _mySavedJokesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MySavedJokes(
    savedJoke: reader.readString(offsets[0]),
  );
  object.id = id;
  return object;
}

P _mySavedJokesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _mySavedJokesGetId(MySavedJokes object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mySavedJokesGetLinks(MySavedJokes object) {
  return [];
}

void _mySavedJokesAttach(
    IsarCollection<dynamic> col, Id id, MySavedJokes object) {
  object.id = id;
}

extension MySavedJokesQueryWhereSort
    on QueryBuilder<MySavedJokes, MySavedJokes, QWhere> {
  QueryBuilder<MySavedJokes, MySavedJokes, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MySavedJokesQueryWhere
    on QueryBuilder<MySavedJokes, MySavedJokes, QWhereClause> {
  QueryBuilder<MySavedJokes, MySavedJokes, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MySavedJokesQueryFilter
    on QueryBuilder<MySavedJokes, MySavedJokes, QFilterCondition> {
  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition>
      savedJokeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'savedJoke',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition>
      savedJokeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'savedJoke',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition>
      savedJokeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'savedJoke',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition>
      savedJokeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'savedJoke',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition>
      savedJokeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'savedJoke',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition>
      savedJokeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'savedJoke',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition>
      savedJokeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'savedJoke',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition>
      savedJokeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'savedJoke',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition>
      savedJokeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'savedJoke',
        value: '',
      ));
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterFilterCondition>
      savedJokeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'savedJoke',
        value: '',
      ));
    });
  }
}

extension MySavedJokesQueryObject
    on QueryBuilder<MySavedJokes, MySavedJokes, QFilterCondition> {}

extension MySavedJokesQueryLinks
    on QueryBuilder<MySavedJokes, MySavedJokes, QFilterCondition> {}

extension MySavedJokesQuerySortBy
    on QueryBuilder<MySavedJokes, MySavedJokes, QSortBy> {
  QueryBuilder<MySavedJokes, MySavedJokes, QAfterSortBy> sortBySavedJoke() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'savedJoke', Sort.asc);
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterSortBy> sortBySavedJokeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'savedJoke', Sort.desc);
    });
  }
}

extension MySavedJokesQuerySortThenBy
    on QueryBuilder<MySavedJokes, MySavedJokes, QSortThenBy> {
  QueryBuilder<MySavedJokes, MySavedJokes, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterSortBy> thenBySavedJoke() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'savedJoke', Sort.asc);
    });
  }

  QueryBuilder<MySavedJokes, MySavedJokes, QAfterSortBy> thenBySavedJokeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'savedJoke', Sort.desc);
    });
  }
}

extension MySavedJokesQueryWhereDistinct
    on QueryBuilder<MySavedJokes, MySavedJokes, QDistinct> {
  QueryBuilder<MySavedJokes, MySavedJokes, QDistinct> distinctBySavedJoke(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'savedJoke', caseSensitive: caseSensitive);
    });
  }
}

extension MySavedJokesQueryProperty
    on QueryBuilder<MySavedJokes, MySavedJokes, QQueryProperty> {
  QueryBuilder<MySavedJokes, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MySavedJokes, String, QQueryOperations> savedJokeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'savedJoke');
    });
  }
}
