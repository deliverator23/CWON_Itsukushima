--Types
INSERT INTO Types (Type, Kind) VALUES ('BUILDING_ITSUKUSHIMA', 'KIND_BUILDING');

--Buildings
INSERT INTO Buildings (BuildingType, Name, Description, PrereqTech, Cost, AdvisorType, MaxWorldInstances, IsWonder, RequiresPlacement, AllowsHolyCity, MustNotBeLake, MustBeAdjacentLand, ObsoleteEra, Quote, QuoteAudio, AdjacentDistrict)
VALUES ('BUILDING_ITSUKUSHIMA', 'LOC_BUILDING_ITSUKUSHIMA_NAME', 'LOC_BUILDING_ITSUKUSHIMA_DESCRIPTION', 'TECH_SHIPBUILDING', 400, 'ADVISOR_RELIGIOUS', 1, 1, 1, 1, 1, 1, 'ERA_INDUSTRIAL', 'LOC_BUILDING_ITSUKUSHIMA_QUOTE', 'Play_Wonder_Music_Itsukushima', 'DISTRICT_HOLY_SITE');

--Building_ValidTerrains
INSERT INTO Building_ValidTerrains (BuildingType, TerrainType) VALUES ('BUILDING_ITSUKUSHIMA', 'TERRAIN_COAST');

--Building_YieldChanges
INSERT INTO Building_YieldChanges (BuildingType, YieldType, YieldChange) VALUES ('BUILDING_ITSUKUSHIMA', 'YIELD_FAITH', 1);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, YieldChange) VALUES ('BUILDING_ITSUKUSHIMA', 'YIELD_CULTURE', 1);

--Modifiers
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('ITSUKUSHIMA_ADDAPPEAL', 'MODIFIER_SINGLE_CITY_ADJUST_CITY_APPEAL');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('ITSUKUSHIMA_GRANT_MONUMENT', 'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY_IGNORE');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('ITSUKUSHIMA_THEATER_COAST_CULTURE', 'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('ITSUKUSHIMA_HOLY_SITE_COAST_FAITH', 'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY');

--ModifierArguments
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_ADDAPPEAL', 'Amount', 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_GRANT_MONUMENT', 'BuildingType', 'BUILDING_MONUMENT');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_THEATER_COAST_CULTURE', 'DistrictType', 'DISTRICT_THEATER');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_THEATER_COAST_CULTURE', 'TerrainType', 'TERRAIN_COAST');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_THEATER_COAST_CULTURE', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_THEATER_COAST_CULTURE', 'Amount', 0.5);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_THEATER_COAST_CULTURE', 'Description', 'LOC_BUILDING_ITSUKUSHIMA_THEATER_COAST_CULTURE');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_HOLY_SITE_COAST_FAITH', 'DistrictType', 'DISTRICT_HOLY_SITE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_HOLY_SITE_COAST_FAITH', 'TerrainType', 'TERRAIN_COAST');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_HOLY_SITE_COAST_FAITH', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_HOLY_SITE_COAST_FAITH', 'Amount', 1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ITSUKUSHIMA_HOLY_SITE_COAST_FAITH', 'Description', 'LOC_BUILDING_ITSUKUSHIMA_HOLY_SITE_COAST_FAITH');

--BuildingModifiers
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES ('BUILDING_ITSUKUSHIMA', 'ITSUKUSHIMA_ADDAPPEAL');
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES ('BUILDING_ITSUKUSHIMA', 'ITSUKUSHIMA_GRANT_MONUMENT');
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES ('BUILDING_ITSUKUSHIMA', 'ITSUKUSHIMA_HOLY_SITE_COAST_FAITH');
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES ('BUILDING_ITSUKUSHIMA', 'ITSUKUSHIMA_THEATER_COAST_CULTURE');