-- CREATE DOMAIN numberplateType AS CHARACTER(8)
-- CONSTRAINT checkNumberplateFormat CHECK (VALUE IS NOT NULL AND VALUE ~ '^((?:[A-HJ-PR-Y][A-HJ-PR-Y]\s?(?:0[2-9]|[1-9][0-9])\s?[A-HJ-PR-Z]{3})|(?:[A-Z](?:[IZ][A-Z]|[A-Z][IZ])\s?\d{1,4})|(?:[A-HJ-NP-TV-Y]\s?\d{1,3}\s?[A-Z]{3})|(?:[A-Z]{3}\s?\d{1,3}\s?[A-HJ-NPR-TV-Y])|(?:\d{1,3}\s?[A-HJ-Y]{1,3}|[A-HJ-Y]{1,3}\s?\d{1,3})|(?:\d{1,4}\s?(?:[IZ][A-Z]|[A-Z][IZ]))|(?:[A-Z]{1,2}\s?\d{1,4}))$');

-- CREATE TABLE Vehicle (
--   VehicleID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
--   Numberplate numberplateType,
--   TenantID INT
-- )

INSERT INTO Vehicle (Numberplate, TenantID) VALUES ('TN99DRT', 0);

-- DROP DOMAIN numberplateType;
