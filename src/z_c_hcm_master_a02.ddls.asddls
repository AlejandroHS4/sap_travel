@EndUserText.label: 'HCM -Master'
@Metadata.allowExtensions: true
define root view entity Z_C_HCM_MASTER_A02 
    as projection on Z_I_HCM_MASTER_A02
{
//    @ObjectModel.text.element: [ 'EmployeeName' ]
    key e_number as EmployeeNumber,
    e_name as EmployeeName,
    e_department as EmployeeDepartament,
    status as EmployeeStatus,
    job_title as JobTitle,
    start_date as StartDate,
    end_date as EndDate,
    email as Email,
//    @ObjectModel.text.element: [ 'ManagerName' ]
    m_number as ManagerNumber,
    m_name as ManagerName,
    m_department as ManagerDepartament,
    @Semantics.user.createdBy: true
    crea_date_time as CreatedOn,
    crea_uname as CreatedBy,
    @Semantics.user.lastChangedBy: true
    lchg_date_time as ChangedOn,
    lchg_uname as ChangedBy
}
