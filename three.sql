!-- Top 10 Most Occuring User Locations
select loc, count(*) loc_count from 
(SELECT split(location, ',') location FROM `bigquery-public-data.stackoverflow.users`)
cross join unnest(location) loc
group by loc
order by loc_count desc
limit 10