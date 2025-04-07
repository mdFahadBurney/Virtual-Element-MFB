CLASS zcl_virtual_element_calc1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES : if_sadl_exit_calc_element_read.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_VIRTUAL_ELEMENT_CALC1 IMPLEMENTATION.


  METHOD if_sadl_exit_calc_element_read~calculate.

data : lt_calc_percent type standard table of z_c_stud_11563 WITH DEFAULT KEY.
      lt_calc_percent = CORRESPONDING #( it_original_data ).

   LOOP AT lt_calc_percent ASSIGNING FIELD-SYMBOL(<lfs_calc>).
   <lfs_calc>-full_name =    |{ <lfs_calc>-StudentName } { <lfs_calc>-GuardianName  }|.
   <lfs_calc>-TotalMarks = <lfs_calc>-SubMark1 + <lfs_calc>-SubMark2.
   <lfs_calc>-Totalpercent = |{ ( <lfs_calc>-TotalMarks ) / 100 } %|.
   ENDLOOP.

   ct_calculated_data = CORRESPONDING #( lt_calc_percent ).

  ENDMETHOD.


  METHOD if_sadl_exit_calc_element_read~get_calculation_info.

  ENDMETHOD.
ENDCLASS.
