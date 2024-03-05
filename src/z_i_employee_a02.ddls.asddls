@AbapCatalog.sqlViewName: 'ZV_EMPL_A02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EMPLOYEES'
define root view Z_I_EMPLOYEE_A02 
    as select from zemployee_a02 as Employee
{
//Employee
 key e_number,
 e_name,
 e_department,
 status,
 job_title,
 start_date,
 end_date,
 email,
 m_number,
 m_name,
 m_department,
 crea_date_time,
 crea_uname,
 lchg_date_time,
 lchg_uname  
}
