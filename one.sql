!-- Count of the most occuring Coding Languages
select flattened_tags as Language, count(*) tag_count from
(SELECT split(tags, '|') tags FROM `bigquery-public-data.stackoverflow.posts_questions`
where extract (year from creation_date) >= 2000) 
cross join unnest(tags) flattened_tags
group by flattened_tags
order by tag_count desc
limit 10
--!