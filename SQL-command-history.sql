-- CREATE DOMAIN numberplateType AS CHARACTER(8)
-- CONSTRAINT checkNumberplateFormat CHECK (VALUE IS NOT NULL AND VALUE ~ '^((?:[A-HJ-PR-Y][A-HJ-PR-Y]\s?(?:0[2-9]|[1-9][0-9])\s?[A-HJ-PR-Z]{3})|(?:[A-Z](?:[IZ][A-Z]|[A-Z][IZ])\s?\d{1,4})|(?:[A-HJ-NP-TV-Y]\s?\d{1,3}\s?[A-Z]{3})|(?:[A-Z]{3}\s?\d{1,3}\s?[A-HJ-NPR-TV-Y])|(?:\d{1,3}\s?[A-HJ-Y]{1,3}|[A-HJ-Y]{1,3}\s?\d{1,3})|(?:\d{1,4}\s?(?:[IZ][A-Z]|[A-Z][IZ]))|(?:[A-Z]{1,2}\s?\d{1,4}))$');

-- CREATE TABLE Vehicle (
--   VehicleID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
--   Numberplate numberplateType,
--   TenantID INT
-- )

INSERT INTO Vehicle (Numberplate, TenantID) VALUES ('TN99DRT', 0);

-- DROP DOMAIN numberplateType;

INSERT INTO "Carpark" (total_spaces, used_spaces) VALUES (50, 0);
INSERT INTO "Camera" (ip_address, event_url, response_format, carpark_id) VALUES ('80.209.154.135', '/NotificationInfo/TollgateInfo', '', 1);

SELECT * FROM "Camera", "Carpark";

-- UPDATE "Carpark" SET used_spaces = used_spaces + -1;
-- UPDATE "Log" SET exit_timestamp = '2020-05-27 20:00:13+00', exit_image_base64 = '' WHERE log_id = (SELECT MAX(log_id) FROM "Log" WHERE "Log".numberplate = '4R30SLK');


-- INSERT INTO "Log" (camera_id, numberplate, entry_timestamp, entry_image_base64) VALUES (1, 'SZ66KYT', '2020-05-27 20:00:13+00', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDABALDA4MChAODQ4SERATGCgaGBYWGDEjJR0oOjM9PDkzODdASFxOQERXRTc4UG1RV19iZ2hnPk1xeXBkeFxlZ2P//gf+ARAA7gAAAAAAAAAAAAAAAAEAA...nG1BwD2/Omw3tvKmyBZHdifkVcYHrmgD/2Q==');
-- SELECT * FROM "Log";

-- SELECT MAX("Log".log_id) FROM "Log" WHERE "Log".numberplate = '4R30SLK';

-- INSERT INTO "Tenant" (forename, surname) VALUES ('John', 'Smith');
-- INSERT INTO "Tenant" (forename, surname) VALUES ('William', 'Els');
-- INSERT INTO "Tenant" (forename, surname) VALUES ('Dan', 'Pett');

-- SELECT * FROM "Tenant";
-- INSERT INTO "Vehicle" (numberplate, tenant_id) VALUES ('4R30SLK', 1);
-- INSERT INTO "Vehicle" (numberplate, tenant_id) VALUES ('SZ66KYT', 1);
-- INSERT INTO "Vehicle" (numberplate, tenant_id) VALUES ('S21NYG', 1);

-- SELECT * FROM "Tenant", "Vehicle" WHERE "Vehicle".tenant_id = "Tenant".tenant_id;

SELECT * FROM "Camera";

UPDATE "Carpark" SET used_spaces = used_spaces + 1 FROM "Camera" WHERE "Carpark".carpark_id = "Camera".carpark_id AND "Camera".ip_address = '80.209.154.135';
SELECT * FROM "Carpark";