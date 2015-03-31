/************************************************************************************************/
/* IMPORT DUMMY DATA BORDERS
 *
 * This query imports test data for borders
 */
/************************************************************************************************/

-- Create the borders

SELECT vtm.insert_properties_helper('Swiss border'::text, 'border'::text, 'Dummy'::text, 'geom'::text, 2000, NULL, 'MULTILINESTRING((7.08901391316315888 47.49999999998289013, 9.13116786239279676 47.67374101324419655, 9.65897672173592703 47.3848912641537936, 9.48635336448807998 47.0386146620746004, 10.47922553935810619 46.8870881581172938, 10.48293918844679773 46.55812377176319927, 10.03156601725419961 46.26452829191578786, 9.39890080958340413 46.48965678076059049, 8.99494284648636011 45.76728133607888793, 8.45478180741129393 46.48582545640329755, 8.00633980959812419 45.84365411046159267, 6.93105377476469009 45.86482610599698972))'::text);

SELECT vtm.insert_properties_helper('French border'::text, 'border'::text, 'Dummy'::text, 'geom'::text, 2000, NULL, 'MULTILINESTRING((6.93105377476469009 45.86482610599698972, 7.83628666710545918 43.8413029746406977, 3.18274398309068651 42.38328475038588294, -1.78244956512760222 43.37816934689979576, -1.2141606490462391 46.15600161012878999, -4.75155484181366372 48.38158860840097475, -1.56396985001898758 48.8518488548143921, 1.58040269459102189 50.17645277429630823, 2.49999999999999689 51.04608768802518881, 7.03792316637049087 48.55860343409138835, 7.08901391316315888 47.49999999998289013))'::text);

SELECT vtm.insert_properties_helper('Franco-Swiss static border'::text, 'border'::text, 'Dummy'::text, 'geom'::text, 2000, NULL, 'MULTILINESTRING((6.93105377476469009 45.86482610599698972, 6.77973408806686439 46.39786262306628828))'::text);

SELECT vtm.insert_properties_helper('Franco-Swiss evolving border'::text, 'border'::text, 'Dummy'::text, 'geom'::text, 1900, NULL, 'MULTILINESTRING((6.77973408806686439 46.39786262306628828, 7.30730869262946747 47.06044662595470385, 7.08901391316315888 47.49999999998289013))'::text);

SELECT vtm.insert_properties_helper('Franco-Swiss evolving border'::text, 'border'::text, 'Dummy'::text, 'geom'::text, 2000, NULL, 'MULTILINESTRING((6.77973408806686439 46.39786262306628828, 6.04536080212378302 46.43079279528068071, 7.08901391316315888 47.49999999998289013))'::text);


-- Create the countries

SELECT vtm.insert_properties_helper('Switzerland'::text, 'state'::text, 'Dummy'::text, 'geom'::text, 2000, NULL, 'MULTIPOLYGON(((7.74409530993728179 47.08896486925988967,7.81770780107013774 46.66124102315550459,8.68265457188121559 46.79999535642764386,8.73786394023085755 47.18911044040800107,7.74409530993728179 47.08896486925988967)))'::text);

SELECT vtm.insert_properties_helper('France'::text, 'state'::text, 'Dummy'::text, 'geom'::text, 2000, NULL, 'MULTIPOLYGON(((1.59745230034367269 47.66222724530688737,1.32140545859545688 46.10265263411412917,4.06347075329440166 46.06435890885139628,3.91624577102868709 47.46353845058283127,1.59745230034367269 47.66222724530688737)))'::text);


-- Populate the geometry_by_borders tables

INSERT INTO vtm.geom_by_borders(entity_id,border_id) VALUES (currval('vtm.entities_id_seq')-1,currval('vtm.entities_id_seq')-5);
INSERT INTO vtm.geom_by_borders(entity_id,border_id) VALUES (currval('vtm.entities_id_seq')-1,currval('vtm.entities_id_seq')-3);
INSERT INTO vtm.geom_by_borders(entity_id,border_id) VALUES (currval('vtm.entities_id_seq')-1,currval('vtm.entities_id_seq')-2);

INSERT INTO vtm.geom_by_borders(entity_id,border_id) VALUES (currval('vtm.entities_id_seq')-0,currval('vtm.entities_id_seq')-4);
INSERT INTO vtm.geom_by_borders(entity_id,border_id) VALUES (currval('vtm.entities_id_seq')-0,currval('vtm.entities_id_seq')-3);
INSERT INTO vtm.geom_by_borders(entity_id,border_id) VALUES (currval('vtm.entities_id_seq')-0,currval('vtm.entities_id_seq')-2);
