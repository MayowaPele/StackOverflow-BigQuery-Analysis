!-- Top 20 Users with The Most Up_Votes
SELECT display_name, up_votes FROM `bigquery-public-data.stackoverflow.users`   
order by up_votes desc 
limit 20