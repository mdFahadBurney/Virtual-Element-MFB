@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Consumption View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Z_C_STUD_11563 as projection on Z_I_STUD_11563
{

    key Rollnum,
    StudentName,
    StudSection,
    GuardianName,
 
    SubMark1,
    SubMark2,
 //   TotalMarks,
    Status,
    Class,
    
      @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRTUAL_ELEMENT_CALC2'
          @EndUserText.label: 'Full Name'
  virtual full_name    : abap.string( 256 ), 
  
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRTUAL_ELEMENT_CALC2'
          @EndUserText.label: 'Subject 2 Marks'
  virtual TotalMarks : abap.int4,
  
        @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRTUAL_ELEMENT_CALC1'
          @EndUserText.label: 'Percentage'
  virtual Totalpercent : abap.char( 4 )
}
