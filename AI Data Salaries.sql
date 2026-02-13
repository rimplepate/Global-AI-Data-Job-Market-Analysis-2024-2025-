##Average Salary by Job Title##
select job_title,
round (avg(salary_usd),2) as avg_salary,
count(*) as total_jobs
from ai_job_dataset
group by job_title
order by avg_salary desc;

##Salary by Experience Level##
select experience_level,
round(avg(salary_usd),2) as avg_salary
from ai_job_dataset
group by experience_level
order by avg_salary desc;

##Remote vs Onsite Salary Comparison##
SELECT 
    remote_ratio,
    ROUND(AVG(salary_usd), 2) AS avg_salary,
    COUNT(*) AS total_jobs
FROM ai_job_dataset
GROUP BY remote_ratio
ORDER BY remote_ratio;

##Top 10 Highest Paying Countries##
SELECT 
    company_location,
    ROUND(AVG(salary_usd), 2) AS avg_salary,
    COUNT(*) AS total_jobs
FROM ai_job_dataset
GROUP BY company_location
ORDER BY avg_salary DESC
LIMIT 10;

##Education vs Salary##
SELECT 
    education_required,
    ROUND(AVG(salary_usd), 2) AS avg_salary,
    COUNT(*) AS total_jobs
FROM ai_job_dataset
GROUP BY education_required
ORDER BY avg_salary DESC;

##Monthly Hiring Trend##
SELECT 
    STR_TO_DATE(DATE_FORMAT(posting_date, '%Y-%m-01'), '%Y-%m-%d') AS month,
    COUNT(*) AS total_postings
FROM ai_job_dataset
GROUP BY month
ORDER BY month;

##Salary by Company Size##
SELECT 
    company_size,
    ROUND(AVG(salary_usd), 2) AS avg_salary
FROM ai_job_dataset
GROUP BY company_size
ORDER BY avg_salary DESC;





