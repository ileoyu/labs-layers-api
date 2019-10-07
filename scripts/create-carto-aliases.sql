-- You can query to see all views that exist in Carto using this SQL:
-- SELECT viewname, definition FROM pg_views WHERE schemaname = 'planninglabs' ORDER BY viewname

-- When a new source data table is uploaded on Carto, these commands can be updated accordingly and run in the Carto UI to redefine the view. Please note that this list includes tables that aren't actually consumed in the layers-API, but they're included here for record keeping of all views that are available.

DROP VIEW IF EXISTS appendixj_designated_mdistricts;
CREATE VIEW appendixj_designated_mdistricts AS
	(SELECT * FROM appendixj_designated_mdistricts_v201712);
GRANT SELECT ON appendixj_designated_mdistricts TO publicuser;

DROP VIEW IF EXISTS bike_routes;
CREATE VIEW bike_routes AS
	(SELECT * FROM bike_routes_v20180913);
GRANT SELECT ON bike_routes TO publicuser;

DROP VIEW IF EXISTS bk_qn_mh_boundary;
CREATE VIEW bk_qn_mh_boundary AS
	(SELECT * FROM bk_qn_mh_boundary_v201804);
GRANT SELECT ON bk_qn_mh_boundary TO publicuser;

DROP VIEW IF EXISTS boro_boundaries;
CREATE VIEW boro_boundaries AS
	(SELECT * FROM boro_boundaries_V201811);
GRANT SELECT ON boro_boundaries TO publicuser;

DROP VIEW IF EXISTS business_improvement_districts;
CREATE VIEW business_improvement_districts AS
	(SELECT * FROM business_improvement_districts_v0);
GRANT SELECT ON business_improvement_districts TO publicuser;

DROP VIEW IF EXISTS cd_floodplains;
CREATE VIEW cd_floodplains AS
	(SELECT * FROM cd_floodplains_v201902);
GRANT SELECT ON cd_floodplains TO publicuser;

DROP VIEW IF EXISTS citibike_stations;
CREATE VIEW citibike_stations AS
	(SELECT * FROM twg_i75aydysqbrqk9zgvg);
GRANT SELECT ON citibike_stations TO publicuser;

DROP VIEW IF EXISTS citymap_amendments;
CREATE VIEW citymap_amendments AS
	(SELECT * FROM citymap_amendments_v3);
GRANT SELECT ON citymap_amendments TO publicuser;

DROP VIEW IF EXISTS citymap_arterials;
CREATE VIEW citymap_arterials AS
	(SELECT * FROM citymap_arterials_v0);
GRANT SELECT ON citymap_arterials TO publicuser;

DROP VIEW IF EXISTS citymap_bulkheadlines;
CREATE VIEW citymap_bulkheadlines AS
	(SELECT * FROM citymap_bulkheadlines_v1);
GRANT SELECT ON citymap_bulkheadlines TO publicuser;

DROP VIEW IF EXISTS citymap_citymap;
CREATE VIEW citymap_citymap AS
	(SELECT * FROM citymap_citymap_v1);
GRANT SELECT ON citymap_citymap TO publicuser;

DROP VIEW IF EXISTS citymap_pierheadlines;
CREATE VIEW citymap_pierheadlines AS
	(SELECT * FROM citymap_pierheadlines_v1);
GRANT SELECT ON citymap_pierheadlines TO publicuser;

DROP VIEW IF EXISTS citymap_rails;
CREATE VIEW citymap_rails AS
	(SELECT * FROM citymap_rails_v0);
GRANT SELECT ON citymap_rails TO publicuser;

DROP VIEW IF EXISTS citymap_streetcenterlines;
CREATE VIEW citymap_streetcenterlines AS
	(SELECT * FROM citymap_streetcenterlines_v1);
GRANT SELECT ON citymap_streetcenterlines TO publicuser;

DROP VIEW IF EXISTS citymap_streetnamechanges_areas;
CREATE VIEW citymap_streetnamechanges_areas AS
	(SELECT * FROM citymap_streetnamechanges_areas_v0);
GRANT SELECT ON citymap_streetnamechanges_areas TO publicuser;

DROP VIEW IF EXISTS citymap_streetnamechanges_points;
CREATE VIEW citymap_streetnamechanges_points AS
	(SELECT * FROM citymap_streetnamechanges_points_v0);
GRANT SELECT ON citymap_streetnamechanges_points TO publicuser;

DROP VIEW IF EXISTS citymap_streetnamechanges_streets;
CREATE VIEW citymap_streetnamechanges_streets AS
	(SELECT * FROM citymap_streetnamechanges_streets_v0);
GRANT SELECT ON citymap_streetnamechanges_streets TO publicuser;

DROP VIEW IF EXISTS coastal_zone_boundary;
CREATE VIEW coastal_zone_boundary AS
	(SELECT * FROM coastal_zone_boundary_v201601);
GRANT SELECT ON coastal_zone_boundary TO publicuser;

DROP VIEW IF EXISTS commercial_overlays;
CREATE VIEW commercial_overlays AS
	(SELECT * FROM commercial_overlays_v201909);
GRANT SELECT ON commercial_overlays TO publicuser;

DROP VIEW IF EXISTS community_district_profiles;
CREATE VIEW community_district_profiles AS
	(SELECT * FROM community_district_profiles_v201903);
GRANT SELECT ON community_district_profiles TO publicuser;

DROP VIEW IF EXISTS community_districts;
CREATE VIEW community_districts AS
	(SELECT * FROM community_districts_v201811);
GRANT SELECT ON community_districts TO publicuser;

DROP VIEW IF EXISTS dtm_block_centroids;
CREATE VIEW dtm_block_centroids AS
	(SELECT * FROM dtm_block_centroids_v20191004);
GRANT SELECT ON dtm_block_centroids TO publicuser;

DROP VIEW IF EXISTS e_designations;
CREATE VIEW e_designations AS
	(SELECT * FROM e_designations_v2019);
GRANT SELECT ON e_designations TO publicuser;

DROP VIEW IF EXISTS facdb;
CREATE VIEW facdb AS
	(SELECT * FROM facdb_v201811);
GRANT SELECT ON facdb TO publicuser;

DROP VIEW IF EXISTS floodplain_firm2007;
CREATE VIEW floodplain_firm2007 AS
	(SELECT * FROM floodplain_firm2007_v0);
GRANT SELECT ON floodplain_firm2007 TO publicuser;

DROP VIEW IF EXISTS floodplain_pfirm2015;
CREATE VIEW floodplain_pfirm2015 AS
	(SELECT * FROM floodplain_pfirm2015_v0);
GRANT SELECT ON floodplain_pfirm2015 TO publicuser;

DROP VIEW IF EXISTS fresh_zones;
CREATE VIEW fresh_zones AS
	(SELECT * FROM fresh_zones_v201907);
GRANT SELECT ON fresh_zones TO publicuser;

DROP VIEW IF EXISTS historic_districts_lpc;
CREATE VIEW historic_districts_lpc AS
	(SELECT * FROM historic_districts_lpc_v20180501);
GRANT SELECT ON historic_districts_lpc TO publicuser;

DROP VIEW IF EXISTS humanboatlaunch;
CREATE VIEW humanboatlaunch AS
	(SELECT * FROM humanboatlaunch_v201810);
GRANT SELECT ON humanboatlaunch TO publicuser;

DROP VIEW IF EXISTS inclusionary_housing;
CREATE VIEW inclusionary_housing AS
	(SELECT * FROM inclusionary_housing_v201804);
GRANT SELECT ON inclusionary_housing TO publicuser;

DROP VIEW IF EXISTS individual_landmarks_lpc;
CREATE VIEW individual_landmarks_lpc AS
	(SELECT * FROM individual_landmarks_lpc_v20180501);
GRANT SELECT ON individual_landmarks_lpc TO publicuser;

DROP VIEW IF EXISTS industrial_business_zones;
CREATE VIEW industrial_business_zones AS
	(SELECT * FROM industrial_business_zones_v20180501);
GRANT SELECT ON industrial_business_zones TO publicuser;

DROP VIEW IF EXISTS limited_height_districts;
CREATE VIEW limited_height_districts AS
	(SELECT * FROM limited_height_districts_v201909);
GRANT SELECT ON limited_height_districts TO publicuser;

DROP VIEW IF EXISTS lower_density_growth_management_areas;
CREATE VIEW lower_density_growth_management_areas AS
	(SELECT * FROM lower_density_growth_management_areas_v201709);
GRANT SELECT ON lower_density_growth_management_areas TO publicuser;

DROP VIEW IF EXISTS mandatory_inclusionary_housing;
CREATE VIEW mandatory_inclusionary_housing AS
	(SELECT * FROM mandatory_inclusionary_housing_v201909);
GRANT SELECT ON mandatory_inclusionary_housing TO publicuser;

CREATE INDEX idx_mappluto_19v1_bbl ON planninglabs.mappluto_19v1 (bbl)
DROP VIEW IF EXISTS mappluto;
CREATE VIEW mappluto AS
	(SELECT * FROM mappluto_19v1);
GRANT SELECT ON mappluto TO publicuser;

DROP VIEW IF EXISTS merged_pfirm_firm_100yr;
CREATE VIEW merged_pfirm_firm_100yr AS
	(SELECT * FROM merged_pfirm_firm_100yr_v201901);
GRANT SELECT ON merged_pfirm_firm_100yr TO publicuser;

DROP VIEW IF EXISTS merged_pfirm_firm_500yr;
CREATE VIEW merged_pfirm_firm_500yr AS
	(SELECT * FROM merged_pfirm_firm_500yr_v201901);
GRANT SELECT ON merged_pfirm_firm_500yr TO publicuser;

DROP VIEW IF EXISTS mta_subway_entrances;
CREATE VIEW mta_subway_entrances AS
	(SELECT * FROM mta_subway_entrances_v0);
GRANT SELECT ON mta_subway_entrances TO publicuser;

DROP VIEW IF EXISTS mta_subway_routes;
CREATE VIEW mta_subway_routes AS
	(SELECT * FROM mta_subway_routes_v0);
GRANT SELECT ON mta_subway_routes TO publicuser;

DROP VIEW IF EXISTS mta_subway_stops;
CREATE VIEW mta_subway_stops AS
	(SELECT * FROM mta_subway_stops_v0);
GRANT SELECT ON mta_subway_stops TO publicuser;

DROP VIEW IF EXISTS nta_boundaries;
CREATE VIEW nta_boundaries AS
	(SELECT * FROM nta_boundaries_v201811);
GRANT SELECT ON nta_boundaries TO publicuser;

DROP VIEW IF EXISTS ny_assembly_districts;
CREATE VIEW ny_assembly_districts AS
	(SELECT * FROM ny_assembly_districts_v201811);
GRANT SELECT ON ny_assembly_districts TO publicuser;

DROP VIEW IF EXISTS ny_senate_districts;
CREATE VIEW ny_senate_districts AS
	(SELECT * FROM ny_senate_districts_v201811);
GRANT SELECT ON ny_senate_districts TO publicuser;

DROP VIEW IF EXISTS nyc_census_blocks;
CREATE VIEW nyc_census_blocks AS
	(SELECT * FROM nyc_census_blocks_2010);
GRANT SELECT ON nyc_census_blocks TO publicuser;

DROP VIEW IF EXISTS nyc_census_tracts;
CREATE VIEW nyc_census_tracts AS
	(SELECT * FROM nyc_census_tracts_2010);
GRANT SELECT ON nyc_census_tracts TO publicuser;

DROP VIEW IF EXISTS nyc_council_districts;
CREATE VIEW nyc_council_districts AS
	(SELECT * FROM nyc_council_districts_v201811);
GRANT SELECT ON nyc_council_districts TO publicuser;

DROP VIEW IF EXISTS nyc_ferry_landings;
CREATE VIEW nyc_ferry_landings AS
	(SELECT * FROM nyc_ferry_landings_v20181023);
GRANT SELECT ON nyc_ferry_landings TO publicuser;

DROP VIEW IF EXISTS nyc_ferry_routes;
CREATE VIEW nyc_ferry_routes AS
	(SELECT * FROM nyc_ferry_routes_v20181023);
GRANT SELECT ON nyc_ferry_routes TO publicuser;

DROP VIEW IF EXISTS nyc_pumas;
CREATE VIEW nyc_pumas AS
	(SELECT * FROM nyc_pumas_v201811);
GRANT SELECT ON nyc_pumas TO publicuser;

DROP VIEW IF EXISTS publiclyownedwaterfront;
CREATE VIEW publiclyownedwaterfront AS
	(SELECT * FROM publiclyownedwaterfront_v201905);
GRANT SELECT ON publiclyownedwaterfront TO publicuser;

DROP VIEW IF EXISTS scenic_landmarks_lpc;
CREATE VIEW scenic_landmarks_lpc AS
	(SELECT * FROM scenic_landmarks_lpc_v20180501);
GRANT SELECT ON scenic_landmarks_lpc TO publicuser;

DROP VIEW IF EXISTS sidewalk_cafes;
CREATE VIEW sidewalk_cafes AS
	(SELECT * FROM sidewalk_cafes_v201909);
GRANT SELECT ON sidewalk_cafes TO publicuser;

DROP VIEW IF EXISTS special_purpose_districts;
CREATE VIEW special_purpose_districts AS
	(SELECT * FROM special_purpose_districts_v201909);
GRANT SELECT ON special_purpose_districts TO publicuser;

DROP VIEW IF EXISTS special_purpose_subdistricts;
CREATE VIEW special_purpose_subdistricts AS
	(SELECT * FROM special_purpose_subdistricts_v201909);
GRANT SELECT ON special_purpose_subdistricts TO publicuser;

DROP VIEW IF EXISTS transitzones;
CREATE VIEW transitzones AS
	(SELECT * FROM transitzones_v201902);
GRANT SELECT ON transitzones TO publicuser;

DROP VIEW IF EXISTS upland_waterfront_areas;
CREATE VIEW upland_waterfront_areas AS
	(SELECT * FROM upland_waterfront_areas_v200912);
GRANT SELECT ON upland_waterfront_areas TO publicuser;

DROP VIEW IF EXISTS waterfront_access_plan;
CREATE VIEW waterfront_access_plan AS
	(SELECT * FROM waterfront_access_plan_v201902);
GRANT SELECT ON waterfront_access_plan TO publicuser;

DROP VIEW IF EXISTS wpaas;
CREATE VIEW wpaas AS
	(SELECT * FROM wpaas_v201905);
GRANT SELECT ON wpaas TO publicuser;

DROP VIEW IF EXISTS wpaas_accesspoints;
CREATE VIEW wpaas_accesspoints AS
	(SELECT * FROM wpaas_accesspoints_v201905);
GRANT SELECT ON wpaas_accesspoints TO publicuser;

DROP VIEW IF EXISTS wpaas_footprints;
CREATE VIEW wpaas_footprints AS
	(SELECT * FROM wpaas_footprints_v201905);
GRANT SELECT ON wpaas_footprints TO publicuser;

DROP VIEW IF EXISTS zoning_districts;
CREATE VIEW zoning_districts AS
	(SELECT * FROM zoning_districts_v201909);
GRANT SELECT ON zoning_districts TO publicuser;

DROP VIEW IF EXISTS zoning_map_amendments;
CREATE VIEW zoning_map_amendments AS
	(SELECT * FROM zoning_map_amendments_v201909);
GRANT SELECT ON zoning_map_amendments TO publicuser;

DROP VIEW IF EXISTS region_censustract;
CREATE VIEW region_censustract AS
	(SELECT * FROM region_censustract_v0);
GRANT SELECT ON region_censustract TO publicuser;

DROP VIEW IF EXISTS region_censustract_industrial_dotdensity;
CREATE VIEW region_censustract_industrial_dotdensity AS
	(SELECT * FROM region_censustract_industrial_dotdensity_v0);
GRANT SELECT ON region_censustract_industrial_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_censustract_institution_dotdensity;
CREATE VIEW region_censustract_institution_dotdensity AS
	(SELECT * FROM region_censustract_institution_dotdensity_v0);
GRANT SELECT ON region_censustract_institution_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_censustract_localserv_dotdensity;
CREATE VIEW region_censustract_localserv_dotdensity AS
	(SELECT * FROM region_censustract_localserv_dotdensity_v0);
GRANT SELECT ON region_censustract_localserv_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_censustract_meta;
CREATE VIEW region_censustract_meta AS
	(SELECT * FROM region_censustract_meta_v1);
GRANT SELECT ON region_censustract_meta TO publicuser;

DROP VIEW IF EXISTS region_censustract_office_dotdensity;
CREATE VIEW region_censustract_office_dotdensity AS
	(SELECT * FROM region_censustract_office_dotdensity_v0);
GRANT SELECT ON region_censustract_office_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_censustract_table;
CREATE VIEW region_censustract_table AS
	(SELECT * FROM region_censustract_v1_table);
GRANT SELECT ON region_censustract_table TO publicuser;

DROP VIEW IF EXISTS region_commode_mnworkres_dotdensity;
CREATE VIEW region_commode_mnworkres_dotdensity AS
	(SELECT * FROM region_commode_mnworkres_dotdensity_v0);
GRANT SELECT ON region_commode_mnworkres_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_commode_nonmnworkres_dotdensity;
CREATE VIEW region_commode_nonmnworkres_dotdensity AS
	(SELECT * FROM region_commode_nonmnworkres_dotdensity_v0);
GRANT SELECT ON region_commode_nonmnworkres_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_commode_nycreswork_dotdensity;
CREATE VIEW region_commode_nycreswork_dotdensity AS
	(SELECT * FROM region_commode_nycreswork_dotdensity_v0);
GRANT SELECT ON region_commode_nycreswork_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_comtot_nycreswork_dotdensity;
CREATE VIEW region_comtot_nycreswork_dotdensity AS
	(SELECT * FROM region_comtot_nycreswork_dotdensity_v0);
GRANT SELECT ON region_comtot_nycreswork_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_comtot_nycworkerres_dotdensity;
CREATE VIEW region_comtot_nycworkerres_dotdensity AS
	(SELECT * FROM region_comtot_nycworkerres_dotdensity_v0);
GRANT SELECT ON region_comtot_nycworkerres_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_county;
CREATE VIEW region_county AS
	(SELECT * FROM region_county_v2);
GRANT SELECT ON region_county TO publicuser;

DROP VIEW IF EXISTS region_county_meta;
CREATE VIEW region_county_meta AS
	(SELECT * FROM region_county_meta_v2);
GRANT SELECT ON region_county_meta TO publicuser;

DROP VIEW IF EXISTS region_county_table;
CREATE VIEW region_county_table AS
	(SELECT * FROM region_county_v2_table);
GRANT SELECT ON region_county_table TO publicuser;

DROP VIEW IF EXISTS region_employment_dotdensity;
CREATE VIEW region_employment_dotdensity AS
	(SELECT * FROM region_employment_dotdensity_v0);
GRANT SELECT ON region_employment_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_lfpw0016_dotdensity;
CREATE VIEW region_lfpw0016_dotdensity AS
	(SELECT * FROM region_lfpw0016_dotdensity_v1);
GRANT SELECT ON region_lfpw0016_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_municipality;
CREATE VIEW region_municipality AS
	(SELECT * FROM region_municipality_v1);
GRANT SELECT ON region_municipality TO publicuser;

DROP VIEW IF EXISTS region_municipality_lf0016_dotdensity;
CREATE VIEW region_municipality_lf0016_dotdensity AS
	(SELECT * FROM region_municipality_lf0016_dotdensity_v0);
GRANT SELECT ON region_municipality_lf0016_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_municipality_meta;
CREATE VIEW region_municipality_meta AS
	(SELECT * FROM region_municipality_meta_v0);
GRANT SELECT ON region_municipality_meta TO publicuser;

DROP VIEW IF EXISTS region_municipality_table;
CREATE VIEW region_municipality_table AS
	(SELECT * FROM region_municipality_v1_table);
GRANT SELECT ON region_municipality_table TO publicuser;

DROP VIEW IF EXISTS region_popa1016_dotdensity;
CREATE VIEW region_popa1016_dotdensity AS
	(SELECT * FROM region_popa1016_dotdensity_v1);
GRANT SELECT ON region_popa1016_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_rail_lines;
CREATE VIEW region_rail_lines AS
	(SELECT * FROM region_rail_lines_v0);
GRANT SELECT ON region_rail_lines TO publicuser;

DROP VIEW IF EXISTS region_rail_stops;
CREATE VIEW region_rail_stops AS
	(SELECT * FROM region_rail_stops_v0);
GRANT SELECT ON region_rail_stops TO publicuser;

DROP VIEW IF EXISTS region_region;
CREATE VIEW region_region AS
	(SELECT * FROM region_region_v2);
GRANT SELECT ON region_region TO publicuser;

DROP VIEW IF EXISTS region_region_meta;
CREATE VIEW region_region_meta AS
	(SELECT * FROM region_region_meta_v2);
GRANT SELECT ON region_region_meta TO publicuser;

DROP VIEW IF EXISTS region_region_table;
CREATE VIEW region_region_table AS
	(SELECT * FROM region_region_v2_table);
GRANT SELECT ON region_region_table TO publicuser;

DROP VIEW IF EXISTS region_subregion;
CREATE VIEW region_subregion AS
	(SELECT * FROM region_subregion_v2);
GRANT SELECT ON region_subregion TO publicuser;

DROP VIEW IF EXISTS region_subregion_meta;
CREATE VIEW region_subregion_meta AS
	(SELECT * FROM region_subregion_meta_v2);
GRANT SELECT ON region_subregion_meta TO publicuser;

DROP VIEW IF EXISTS region_subregion_table;
CREATE VIEW region_subregion_table AS
	(SELECT * FROM region_subregion_v2_table);
GRANT SELECT ON region_subregion_table TO publicuser;

DROP VIEW IF EXISTS region_tenure_dotdensity;
CREATE VIEW region_tenure_dotdensity AS
	(SELECT * FROM region_tenure_dotdensity_v0);
GRANT SELECT ON region_tenure_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_units_by_structure_dotdensity;
CREATE VIEW region_units_by_structure_dotdensity AS
	(SELECT * FROM region_units_by_structure_dotdensity_v0);
GRANT SELECT ON region_units_by_structure_dotdensity TO publicuser;

DROP VIEW IF EXISTS region_unittype_dotdensity;
CREATE VIEW region_unittype_dotdensity AS
	(SELECT * FROM region_unittype_dotdensity_v2);
GRANT SELECT ON region_unittype_dotdensity TO publicuser;
