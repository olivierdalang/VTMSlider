/************************************************************************************************/
/* TYPES
 *
 * This query creates some basic types and attributes
 *
 */
/************************************************************************************************/


INSERT INTO vtm.entity_types( name, min_zoom, max_zoom, zindex ) VALUES
	( 'autogenerated', null, null, 10000.0), -- must stay id 1 since it's hardcoded as default
	( 'border', null, 12, 6.0 ),
	( 'state', null, 12, 5.0 ),
	( 'building', 15, null, 4.0 ),
	( 'street', 15, null, 3.0 ),
	( 'isola', 10, null, 2.0 ),
	( 'canal', 10, null, 1.0 );

INSERT INTO vtm.properties_types( name, description, type, subtype ) VALUES
	( 'geom', 					'Geometry in plan',									 	'text', 	'wkt' ), 		-- must stay id 1 for geom is hardcoded in the geom extension
	( 'geom_by_borders', 		'Entity that constitutes one border of this entity', 	'integer', 	'entity_id' ), 	-- must stay id 2 for geom_by_borders is hardcoded in the geom_by_borders extension
	( 'succession_relation', 	'Entity that has succession relation with this entity', 'integer', 	'entity_id' ), 	-- must stay id 3 for succession_relation is hardcoded to compute date boundaries
	( 'clone', 					'Property to clone at a different date', 				'integer', 	'property_id' ), 	-- must stay id 4 for clone is hardcoded to compute clones
	( 'usage',NULL,NULL,NULL ),
	( 'height',NULL,NULL,NULL ),
	( 'owner',NULL,NULL,NULL ),
	( 'building material',NULL,NULL,NULL );
