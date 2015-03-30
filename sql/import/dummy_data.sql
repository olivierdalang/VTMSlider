
SELECT vtm.insert_properties_helper('Fondaco dei Tedeschi'::text, 'building'::text, 'Isabella draft'::text, 'geom'::text, 1650, 'MULTIPOLYGON(((12.3368878497105 45.4380208940809,12.3362694852308 45.4381327117705,12.3364426145651 45.4385343828056,12.3370213383101 45.438458843702,12.3368878497105 45.4380208940809)))'::text);

SELECT vtm.insert_properties_helper('Fondaco dei Tedeschi'::text, 'building'::text, 'Isabella draft'::text, 'geom'::text, 1325, 'MULTIPOLYGON(((12.3368878497105 45.4380208940809,12.3362694852308 45.4381327117705,12.3364426145651 45.4385343828056,12.3370213383101 45.438458843702,12.3368878497105 45.4380208940809),(12.3365009742531 45.4384265062985,12.3364229890179 45.4382258647756,12.3367449280656 45.4381725473278,12.3368089159509 45.438361964348,12.3365009742531 45.4384265062985)))'::text);

SELECT vtm.insert_properties_helper('Fondaco dei Tedeschi'::text, 'building'::text, 'Isabella draft'::text, 'height'::text, 1325, '18.5'::text);

SELECT vtm.insert_properties_helper('Main road'::text, 'street'::text, NULL, 'geom'::text, 1325, 'MULTILINESTRING((12.3354691696034 45.4377523198908,12.3360810537561 45.4382153415991,12.3361830344483 45.4386545071631,12.3361470412628 45.4387934118536))'::text);

SELECT vtm.insert_properties_helper('Leonardo da Vinci'::text, 'person'::text, NULL, 'geom'::text, 1325, 'MULTIPOINT(12.3359930704139 45.4382925115144)'::text);

SELECT vtm.insert_properties_helper('Grand Hôtel'::text, 'building'::text, NULL, 'geom'::text, 1995, 'MULTIPOLYGON(((12.33625902006198771 45.43834091804381359,12.33649497538885775 45.43827637599540736,12.33641699015370641 45.43804346277201489,12.33664294737350708 45.4380083853960528,12.33671293412300152 45.43823007404564152,12.33705886862764878 45.43815851641217307,12.33710485992017247 45.43832548408244065,12.33680891595087914 45.43836336743465409,12.33687290383613266 45.43861592246612702,12.33669693715168592 45.43861031014438367,12.33662895002360749 45.43841387853138514,12.33631700908299855 45.43847842042251273,12.33625902006198771 45.43834091804381359)))'::text);



INSERT INTO vtm.related_entities(a_id,b_id) VALUES (currval('vtm.entities_id_seq')-3,currval('vtm.entities_id_seq')-0);
INSERT INTO vtm.related_entities(a_id,b_id) VALUES (currval('vtm.entities_id_seq')-0,currval('vtm.entities_id_seq')-3);