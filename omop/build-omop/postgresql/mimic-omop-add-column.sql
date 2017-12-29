ALTER TABLE omop.death ADD COLUMN visit_detail_id BIGINT;
COMMENT ON COLUMN omop.death.visit_detail_id             IS '[CONTRIB] A foreign key to the visit in the VISIT_DETAIL table during where the death occured';

ALTER TABLE omop.death ADD COLUMN visit_occurrence_id BIGINT;
COMMENT ON COLUMN omop.death.visit_occurrence_id             IS '[CONTRIB] A foreign key to the visit in the VISIT_OCCURRENCE table during where the death occured';

ALTER TABLE omop.death ADD COLUMN death_visit_detail_delay double precision;
COMMENT ON COLUMN omop.death.death_visit_detail_delay             IS '[CONTRIB] Difference between deathtime and visit_start_datetime of VISIT_DETAIL table';

ALTER TABLE omop.death ADD COLUMN death_visit_occurrence_delay double precision;
COMMENT ON COLUMN omop.death.death_visit_occurrence_delay      IS '[CONTRIB] Difference between deathtime and visit_start_datetime of VISIT_OCCURRENCE table';

ALTER TABLE omop.measurement ADD COLUMN quality_concept_id bigint;
COMMENT ON COLUMN omop.measurement.quality_concept_id             IS '[CONTRIB] Quality mask, can be queried with regex, to filter based on quality aspects';

ALTER TABLE omop.visit_occurrence ADD COLUMN age_in_year integer;
COMMENT ON COLUMN omop.visit_occurrence.age_in_year             IS '[CONTRIB] Age at visit';

ALTER TABLE omop.visit_occurrence ADD COLUMN age_in_month integer;
COMMENT ON COLUMN omop.visit_occurrence.age_in_month             IS '[CONTRIB] Age at visit';

ALTER TABLE omop.visit_occurrence ADD COLUMN age_in_day integer;
COMMENT ON COLUMN omop.visit_occurrence.age_in_day IS '[CONTRIB] Age at visit';

ALTER TABLE omop.visit_occurrence ADD COLUMN visit_occurrence_length integer;
COMMENT ON COLUMN omop.visit_occurrence.visit_occurrence_length IS '[CONTRIB] Length of visit occurrence';

ALTER TABLE omop.visit_detail ADD COLUMN visit_detail_length integer;
COMMENT ON COLUMN omop.visit_detail.visit_detail_length IS '[CONTRIB] Length of visit detail';