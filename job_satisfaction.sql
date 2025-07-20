-- data preview
SELECT * FROM `employee survey` LIMIT 10;

-- statistics summary
SELECT 
  COUNT(*) AS total_records,
  MIN(age) AS min_age,
  MAX(age) AS max_age,
  AVG(age) AS avg_age,
  MIN(sleep_hours) AS min_sleep,
  MAX(sleep_hours) AS max_sleep,
  AVG(sleep_hours) AS avg_sleep
FROM `employee survey`;

-- count by gender
SELECT gender, COUNT(*) AS count
FROM `employee survey`
GROUP BY gender;

-- education level
SELECT education_level, COUNT(*) AS count
FROM `employee survey`
GROUP BY education_level;

-- stress level by job satisfaction
SELECT stress, job_satisfaction, COUNT(*) AS count
FROM `employee survey`
GROUP BY stress, job_satisfaction
ORDER BY count DESC;

-- communte mode 
SELECT commute_mode, job_level, COUNT(*) AS count
FROM `employee survey`
GROUP BY commute_mode, job_level;

-- avarage sleep by job satisfaction
SELECT job_satisfaction, ROUND(AVG(sleep_hours), 2) AS avg_sleep
FROM `employee survey`
GROUP BY job_satisfaction;

-- workload and stress correlation
SELECT workload, stress,  COUNT(*) AS count
FROM `employee survey`
GROUP BY workload, stress
ORDER BY workload;

-- age group by department
SELECT age_group, department, COUNT(*) AS count
FROM `employee survey`
GROUP BY age_group, department
ORDER BY age_group;

-- employee typevs experience
SELECT emp_type, AVG(experience) AS avg_experience
FROM `employee survey`
GROUP BY emp_type;

-- now that I have looked at the overall dataset and have an understanding. 
-- I will now focus on job satisfation 
-- key question: what factors contribute to low job satisfaction

-- 1 how many people fall into job satisfaction category
SELECT job_satisfaction, COUNT(*) AS count
FROM `employee survey`
GROUP BY job_satisfaction
ORDER BY job_satisfaction;

-- job satisfaction vs stress
SELECT stress, job_satisfaction, COUNT(*) AS count
FROM `employee survey`
GROUP BY stress, job_satisfaction
ORDER BY stress, job_satisfaction;

-- job satisfaction vs sleep hours
SELECT job_satisfaction, ROUND(AVG(sleep_hours), 2) AS avg_sleep
FROM `employee survey`
GROUP BY job_satisfaction
ORDER BY job_satisfaction;

-- job satisfaction vs workload
SELECT workload, job_satisfaction, COUNT(*) AS count
FROM `employee survey`
GROUP BY workload, job_satisfaction
ORDER BY workload;

-- job satisfaction by commute mode
SELECT commute_mode, job_satisfaction, COUNT(*) AS count
FROM `employee survey`
GROUP BY commute_mode, job_satisfaction
ORDER BY commute_mode;

-- job satisfaction by education level 
SELECT education_level, job_satisfaction, COUNT(*) AS count
FROM `employee survey`
GROUP BY education_level, job_satisfaction
ORDER BY education_level;

-- job satisfaction by department
SELECT department, job_satisfaction, COUNT(*) AS count
FROM `employee survey`
GROUP BY department, job_satisfaction
ORDER BY department;

-- job_satisfaction by age group
SELECT age_group, job_satisfaction, COUNT(*) AS count
FROM `employee survey`
GROUP BY age_group, job_satisfaction
ORDER BY age_group;