SELECT 
    company.company_code,
    company.founder,
    COUNT(DISTINCT lead_manager.lead_manager_code) 
    COUNT(DISTINCT senior_manager.senior_manager_code) 
    COUNT(DISTINCT manager.manager_code) 
    COUNT(DISTINCT employee.employee_code)
FROM company
LEFT JOIN lead_manager 
    ON company.company_code = lead_manager.company_code
LEFT JOIN senior_manager
    ON lead_manager.lead_manager_code = senior_manager.lead_manager_code
LEFT JOIN manager
    ON manager.senior_manager_code = senior_manager.senior_manager_code
LEFT JOIN employee
    ON manager.manager_code = employee.manager_code
GROUP BY company.company_code, company.founder;