/*
 * Copyright (C) 2007-2016, GoodData(R) Corporation. All rights reserved.
 */
namespace java com.gooddata.datawarehouse.jdbc.common
namespace py gdc.datawarehouse.jdbc.common

/**
 * Defines meaning of 'secret' parameter passed to login method.
 **/
enum SecretType {
    PASSWORD,
    SST
}

/**
 * Defines type of execute method.
 **/
enum ExecuteMethodType {
    EXECUTE,
    QUERY,
    UPDATE
}

/**
 * Defines closable resources used by proxy.
 **/
enum ResourceType {
    STATEMENT,
    RESULT_SET
}

/**
 * Defines methods that can be used for connection metadata retrieval in the form of ResultSet.
 **/
enum MetadataResultSetMethod {
    GET_PROCEDURES,
    GET_PROCEDURE_COLUMNS,
    GET_TABLES,
    GET_SCHEMAS,
    GET_CATALOGS,
    GET_TABLE_TYPES,
    GET_COLUMNS,
    GET_COLUMN_PRIVILEGES,
    GET_TABLE_PRIVILEGES,
    GET_BEST_ROW_IDENTIFIER,
    GET_VERSION_COLUMNS,
    GET_PRIMARY_KEYS,
    GET_IMPORTED_KEYS,
    GET_EXPORTED_KEYS,
    GET_CROSS_REFERENCE,
    GET_TYPE_INFO,
    GET_INDEX_INFO,
    GET_UDTS,
    GET_SUPER_TYPES,
    GET_SUPER_TABLES,
    GET_ATTRIBUTES,
    GET_CLIENT_INFO_PROPERTIES,
    GET_FUNCTIONS,
    GET_FUNCTION_COLUMNS,
    GET_PSEUDO_COLUMNS
}

/**
 * Defines methods that can be used for simple string connection metadata retrieval.
 **/
enum MetadataSimpleMethod {
    ALL_PROCEDURES_ARE_CALLABLE,
    ALL_TABLES_ARE_SELECTABLE,
    GET_USER_NAME,
    IS_READ_ONLY,
    NULLS_ARE_SORTED_HIGH,
    NULLS_ARE_SORTED_LOW,
    NULLS_ARE_SORTED_AT_START,
    NULLS_ARE_SORTED_AT_END,
    USES_LOCAL_FILES,
    USES_LOCAL_FILE_PER_TABLE,
    SUPPORTS_MIXED_CASE_IDENTIFIERS,
    STORES_UPPER_CASE_IDENTIFIERS,
    STORES_LOWER_CASE_IDENTIFIERS,
    STORES_MIXED_CASE_IDENTIFIERS,
    SUPPORTS_MIXED_CASE_QUOTED_IDENTIFIERS,
    STORES_UPPER_CASE_QUOTED_IDENTIFIERS,
    STORES_LOWER_CASE_QUOTED_IDENTIFIERS,
    STORES_MIXED_CASE_QUOTED_IDENTIFIERS,
    GET_IDENTIFIER_QUOTE_STRING,
    GET_SQL_KEYWORDS,
    GET_NUMERIC_FUNCTIONS,
    GET_STRING_FUNCTIONS,
    GET_SYSTEM_FUNCTIONS,
    GET_TIME_DATE_FUNCTIONS,
    GET_SEARCH_STRING_ESCAPE,
    GET_EXTRA_NAME_CHARACTERS,
    SUPPORTS_ALTER_TABLE_WITH_ADD_COLUMN,
    SUPPORTS_ALTER_TABLE_WITH_DROP_COLUMN,
    SUPPORTS_COLUMN_ALIASING,
    NULL_PLUS_NON_NULL_IS_NULL,
    SUPPORTS_CONVERT,
    SUPPORTS_TABLE_CORRELATION_NAMES,
    SUPPORTS_DIFFERENT_TABLE_CORRELATION_NAMES,
    SUPPORTS_EXPRESSIONS_IN_ORDER_BY,
    SUPPORTS_ORDER_BY_UNRELATED,
    SUPPORTS_GROUP_BY,
    SUPPORTS_GROUP_BY_UNRELATED,
    SUPPORTS_GROUP_BY_BEYOND_SELECT,
    SUPPORTS_LIKE_ESCAPE_CLAUSE,
    SUPPORTS_MULTIPLE_RESULT_SETS,
    SUPPORTS_MULTIPLE_TRANSACTIONS,
    SUPPORTS_NON_NULLABLE_COLUMNS,
    SUPPORTS_MINIMUM_SQL_GRAMMAR,
    SUPPORTS_CORE_SQL_GRAMMAR,
    SUPPORTS_EXTENDED_SQL_GRAMMAR,
    SUPPORTS_ANSI92_ENTRY_LEVEL_SQL,
    SUPPORTS_ANSI92_INTERMEDIATE_SQL,
    SUPPORTS_ANSI92_FULL_SQL,
    SUPPORTS_INTEGRITY_ENHANCEMENT_FACILITY,
    SUPPORTS_OUTER_JOINS,
    SUPPORTS_FULL_OUTER_JOINS,
    SUPPORTS_LIMITED_OUTER_JOINS,
    GET_SCHEMA_TERM,
    GET_PROCEDURE_TERM,
    GET_CATALOG_TERM,
    IS_CATALOG_AT_START,
    GET_CATALOG_SEPARATOR,
    SUPPORTS_SCHEMAS_IN_DATA_MANIPULATION,
    SUPPORTS_SCHEMAS_IN_PROCEDURE_CALLS,
    SUPPORTS_SCHEMAS_IN_TABLE_DEFINITIONS,
    SUPPORTS_SCHEMAS_IN_INDEX_DEFINITIONS,
    SUPPORTS_SCHEMAS_IN_PRIVILEGE_DEFINITIONS,
    SUPPORTS_CATALOGS_IN_DATA_MANIPULATION,
    SUPPORTS_CATALOGS_IN_PROCEDURE_CALLS,
    SUPPORTS_CATALOGS_IN_TABLE_DEFINITIONS,
    SUPPORTS_CATALOGS_IN_INDEX_DEFINITIONS,
    SUPPORTS_CATALOGS_IN_PRIVILEGE_DEFINITIONS,
    SUPPORTS_POSITIONED_DELETE,
    SUPPORTS_POSITIONED_UPDATE,
    SUPPORTS_SELECT_FOR_UPDATE,
    SUPPORTS_STORED_PROCEDURES,
    SUPPORTS_SUBQUERIES_IN_COMPARISONS,
    SUPPORTS_SUBQUERIES_IN_EXISTS,
    SUPPORTS_SUBQUERIES_IN_INS,
    SUPPORTS_SUBQUERIES_IN_QUANTIFIEDS,
    SUPPORTS_CORRELATED_SUBQUERIES,
    SUPPORTS_UNION,
    SUPPORTS_UNION_ALL,
    SUPPORTS_OPEN_CURSORS_ACROSS_COMMIT,
    SUPPORTS_OPEN_CURSORS_ACROSS_ROLLBACK,
    SUPPORTS_OPEN_STATEMENTS_ACROSS_COMMIT,
    SUPPORTS_OPEN_STATEMENTS_ACROSS_ROLLBACK,
    GET_MAX_BINARY_LITERAL_LENGTH,
    GET_MAX_CHAR_LITERAL_LENGTH,
    GET_MAX_COLUMN_NAME_LENGTH,
    GET_MAX_COLUMNS_IN_GROUP_BY,
    GET_MAX_COLUMNS_IN_INDEX,
    GET_MAX_COLUMNS_IN_ORDER_BY,
    GET_MAX_COLUMNS_IN_SELECT,
    GET_MAX_COLUMNS_IN_TABLE,
    GET_MAX_CONNECTIONS,
    GET_MAX_CURSOR_NAME_LENGTH,
    GET_MAX_INDEX_LENGTH,
    GET_MAX_SCHEMA_NAME_LENGTH,
    GET_MAX_PROCEDURE_NAME_LENGTH,
    GET_MAX_CATALOG_NAME_LENGTH,
    GET_MAX_ROW_SIZE,
    DOES_MAX_ROW_SIZE_INCLUDE_BLOBS,
    GET_MAX_STATEMENT_LENGTH,
    GET_MAX_STATEMENTS,
    GET_MAX_TABLE_NAME_LENGTH,
    GET_MAX_TABLES_IN_SELECT,
    GET_MAX_USER_NAME_LENGTH,
    GET_DEFAULT_TRANSACTION_ISOLATION,
    SUPPORTS_TRANSACTIONS,
    SUPPORTS_TRANSACTION_ISOLATION_LEVEL,
    SUPPORTS_DATA_DEFINITION_AND_DATA_MANIPULATION_TRANSACTIONS,
    SUPPORTS_DATA_MANIPULATION_TRANSACTIONS_ONLY,
    DATA_DEFINITION_CAUSES_TRANSACTION_COMMIT,
    DATA_DEFINITION_IGNORED_IN_TRANSACTIONS,
    SUPPORTS_RESULT_SET_TYPE,
    SUPPORTS_RESULT_SET_CONCURRENCY,
    OWN_UPDATES_ARE_VISIBLE,
    OWN_DELETES_ARE_VISIBLE,
    OWN_INSERTS_ARE_VISIBLE,
    OTHERS_UPDATES_ARE_VISIBLE,
    OTHERS_DELETES_ARE_VISIBLE,
    OTHERS_INSERTS_ARE_VISIBLE,
    UPDATES_ARE_DETECTED,
    DELETES_ARE_DETECTED,
    INSERTS_ARE_DETECTED,
    SUPPORTS_BATCH_UPDATES,
    SUPPORTS_SAVEPOINTS,
    SUPPORTS_NAMED_PARAMETERS,
    SUPPORTS_MULTIPLE_OPEN_RESULTS,
    SUPPORTS_GET_GENERATED_KEYS,
    SUPPORTS_RESULT_SET_HOLDABILITY,
    GET_RESULT_SET_HOLDABILITY,
    GET_SQL_STATE_TYPE,
    LOCATORS_UPDATE_COPY,
    SUPPORTS_STATEMENT_POOLING,
    GET_DATABASE_MAJOR_VERSION,
    GET_DATABASE_MINOR_VERSION,
    GET_DATABASE_PRODUCT_NAME,
    GET_DATABASE_PRODUCT_VERSION
}

/**
 * Proxy exception that can be thrown from proxy server. Defines unique identifiers that enables matching client
 * exceptions to server ones.
 **/
exception ProxyException {
    1: string connectionId
    2: string exceptionId
    3: string message
}

/**
 * Proxy SQL exception that can be thrown from proxy server. Defines unique identifiers that enables matching client
 * exceptions to server ones.
 **/
exception ProxySqlException {
    1: string connectionId
    2: string exceptionId
    3: string message
    4: i32 errorCode
    5: string sqlState
}

/**
 * ADS SQL exception thrown from proxy server whether client offered protocol versions which are not acceptable by server.
 **/
exception UnsupportedClientException {
    1: string connectionId
    2: string exceptionId
    3: string message
}

/**
 * Auth options as an argument for the auth() method. Mainly client info and client supported protocol versions.
 **/
struct AuthOptions {
    1: string clientName
    2: string clientVersion
    3: set<i32> supportedProtocolVersions
    4: SecretType secretType
    5: map<string,string> params
    6: string domainHostname
}

/**
 * Auth result as a return type of the auth() method. Mainly server info and chosen protocol version.
 **/
struct AuthResult {
    1: string connectionId
    2: string serverVersion
    3: i32 protocolVersion
    4: map<string, string> params
}

/**
 * ResultSet specific metadata about one column
 **/
struct ResultSetMetaDataColumn {
    2: bool autoIncrement,
    3: bool caseSensitive,
    4: bool searchable,
    5: bool currency,
    6: i32 nullable,
    7: bool signed,
    8: i32 columnDisplaySize,
    9: string columnLabel,
    10: string columnName,
    11: string schemaName,
    12: i32 precision,
    13: i32 scale,
    14: string tableName,
    15: string catalogName,
    16: i32 columnType,
    17: string columnTypeName,
    18: bool readOnly,
    19: bool writable,
    20: bool definitelyWritable,
    21: string columnClassName
}

/**
 * Result set metadata.
 *
 * List [[columns]] contains information about all columns from given result set.
 **/
struct ResultSetMetaData {
    1: list<ResultSetMetaDataColumn> columns
}

/**
 * Data structure used for transfering result-set-like connection metadata.
 * <p/>
 * Rows and columns are stored in <code>values</code> field and appended to each other without any length and/or type
 * information. Client has to base its decoding algorithm on result-set's metadata that can be retrieved from
 * <code>metadata</code> field.
 * <p/>
 * Each row is encoded into two parts. First <code>(columnCount + 7) / 8</code> bytes are used to transfer 1 bit for
 * each column. Set bit indicates that column value is written after this initial block. Cleared bit indicates
 * that there is no value transferred and column is null. Whether bit is set can be detected by
 * <code>(bytes[n/8] & (1<<(n%8))) != 0</code> - for all 0 < n < columnCount
 * <p>
 * Column values for each set bit are appended after "header" bytes and are encoded using Thrift's binary protocol.
 **/
struct SimpleDataSetBinary {
    1: binary values;
    2: ResultSetMetaData metadata;
}

struct CopyFileRequest {
    1: string copyFileId,
    2: string localFilePath
}

/**
 * Wrapper describing and identifying server side query execution.
 **/
struct ExecutionDescriptor {
    1: string executionId,
    2: list<CopyFileRequest> uploadRequests,
    3: list<CopyFileRequest> downloadRequests
}

/**
 * Wrapper for all possible results of sql execution.
 **/
struct ExecutionResult {
    1: i32 updatedCount
    2: string resultSetId
}

/**
 * All possible method parameters we want to pass through our protocol
 **/
union MethodParameter {
    1: i32 intValue,
    2: bool boolValue,
    3: string stringValue,
    4: list<i32> intArray,
    5: list<bool> boolArray,
    6: list<string> stringArray,
    7: bool nullValue
}

/**
 * All possible parameters that can be set on connection.
 **/
enum ConnectionParameter {
    READ_ONLY,
    TRANSACTION_ISOLATION,
    AUTO_COMMIT,
    CATALOG
}

service JdbcProxy {

    /**
     * Returns version of the JDBC Proxy
     **/
    string getVersion(),

    /**
     * Performs login to ADS, provides server with client info and client supported protocol versions.
     * The server choosen protocol version is returned as the result value.
     **/
    AuthResult auth(1: string instanceId, 2: string username, 3: string secret, 4: AuthOptions opts)
       throws (1: ProxyException loginEx, 2: ProxySqlException sqlException, 3: UnsupportedClientException clientEx),

    /**
     * Closes connection to database and free used resources
     **/
    void close() throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    //============ QUERY EXECUTION SECTION ===============

    /**
     * Executes given SQL on server as provided method type. If you're asked for file fragments, you should use
     * {@link sendFileFragment} method to copy file to server. After all necessary calls proceed to
     * {@link getNextExecutionResult} call.
     **/
    ExecutionDescriptor execute(1: string sql, 2: ExecuteMethodType methodType) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    /**
     * This method initializes file transfer from client to server.
     *
     * It must be called before using 'sendFileFragment' or you'll suffer consequences.
     **/
    void initializeFileTransfer(1: string copyFileId, 2: string hash, 3: i64 fileSize) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    /**
     * Method for transferring file fragment from client to server
     **/
    void sendFileFragment(1: string copyFileId, 2: binary fileFragment) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    /**
     * Method for transferring file fragment from server to client
     **/
    binary receiveFileFragment(1: string copyFileId) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    /**
     * Returns description of the next execution result identified by given ID. In the case there are existing already
     * opened result sets, they are closed.
     * <p/>
     * If <code>updatedCount == -1 && resultSetId == null</code> there are no more results to get.
     * If resultSetId is not <code>null</code> then results can be retrieved via queryResultSet method.
     **/
    ExecutionResult getNextExecutionResult(1: string executionId) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    /**
     * Retrieves resutls of the provided result-set ID. Results are returned in batches to conserver communication
     * overhead. Rows and columns are encoded to binary and have to be decoded in client's code.
     * <p/>
     * For the description of binary format see documentation of SimpleDataSetBinary.
     *
     * @see SimpleDataSetBinary
     **/
    binary queryResultSetBinary(1: string resultSetId) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    /**
     * Closes resource identified by given ID and resource type.
     **/
    void closeResource(1: string id, 2: ResourceType resourceType) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    //============ CONNECTION COMMIT METHODS =================

    /**
     * Makes all changes made since the previous commit/rollback permanent and releases any database locks
     * currently held by current connection.
     * This method should be used only when auto-commit mode has been disabled.
     **/
    void commit() throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    /**
     * Undoes all changes made in the current transaction and releases any database locks currently held
     * by current connection. This method should be used only when auto-commit mode has been disabled.
     **/
    void rollback() throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    //============== CONNECTION PARAM METHODS ================

    /**
     * Sets given connection parameter to provided value.
     **/
    void setConnectionParameter(1: ConnectionParameter param, 2: MethodParameter value) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    /**
     * Retrieves value of the provided connection parameter.
     **/
    MethodParameter getConnectionParameter(1: ConnectionParameter param) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    //============ RESULT-SET METADATA SECTION ===============

    /**
     * Gets all metadata about given result set
     **/
    ResultSetMetaData getResultSetMetadata(1: string resultSetId) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    //============ CONNECTION METADATA SECTION ===============
    /**
     * Gets simple connection metadata - should be used to get simple values like booleans, integers, string etc
     *
     * Complex results should be fetched via getConnectionMetadataComplex
     **/
    string getConnectionMetadataSimple(1: MetadataSimpleMethod method, 2: list<MethodParameter> params) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

    /**
     * Gets result-set-like connection metadata. ResultSet is encoded to binary form and has to be decoded in client's code.
     * <p/>
     * For the description of binary format see documentation of SimpleDataSetBinary.
     *
     * @see SimpleDataSetBinary
     **/
    SimpleDataSetBinary getConnectionMetadataResultSetBinary(1: MetadataResultSetMethod method, 2: list<MethodParameter> params) throws (1: ProxyException proxyEx, 2: ProxySqlException sqlException),

}
