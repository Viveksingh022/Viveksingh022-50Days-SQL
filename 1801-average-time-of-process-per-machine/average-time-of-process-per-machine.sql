# Write your MySQL query statement below
 SELECT  a.machine_id, ROUND(AVG(b.timestamp-a.timestamp),3) AS processing_time  

 # from activity a means in a table
   FROM Activity a
# join with b table
    JOIN Activity b
# now we have condition that both maching_id i want same
        ON a.machine_id = b.machine_id 
# now in where i have 2 condition
# process_id of a and b table i want same
# activity_type i will take in a is start and in b is end
        WHERE a.process_id=b.process_id AND a.activity_type='start' AND b.activity_type='end'
# i will group by from machine_id
        GROUP BY a.machine_id;
        