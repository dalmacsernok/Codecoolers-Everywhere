alter index all ON dbo.cities rebuild;
alter index all ON dbo.codecoolers rebuild;
alter index all ON dbo.codecoolers_schools rebuild;
alter index all ON dbo.schools rebuild;

DBCC SHRINKDATABASE (codecoolers, 10);