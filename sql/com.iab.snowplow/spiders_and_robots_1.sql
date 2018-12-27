-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.4.0
-- Generated: 2018-06-07 09:29 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_iab_snowplow_spiders_and_robots_1 (
    "schema_vendor"   VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "schema_name"     VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "schema_format"   VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "schema_version"  VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "root_id"         CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"     TIMESTAMP     ENCODE ZSTD      NOT NULL,
    "ref_root"        VARCHAR(255)  ENCODE ZSTD      NOT NULL,
    "ref_tree"        VARCHAR(1500) ENCODE ZSTD      NOT NULL,
    "ref_parent"      VARCHAR(255)  ENCODE ZSTD      NOT NULL,
    "category"        VARCHAR(24)   ENCODE ZSTD      NOT NULL,
    "primary_impact"  VARCHAR(23)   ENCODE ZSTD      NOT NULL,
    "reason"          VARCHAR(17)   ENCODE ZSTD      NOT NULL,
    "spider_or_robot" BOOLEAN       ENCODE RUNLENGTH NOT NULL,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_iab_snowplow_spiders_and_robots_1 IS 'iglu:com.iab.snowplow/spiders_and_robots/jsonschema/1-0-0';