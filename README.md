# Streaming-Data-Warehouse-with-Databricks-SQL

This repository contains the SQL scripts for a streaming data warehouse pipeline built using Databricks SQL and Delta Live Tables (DLT).

The project demonstrates how to ingest real-time data by defining Streaming Tables. It then implements a core data warehousing concept, Slowly Changing Dimensions (SCD), to correctly manage historical changes in dimension data (like item prices or descriptions).

Key Components & Project Recall (File Breakdown)
Here is what each SQL file in the project does:

Query_init (SQL Source File)

Purpose: This is the setup script. It was likely used to create the initial database, or to manually create the raw source tables that the DLT pipeline would read from.

Streaming Table & SCD (SQL Source File)

Purpose: This is the core pipeline logic. This single SQL file defines the entire DNT (Delta Live Tables) pipeline. It contains:

CREATE STREAMING LIVE TABLE (bronze_table): Code to read a streaming source (like Kafka or a landing-zone directory).

APPLY CHANGES INTO (silver_table): The most important part. This DLT syntax is used to implement the SCD logic. It reads from the bronze streaming table and intelligently INSERTs, UPDATEs, or DELETEs records in the final items table, tracking history as specified.

items4scd (SQL Source File)

Purpose: This is a testing and support script. It likely contains a series of INSERT, UPDATE, or DELETE statements that you ran against the source table. This was done to generate new data and test if your Streaming Table & SCD pipeline correctly detected and handled these changes.
