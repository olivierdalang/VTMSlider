/************************************************************************************************/
/* TYPES
 *
 * This query creates some basic types and attributes
 *
 */
/************************************************************************************************/


INSERT INTO vtm.entity_types( name, min_zoom, max_zoom, zindex ) VALUES
	( 'border', null, 12, 6.0 ),
	( 'state', null, 12, 5.0 ),
	( 'building', 15, null, 4.0 ),
	( 'street', 15, null, 3.0 ),
	( 'isola', 10, null, 2.0 ),
	( 'canal', 10, null, 1.0 );

INSERT INTO vtm.properties_types( name ) VALUES
	( 'geom' ), -- must stay id 1 for geom is hardcoded in the geom extension
	( 'geom_by_borders' ), -- must stay id 2 for geom_by_borders is hardcoded in the geom_by_borders extension
	( 'height' ),
	( 'owner' ),
	( 'building material' );
