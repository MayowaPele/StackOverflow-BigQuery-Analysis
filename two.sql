!-- Count of the Ten Most Occuring Stack-Overflow Editors with their Average Score (Grouped By Count)
SELECT last_editor_display_name, count(*) name, round(avg(score), 2) Score
FROM `bigquery-public-data.stackoverflow.posts_answers`
where last_editor_display_name is not null
group by last_editor_display_name
order by name desc
limit 10
--!