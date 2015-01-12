UPDATE meterreading
SET "spatialGeometry" = ST_GeomFromText('POINT(' || longitude || ' ' || latitude || ')',4283);

UPDATE utilitysupplydata  
SET "utilitySupplyRegion" = ST_GeomFromText('POINT(' || "supplyRegionPoints" || ')',4283);

UPDATE combinedmeterreadings 
SET "spatialRepresentation" = ST_GeomFromText('POLYGON((' || "combinedMeterReadingsPoints" || '))',4283);
