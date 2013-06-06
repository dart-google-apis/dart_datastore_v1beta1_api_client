part of datastore_v1beta1_api_client;

/** The request for AllocateIds. */
class AllocateIdsRequest {

  /** A list of keys with incomplete key paths to allocate IDs for. No key may be reserved/read-only. */
  core.List<Key> keys;

  /** Create new AllocateIdsRequest from JSON data */
  AllocateIdsRequest.fromJson(core.Map json) {
    if (json.containsKey("keys")) {
      keys = [];
      json["keys"].forEach((item) {
        keys.add(new Key.fromJson(item));
      });
    }
  }

  /** Create JSON Object for AllocateIdsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (keys != null) {
      output["keys"] = new core.List();
      keys.forEach((item) {
        output["keys"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of AllocateIdsRequest */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The response for AllocateIds. */
class AllocateIdsResponse {

  /** The keys specified in the request (in the same order), each with its key path completed with a newly allocated ID. */
  core.List<Key> keys;

  /** The kind, fixed to "datastore#allocateIdsResponse". */
  core.String kind;

  /** Create new AllocateIdsResponse from JSON data */
  AllocateIdsResponse.fromJson(core.Map json) {
    if (json.containsKey("keys")) {
      keys = [];
      json["keys"].forEach((item) {
        keys.add(new Key.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AllocateIdsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (keys != null) {
      output["keys"] = new core.List();
      keys.forEach((item) {
        output["keys"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AllocateIdsResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The request for BeginTransaction. */
class BeginTransactionRequest {

  /** The transaction isolation level. Either snapshot or serializable. The default isolation level is snapshot isolation, which means that another transaction may not concurrently modify the data that is modified by this transaction. Optionally, a transaction can request to be made serializable which means that another transaction cannot concurrently modify the data that is read or modified by this transaction. */
  core.String isolationLevel;

  /** Create new BeginTransactionRequest from JSON data */
  BeginTransactionRequest.fromJson(core.Map json) {
    if (json.containsKey("isolationLevel")) {
      isolationLevel = json["isolationLevel"];
    }
  }

  /** Create JSON Object for BeginTransactionRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (isolationLevel != null) {
      output["isolationLevel"] = isolationLevel;
    }

    return output;
  }

  /** Return String representation of BeginTransactionRequest */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The response for BeginTransaction. */
class BeginTransactionResponse {

  /** The kind, fixed to "datastore#beginTransactionResponse". */
  core.String kind;

  /** The transaction identifier (always present). */
  core.String transaction;

  /** Create new BeginTransactionResponse from JSON data */
  BeginTransactionResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("transaction")) {
      transaction = json["transaction"];
    }
  }

  /** Create JSON Object for BeginTransactionResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (transaction != null) {
      output["transaction"] = transaction;
    }

    return output;
  }

  /** Return String representation of BeginTransactionResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The request for BlindWrite. */
class BlindWriteRequest {

  /** The mutation to perform. */
  Mutation mutation;

  /** Create new BlindWriteRequest from JSON data */
  BlindWriteRequest.fromJson(core.Map json) {
    if (json.containsKey("mutation")) {
      mutation = new Mutation.fromJson(json["mutation"]);
    }
  }

  /** Create JSON Object for BlindWriteRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (mutation != null) {
      output["mutation"] = mutation.toJson();
    }

    return output;
  }

  /** Return String representation of BlindWriteRequest */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The response for BlindWrite. */
class BlindWriteResponse {

  /** The kind, fixed to "datastore#blindWriteResponse". */
  core.String kind;

  /** The result of performing the mutation. */
  MutationResult mutationResult;

  /** Create new BlindWriteResponse from JSON data */
  BlindWriteResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("mutationResult")) {
      mutationResult = new MutationResult.fromJson(json["mutationResult"]);
    }
  }

  /** Create JSON Object for BlindWriteResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (mutationResult != null) {
      output["mutationResult"] = mutationResult.toJson();
    }

    return output;
  }

  /** Return String representation of BlindWriteResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The request for Commit. */
class CommitRequest {

  /** The mutation to perform as part of this transaction. Optional. */
  Mutation mutation;

  /** The transaction identifier, returned by a call to beginTransaction. */
  core.String transaction;

  /** Create new CommitRequest from JSON data */
  CommitRequest.fromJson(core.Map json) {
    if (json.containsKey("mutation")) {
      mutation = new Mutation.fromJson(json["mutation"]);
    }
    if (json.containsKey("transaction")) {
      transaction = json["transaction"];
    }
  }

  /** Create JSON Object for CommitRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (mutation != null) {
      output["mutation"] = mutation.toJson();
    }
    if (transaction != null) {
      output["transaction"] = transaction;
    }

    return output;
  }

  /** Return String representation of CommitRequest */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The response for Commit. */
class CommitResponse {

  /** The kind, fixed to "datastore#commitResponse". */
  core.String kind;

  /** The result of performing the mutation (if any). */
  MutationResult mutationResult;

  /** Create new CommitResponse from JSON data */
  CommitResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("mutationResult")) {
      mutationResult = new MutationResult.fromJson(json["mutationResult"]);
    }
  }

  /** Create JSON Object for CommitResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (mutationResult != null) {
      output["mutationResult"] = mutationResult.toJson();
    }

    return output;
  }

  /** Return String representation of CommitResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A filter that merges the multiple other filters using the given operation. */
class CompositeFilter {

  /** The list of filters to combine. Must contain at least one filter. */
  core.List<Filter> filters;

  /** The operator for combining multiple filters. Only "and" is currently supported. */
  core.String operator;

  /** Create new CompositeFilter from JSON data */
  CompositeFilter.fromJson(core.Map json) {
    if (json.containsKey("filters")) {
      filters = [];
      json["filters"].forEach((item) {
        filters.add(new Filter.fromJson(item));
      });
    }
    if (json.containsKey("operator")) {
      operator = json["operator"];
    }
  }

  /** Create JSON Object for CompositeFilter */
  core.Map toJson() {
    var output = new core.Map();

    if (filters != null) {
      output["filters"] = new core.List();
      filters.forEach((item) {
        output["filters"].add(item.toJson());
      });
    }
    if (operator != null) {
      output["operator"] = operator;
    }

    return output;
  }

  /** Return String representation of CompositeFilter */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An entity.

An entity is limited to 1 megabyte when stored. That *roughly* corresponds to a limit of 1 megabyte for the serialized form of this message. */
class Entity {

  /** The entity's key.

An entity must have a key, unless otherwise documented (for example, an entity in Value.entityValue may have no key). An entity's kind is its key's path's last element's kind, or null if it has no key. */
  Key key;

  /** The entity's properties. */
  EntityProperties properties;

  /** Create new Entity from JSON data */
  Entity.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = new Key.fromJson(json["key"]);
    }
    if (json.containsKey("properties")) {
      properties = new EntityProperties.fromJson(json["properties"]);
    }
  }

  /** Create JSON Object for Entity */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key.toJson();
    }
    if (properties != null) {
      output["properties"] = properties.toJson();
    }

    return output;
  }

  /** Return String representation of Entity */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The entity's properties. */
class EntityProperties {

  /** Create new EntityProperties from JSON data */
  EntityProperties.fromJson(core.Map json) {
  }

  /** Create JSON Object for EntityProperties */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of EntityProperties */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The result of fetching an entity from the datastore. */
class EntityResult {

  /** The resulting entity. */
  Entity entity;

  /** Create new EntityResult from JSON data */
  EntityResult.fromJson(core.Map json) {
    if (json.containsKey("entity")) {
      entity = new Entity.fromJson(json["entity"]);
    }
  }

  /** Create JSON Object for EntityResult */
  core.Map toJson() {
    var output = new core.Map();

    if (entity != null) {
      output["entity"] = entity.toJson();
    }

    return output;
  }

  /** Return String representation of EntityResult */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A holder for any type of filter. Exactly one field should be specified. */
class Filter {

  /** A composite filter. */
  CompositeFilter compositeFilter;

  /** A filter on a property. */
  PropertyFilter propertyFilter;

  /** Create new Filter from JSON data */
  Filter.fromJson(core.Map json) {
    if (json.containsKey("compositeFilter")) {
      compositeFilter = new CompositeFilter.fromJson(json["compositeFilter"]);
    }
    if (json.containsKey("propertyFilter")) {
      propertyFilter = new PropertyFilter.fromJson(json["propertyFilter"]);
    }
  }

  /** Create JSON Object for Filter */
  core.Map toJson() {
    var output = new core.Map();

    if (compositeFilter != null) {
      output["compositeFilter"] = compositeFilter.toJson();
    }
    if (propertyFilter != null) {
      output["propertyFilter"] = propertyFilter.toJson();
    }

    return output;
  }

  /** Return String representation of Filter */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A unique identifier for an entity. If a key's partition id or any of its path kinds or names are reserved/read-only, the key is reserved/read-only. A reserved/read-only key is forbidden in certain documented contexts. */
class Key {

  /** Entities are partitioned into subsets, identified by a dataset (usually implicitly specified by the project) and namespace ID. Queries are scoped to a single partition. */
  PartitionId partitionId;

  /** The entity path. An entity path consists of one or more elements composed of a kind and a string or numerical identifier, which identify entities. The first element identifies a root entity, the second element identifies a child of the root entity, the third element a child of the second entity, and so forth. The entities identified by all prefixes of the path are called the element's ancestors. An entity path is always fully complete: ALL of the entity's ancestors are required to be in the path along with the entity identifier itself. The only exception is that in some documented cases, the identifier in the last path element (for the entity) itself may be omitted. A path can never be empty. */
  core.List<KeyPathElement> path;

  /** Create new Key from JSON data */
  Key.fromJson(core.Map json) {
    if (json.containsKey("partitionId")) {
      partitionId = new PartitionId.fromJson(json["partitionId"]);
    }
    if (json.containsKey("path")) {
      path = [];
      json["path"].forEach((item) {
        path.add(new KeyPathElement.fromJson(item));
      });
    }
  }

  /** Create JSON Object for Key */
  core.Map toJson() {
    var output = new core.Map();

    if (partitionId != null) {
      output["partitionId"] = partitionId.toJson();
    }
    if (path != null) {
      output["path"] = new core.List();
      path.forEach((item) {
        output["path"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of Key */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A (kind, ID/name) pair used to construct a key path.

At most one of name or ID may be set. If either is set, the element is complete. If neither is set, the element is incomplete. */
class KeyPathElement {

  /** The ID of the entity. Always > 0. */
  core.int id;

  /** The kind of the entity. Kinds matching regex "__.*__" are reserved/read-only. Cannot be "". */
  core.String kind;

  /** The name of the entity. Names matching regex "__.*__" are reserved/read-only. Cannot be "". */
  core.String name;

  /** Create new KeyPathElement from JSON data */
  KeyPathElement.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for KeyPathElement */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of KeyPathElement */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A representation of a kind. */
class KindExpression {

  /** The name of the kind. */
  core.String name;

  /** Create new KindExpression from JSON data */
  KindExpression.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for KindExpression */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of KindExpression */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The request for Lookup. */
class LookupRequest {

  /** Keys of entities to look up from the datastore. */
  core.List<Key> keys;

  /** Options for this lookup request. Optional. */
  ReadOptions readOptions;

  /** Create new LookupRequest from JSON data */
  LookupRequest.fromJson(core.Map json) {
    if (json.containsKey("keys")) {
      keys = [];
      json["keys"].forEach((item) {
        keys.add(new Key.fromJson(item));
      });
    }
    if (json.containsKey("readOptions")) {
      readOptions = new ReadOptions.fromJson(json["readOptions"]);
    }
  }

  /** Create JSON Object for LookupRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (keys != null) {
      output["keys"] = new core.List();
      keys.forEach((item) {
        output["keys"].add(item.toJson());
      });
    }
    if (readOptions != null) {
      output["readOptions"] = readOptions.toJson();
    }

    return output;
  }

  /** Return String representation of LookupRequest */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The response for Lookup. */
class LookupResponse {

  /** A list of keys that were not looked up due to resource constraints. */
  core.List<Key> deferred;

  /** Entities found. */
  core.List<EntityResult> found;

  /** The kind, fixed to "datastore#lookupResponse". */
  core.String kind;

  /** Entities not found, with only the key populated. */
  core.List<EntityResult> missing;

  /** Create new LookupResponse from JSON data */
  LookupResponse.fromJson(core.Map json) {
    if (json.containsKey("deferred")) {
      deferred = [];
      json["deferred"].forEach((item) {
        deferred.add(new Key.fromJson(item));
      });
    }
    if (json.containsKey("found")) {
      found = [];
      json["found"].forEach((item) {
        found.add(new EntityResult.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("missing")) {
      missing = [];
      json["missing"].forEach((item) {
        missing.add(new EntityResult.fromJson(item));
      });
    }
  }

  /** Create JSON Object for LookupResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (deferred != null) {
      output["deferred"] = new core.List();
      deferred.forEach((item) {
        output["deferred"].add(item.toJson());
      });
    }
    if (found != null) {
      output["found"] = new core.List();
      found.forEach((item) {
        output["found"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (missing != null) {
      output["missing"] = new core.List();
      missing.forEach((item) {
        output["missing"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of LookupResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A set of changes to apply.

No entity in this message may have a reserved property name, not even a property in an entity in a value.

If entities with duplicate keys are present, an arbitrary choice will be made as to which is written. */
class Mutation {

  /** Keys of entities to delete. Each key must have a complete key path and must not be reserved/read-only. */
  core.List<Key> delete;

  /** Ignore a user specified read-only period. Optional. */
  core.bool force;

  /** Entities to insert. Each inserted entity's key must have a complete path and must not be reserved/read-only. */
  core.List<Entity> insert;

  /** Insert entities with a newly allocated ID. Each inserted entity's key must omit the final identifier in its path and must not be reserved/read-only. */
  core.List<Entity> insertAutoId;

  /** Entities to update. Each updated entity's key must have a complete path and must not be reserved/read-only. */
  core.List<Entity> update;

  /** Entities to upsert. Each upserted entity's key must have a complete path and must not be reserved/read-only. */
  core.List<Entity> upsert;

  /** Create new Mutation from JSON data */
  Mutation.fromJson(core.Map json) {
    if (json.containsKey("delete")) {
      delete = [];
      json["delete"].forEach((item) {
        delete.add(new Key.fromJson(item));
      });
    }
    if (json.containsKey("force")) {
      force = json["force"];
    }
    if (json.containsKey("insert")) {
      insert = [];
      json["insert"].forEach((item) {
        insert.add(new Entity.fromJson(item));
      });
    }
    if (json.containsKey("insertAutoId")) {
      insertAutoId = [];
      json["insertAutoId"].forEach((item) {
        insertAutoId.add(new Entity.fromJson(item));
      });
    }
    if (json.containsKey("update")) {
      update = [];
      json["update"].forEach((item) {
        update.add(new Entity.fromJson(item));
      });
    }
    if (json.containsKey("upsert")) {
      upsert = [];
      json["upsert"].forEach((item) {
        upsert.add(new Entity.fromJson(item));
      });
    }
  }

  /** Create JSON Object for Mutation */
  core.Map toJson() {
    var output = new core.Map();

    if (delete != null) {
      output["delete"] = new core.List();
      delete.forEach((item) {
        output["delete"].add(item.toJson());
      });
    }
    if (force != null) {
      output["force"] = force;
    }
    if (insert != null) {
      output["insert"] = new core.List();
      insert.forEach((item) {
        output["insert"].add(item.toJson());
      });
    }
    if (insertAutoId != null) {
      output["insertAutoId"] = new core.List();
      insertAutoId.forEach((item) {
        output["insertAutoId"].add(item.toJson());
      });
    }
    if (update != null) {
      output["update"] = new core.List();
      update.forEach((item) {
        output["update"].add(item.toJson());
      });
    }
    if (upsert != null) {
      output["upsert"] = new core.List();
      upsert.forEach((item) {
        output["upsert"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of Mutation */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The result of applying a mutation. */
class MutationResult {

  /** Number of index writes. */
  core.int indexUpdates;

  /** Keys for insertAutoId entities. One per entity from the request, in the same order. */
  core.List<Key> insertAutoIdKeys;

  /** Create new MutationResult from JSON data */
  MutationResult.fromJson(core.Map json) {
    if (json.containsKey("indexUpdates")) {
      indexUpdates = json["indexUpdates"];
    }
    if (json.containsKey("insertAutoIdKeys")) {
      insertAutoIdKeys = [];
      json["insertAutoIdKeys"].forEach((item) {
        insertAutoIdKeys.add(new Key.fromJson(item));
      });
    }
  }

  /** Create JSON Object for MutationResult */
  core.Map toJson() {
    var output = new core.Map();

    if (indexUpdates != null) {
      output["indexUpdates"] = indexUpdates;
    }
    if (insertAutoIdKeys != null) {
      output["insertAutoIdKeys"] = new core.List();
      insertAutoIdKeys.forEach((item) {
        output["insertAutoIdKeys"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of MutationResult */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An identifier for a particular subset of entities.

Entities are partitioned into various subsets, each used by different datasets and different namespaces within a dataset and so forth.

All input partition IDs are normalized before use. A partition ID is normalized as follows: If the partition ID is unset, replace it with an empty partition ID. If the partition ID has no dataset ID, assign it the context dataset ID.

Partition dimension: A dimension may be unset. A dimension's value must never contain "!". A dimension's value must never be "". If the value of any dimension matches regex "__.*__", the partition is reserved/read-only. A reserved/read-only partition ID is forbidden in certain documented contexts. */
class PartitionId {

  /** The dataset ID. */
  core.String datasetId;

  /** The namespace. */
  core.String namespace;

  /** Create new PartitionId from JSON data */
  PartitionId.fromJson(core.Map json) {
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("namespace")) {
      namespace = json["namespace"];
    }
  }

  /** Create JSON Object for PartitionId */
  core.Map toJson() {
    var output = new core.Map();

    if (datasetId != null) {
      output["datasetId"] = datasetId;
    }
    if (namespace != null) {
      output["namespace"] = namespace;
    }

    return output;
  }

  /** Return String representation of PartitionId */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An entity property. */
class Property {

  /** If this property contains a list of values. Input values may explicitly set multi to false, but otherwise false is always represented by omitting multi. */
  core.bool multi;

  /** The value(s) of the property. When multi is false there is always exactly one value. When multi is true there is always one or more values. Each value can have only one value property populated. For example, you cannot have a values list of { values: [ { integerValue: 22, stringValue: "a" } ] }, but you can have { multi: true, values: [ { integerValue: 22 }, { stringValue: "a" } ] }. */
  core.List<Value> values;

  /** Create new Property from JSON data */
  Property.fromJson(core.Map json) {
    if (json.containsKey("multi")) {
      multi = json["multi"];
    }
    if (json.containsKey("values")) {
      values = [];
      json["values"].forEach((item) {
        values.add(new Value.fromJson(item));
      });
    }
  }

  /** Create JSON Object for Property */
  core.Map toJson() {
    var output = new core.Map();

    if (multi != null) {
      output["multi"] = multi;
    }
    if (values != null) {
      output["values"] = new core.List();
      values.forEach((item) {
        output["values"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of Property */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A representation of a property in a projection. */
class PropertyExpression {

  /** The aggregation function to apply to the property. Optional. Can only be used when grouping by at least one property. Must then be set on all properties in the projection that are not being grouped by. Aggregation functions: first selects the first result as determined by the query's order. */
  core.String aggregationFunction;

  /** The property to project. */
  PropertyReference property;

  /** Create new PropertyExpression from JSON data */
  PropertyExpression.fromJson(core.Map json) {
    if (json.containsKey("aggregationFunction")) {
      aggregationFunction = json["aggregationFunction"];
    }
    if (json.containsKey("property")) {
      property = new PropertyReference.fromJson(json["property"]);
    }
  }

  /** Create JSON Object for PropertyExpression */
  core.Map toJson() {
    var output = new core.Map();

    if (aggregationFunction != null) {
      output["aggregationFunction"] = aggregationFunction;
    }
    if (property != null) {
      output["property"] = property.toJson();
    }

    return output;
  }

  /** Return String representation of PropertyExpression */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A filter on a specific property. */
class PropertyFilter {

  /** The operator to filter by. One of lessThan, lessThanOrEqual, greaterThan, greaterThanOrEqual, equal, or hasAncestor. */
  core.String operator;

  /** The property to filter by. */
  PropertyReference property;

  /** The value to compare the property to. */
  Value value;

  /** Create new PropertyFilter from JSON data */
  PropertyFilter.fromJson(core.Map json) {
    if (json.containsKey("operator")) {
      operator = json["operator"];
    }
    if (json.containsKey("property")) {
      property = new PropertyReference.fromJson(json["property"]);
    }
    if (json.containsKey("value")) {
      value = new Value.fromJson(json["value"]);
    }
  }

  /** Create JSON Object for PropertyFilter */
  core.Map toJson() {
    var output = new core.Map();

    if (operator != null) {
      output["operator"] = operator;
    }
    if (property != null) {
      output["property"] = property.toJson();
    }
    if (value != null) {
      output["value"] = value.toJson();
    }

    return output;
  }

  /** Return String representation of PropertyFilter */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The desired order for a specific property. */
class PropertyOrder {

  /** The direction to order by. One of ascending or descending. Optional, defaults to ascending. */
  core.String direction;

  /** The property to order by. */
  PropertyReference property;

  /** Create new PropertyOrder from JSON data */
  PropertyOrder.fromJson(core.Map json) {
    if (json.containsKey("direction")) {
      direction = json["direction"];
    }
    if (json.containsKey("property")) {
      property = new PropertyReference.fromJson(json["property"]);
    }
  }

  /** Create JSON Object for PropertyOrder */
  core.Map toJson() {
    var output = new core.Map();

    if (direction != null) {
      output["direction"] = direction;
    }
    if (property != null) {
      output["property"] = property.toJson();
    }

    return output;
  }

  /** Return String representation of PropertyOrder */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A reference to a property relative to the kind expressions. */
class PropertyReference {

  /** The name of the property. */
  core.String name;

  /** Create new PropertyReference from JSON data */
  PropertyReference.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for PropertyReference */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of PropertyReference */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A query. */
class Query {

  /** An ending point for the query results. Optional. Query cursors are returned in query result batches. */
  core.String endCursor;

  /** The filter to apply (optional). */
  Filter filter;

  /** The properties to group by (if empty, no grouping is applied to the result set). */
  core.List<PropertyReference> groupBy;

  /** The kinds to query (if empty, returns entities from all kinds). */
  core.List<KindExpression> kinds;

  /** The maximum number of results to return. Applies after all other constraints. Optional. */
  core.int limit;

  /** The number of results to skip. Applies before limit, but after all other constraints (optional, defaults to 0). */
  core.int offset;

  /** The order to apply to the query results (if empty, order is unspecified). */
  core.List<PropertyOrder> order;

  /** The projection to return. If not set the entire entity is returned. */
  core.List<PropertyExpression> projection;

  /** A starting point for the query results. Optional. Query cursors are returned in query result batches. */
  core.String startCursor;

  /** Create new Query from JSON data */
  Query.fromJson(core.Map json) {
    if (json.containsKey("endCursor")) {
      endCursor = json["endCursor"];
    }
    if (json.containsKey("filter")) {
      filter = new Filter.fromJson(json["filter"]);
    }
    if (json.containsKey("groupBy")) {
      groupBy = [];
      json["groupBy"].forEach((item) {
        groupBy.add(new PropertyReference.fromJson(item));
      });
    }
    if (json.containsKey("kinds")) {
      kinds = [];
      json["kinds"].forEach((item) {
        kinds.add(new KindExpression.fromJson(item));
      });
    }
    if (json.containsKey("limit")) {
      limit = json["limit"];
    }
    if (json.containsKey("offset")) {
      offset = json["offset"];
    }
    if (json.containsKey("order")) {
      order = [];
      json["order"].forEach((item) {
        order.add(new PropertyOrder.fromJson(item));
      });
    }
    if (json.containsKey("projection")) {
      projection = [];
      json["projection"].forEach((item) {
        projection.add(new PropertyExpression.fromJson(item));
      });
    }
    if (json.containsKey("startCursor")) {
      startCursor = json["startCursor"];
    }
  }

  /** Create JSON Object for Query */
  core.Map toJson() {
    var output = new core.Map();

    if (endCursor != null) {
      output["endCursor"] = endCursor;
    }
    if (filter != null) {
      output["filter"] = filter.toJson();
    }
    if (groupBy != null) {
      output["groupBy"] = new core.List();
      groupBy.forEach((item) {
        output["groupBy"].add(item.toJson());
      });
    }
    if (kinds != null) {
      output["kinds"] = new core.List();
      kinds.forEach((item) {
        output["kinds"].add(item.toJson());
      });
    }
    if (limit != null) {
      output["limit"] = limit;
    }
    if (offset != null) {
      output["offset"] = offset;
    }
    if (order != null) {
      output["order"] = new core.List();
      order.forEach((item) {
        output["order"].add(item.toJson());
      });
    }
    if (projection != null) {
      output["projection"] = new core.List();
      projection.forEach((item) {
        output["projection"].add(item.toJson());
      });
    }
    if (startCursor != null) {
      output["startCursor"] = startCursor;
    }

    return output;
  }

  /** Return String representation of Query */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A batch of results produced by a query. */
class QueryResultBatch {

  /** A cursor that points to the position after the last result in the batch. May be absent. */
  core.String endCursor;

  /** The result type for every entity in entityResults. full for full entities, projection for entities with only projected properties, keyOnly for entities with only a key. */
  core.String entityResultType;

  /** The results for this batch. */
  core.List<EntityResult> entityResults;

  /** The state of the query after the current batch. One of notFinished, moreResultsAfterLimit, noMoreResults. */
  core.String moreResults;

  /** The number of results skipped because of Query.offset. */
  core.int skippedResults;

  /** Create new QueryResultBatch from JSON data */
  QueryResultBatch.fromJson(core.Map json) {
    if (json.containsKey("endCursor")) {
      endCursor = json["endCursor"];
    }
    if (json.containsKey("entityResultType")) {
      entityResultType = json["entityResultType"];
    }
    if (json.containsKey("entityResults")) {
      entityResults = [];
      json["entityResults"].forEach((item) {
        entityResults.add(new EntityResult.fromJson(item));
      });
    }
    if (json.containsKey("moreResults")) {
      moreResults = json["moreResults"];
    }
    if (json.containsKey("skippedResults")) {
      skippedResults = json["skippedResults"];
    }
  }

  /** Create JSON Object for QueryResultBatch */
  core.Map toJson() {
    var output = new core.Map();

    if (endCursor != null) {
      output["endCursor"] = endCursor;
    }
    if (entityResultType != null) {
      output["entityResultType"] = entityResultType;
    }
    if (entityResults != null) {
      output["entityResults"] = new core.List();
      entityResults.forEach((item) {
        output["entityResults"].add(item.toJson());
      });
    }
    if (moreResults != null) {
      output["moreResults"] = moreResults;
    }
    if (skippedResults != null) {
      output["skippedResults"] = skippedResults;
    }

    return output;
  }

  /** Return String representation of QueryResultBatch */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Options shared by read requests. */
class ReadOptions {

  /** The read consistency to use. One of default, strong, or eventual. Cannot be set when transaction is set. Lookup and ancestor queries default to strong, global queries default to eventual and cannot be set to strong. Optional. Default is default. */
  core.String readConsistency;

  /** The transaction to use. Optional. */
  core.String transaction;

  /** Create new ReadOptions from JSON data */
  ReadOptions.fromJson(core.Map json) {
    if (json.containsKey("readConsistency")) {
      readConsistency = json["readConsistency"];
    }
    if (json.containsKey("transaction")) {
      transaction = json["transaction"];
    }
  }

  /** Create JSON Object for ReadOptions */
  core.Map toJson() {
    var output = new core.Map();

    if (readConsistency != null) {
      output["readConsistency"] = readConsistency;
    }
    if (transaction != null) {
      output["transaction"] = transaction;
    }

    return output;
  }

  /** Return String representation of ReadOptions */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The request for Rollback. */
class RollbackRequest {

  /** The transaction identifier, returned by a call to beginTransaction. */
  core.String transaction;

  /** Create new RollbackRequest from JSON data */
  RollbackRequest.fromJson(core.Map json) {
    if (json.containsKey("transaction")) {
      transaction = json["transaction"];
    }
  }

  /** Create JSON Object for RollbackRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (transaction != null) {
      output["transaction"] = transaction;
    }

    return output;
  }

  /** Return String representation of RollbackRequest */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The response for Rollback. */
class RollbackResponse {

  /** The kind, fixed to "datastore#rollbackResponse". */
  core.String kind;

  /** Create new RollbackResponse from JSON data */
  RollbackResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for RollbackResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of RollbackResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The request for RunQuery. */
class RunQueryRequest {

  /** Entities are partitioned into subsets, identified by a dataset (usually implicitly specified by the project) and namespace ID. Queries are scoped to a single partition. */
  PartitionId partitionId;

  /** The query to run. */
  Query query;

  /** The options for this query. */
  ReadOptions readOptions;

  /** Create new RunQueryRequest from JSON data */
  RunQueryRequest.fromJson(core.Map json) {
    if (json.containsKey("partitionId")) {
      partitionId = new PartitionId.fromJson(json["partitionId"]);
    }
    if (json.containsKey("query")) {
      query = new Query.fromJson(json["query"]);
    }
    if (json.containsKey("readOptions")) {
      readOptions = new ReadOptions.fromJson(json["readOptions"]);
    }
  }

  /** Create JSON Object for RunQueryRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (partitionId != null) {
      output["partitionId"] = partitionId.toJson();
    }
    if (query != null) {
      output["query"] = query.toJson();
    }
    if (readOptions != null) {
      output["readOptions"] = readOptions.toJson();
    }

    return output;
  }

  /** Return String representation of RunQueryRequest */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The response for RunQuery. */
class RunQueryResponse {

  /** A batch of query results (always present). */
  QueryResultBatch batch;

  /** The kind, fixed to "datastore#runQueryResponse". */
  core.String kind;

  /** Create new RunQueryResponse from JSON data */
  RunQueryResponse.fromJson(core.Map json) {
    if (json.containsKey("batch")) {
      batch = new QueryResultBatch.fromJson(json["batch"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for RunQueryResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (batch != null) {
      output["batch"] = batch.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of RunQueryResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A message that can hold any of the supported value types and associated metadata.

At most one of the Value fields may be set. If none are set the value is "null". */
class Value {

  /** A blob key value. */
  core.String blobKeyValue;

  /** A blob value. */
  core.String blobValue;

  /** A boolean value. */
  core.bool booleanValue;

  /** A timestamp value. */
  core.String dateTimeValue;

  /** A double value. */
  core.num doubleValue;

  /** An entity value. May have no key. May have a key with an incomplete key path. May have a reserved/read-only key. */
  Entity entityValue;

  /** If the value should be indexed.

The indexed property may be set to null. When indexed is true, stringValue is limited to 500 characters and the blob value is limited to 500 bytes. Input values by default have indexed set to true; however, you can explicitly set indexed to true if you want. (An output value never has indexed explicitly set to true.) If a value is itself an entity, it cannot have indexed set to true. */
  core.bool indexed;

  /** An integer value. */
  core.int integerValue;

  /** A key value. */
  Key keyValue;

  /** The meaning field is reserved and should not be used. */
  core.int meaning;

  /** A UTF-8 encoded string value. */
  core.String stringValue;

  /** Create new Value from JSON data */
  Value.fromJson(core.Map json) {
    if (json.containsKey("blobKeyValue")) {
      blobKeyValue = json["blobKeyValue"];
    }
    if (json.containsKey("blobValue")) {
      blobValue = json["blobValue"];
    }
    if (json.containsKey("booleanValue")) {
      booleanValue = json["booleanValue"];
    }
    if (json.containsKey("dateTimeValue")) {
      dateTimeValue = json["dateTimeValue"];
    }
    if (json.containsKey("doubleValue")) {
      doubleValue = json["doubleValue"];
    }
    if (json.containsKey("entityValue")) {
      entityValue = new Entity.fromJson(json["entityValue"]);
    }
    if (json.containsKey("indexed")) {
      indexed = json["indexed"];
    }
    if (json.containsKey("integerValue")) {
      integerValue = json["integerValue"];
    }
    if (json.containsKey("keyValue")) {
      keyValue = new Key.fromJson(json["keyValue"]);
    }
    if (json.containsKey("meaning")) {
      meaning = json["meaning"];
    }
    if (json.containsKey("stringValue")) {
      stringValue = json["stringValue"];
    }
  }

  /** Create JSON Object for Value */
  core.Map toJson() {
    var output = new core.Map();

    if (blobKeyValue != null) {
      output["blobKeyValue"] = blobKeyValue;
    }
    if (blobValue != null) {
      output["blobValue"] = blobValue;
    }
    if (booleanValue != null) {
      output["booleanValue"] = booleanValue;
    }
    if (dateTimeValue != null) {
      output["dateTimeValue"] = dateTimeValue;
    }
    if (doubleValue != null) {
      output["doubleValue"] = doubleValue;
    }
    if (entityValue != null) {
      output["entityValue"] = entityValue.toJson();
    }
    if (indexed != null) {
      output["indexed"] = indexed;
    }
    if (integerValue != null) {
      output["integerValue"] = integerValue;
    }
    if (keyValue != null) {
      output["keyValue"] = keyValue.toJson();
    }
    if (meaning != null) {
      output["meaning"] = meaning;
    }
    if (stringValue != null) {
      output["stringValue"] = stringValue;
    }

    return output;
  }

  /** Return String representation of Value */
  core.String toString() => JSON.stringify(this.toJson());

}

