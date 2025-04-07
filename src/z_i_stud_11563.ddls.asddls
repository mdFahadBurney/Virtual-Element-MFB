@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Interface View UM'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Z_I_STUD_11563 as select from ztm_stud_details
{
    key rollnum as Rollnum,
    student_name as StudentName,
    stud_section as StudSection,
    guardian_name as GuardianName,
    sub1_marks as SubMark1,
    sub2_marks as SubMark2,
 //   total_marks as TotalMarks,
    status as Status,
    class as Class
}
