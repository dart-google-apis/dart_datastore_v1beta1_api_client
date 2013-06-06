part of datastore_v1beta1_api_client;

class DatasetsResource_ extends Resource {

  DatasetsResource_(Client client) : super(client) {
  }

  /**
   * Allocate IDs for incomplete keys (useful for referencing an entity before it is inserted).
   *
   * [request] - AllocateIdsRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AllocateIdsResponse> allocateIds(AllocateIdsRequest request, core.String datasetId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{datasetId}/allocateIds";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AllocateIdsResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Begin a new transaction.
   *
   * [request] - BeginTransactionRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BeginTransactionResponse> beginTransaction(BeginTransactionRequest request, core.String datasetId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{datasetId}/beginTransaction";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BeginTransactionResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Create, delete or modify some entities outside a transaction.
   *
   * [request] - BlindWriteRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BlindWriteResponse> blindWrite(BlindWriteRequest request, core.String datasetId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{datasetId}/blindWrite";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BlindWriteResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Commit a transaction, optionally creating, deleting or modifying some entities.
   *
   * [request] - CommitRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CommitResponse> commit(CommitRequest request, core.String datasetId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{datasetId}/commit";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommitResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Look up some entities by key.
   *
   * [request] - LookupRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LookupResponse> lookup(LookupRequest request, core.String datasetId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{datasetId}/lookup";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LookupResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Roll back a transaction.
   *
   * [request] - RollbackRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RollbackResponse> rollback(RollbackRequest request, core.String datasetId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{datasetId}/rollback";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new RollbackResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Query for entities.
   *
   * [request] - RunQueryRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RunQueryResponse> runQuery(RunQueryRequest request, core.String datasetId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{datasetId}/runQuery";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new RunQueryResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

