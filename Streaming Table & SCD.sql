-- Create a streaming table, then use AUTO CDC to populate it:
CREATE OR REFRESH STREAMING TABLE DimAirports;

CREATE FLOW flow2
AS AUTO CDC INTO
  DimAirports
FROM stream(stream_airports)
  KEYS (airport_id)
  SEQUENCE BY airport_id
  STORED AS SCD TYPE 2;



  -- Create a streaming table, then use AUTO CDC to populate it:
CREATE OR REFRESH STREAMING TABLE DimPassengers;

CREATE FLOW flow
AS AUTO CDC INTO
  DimPassengers
FROM stream(stream_passengers)
  KEYS (passenger_id)
  SEQUENCE BY passenger_id
  STORED AS SCD TYPE 2;