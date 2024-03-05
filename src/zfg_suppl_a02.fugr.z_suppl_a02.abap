FUNCTION z_suppl_a02.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IT_SUPPLEMENTS) TYPE  ZTT_SUPPL_A02
*"     REFERENCE(LV_OP_TYPE) TYPE  ZDE_FLAG_A02
*"  EXPORTING
*"     REFERENCE(EV_UPDATED) TYPE  ZDE_FLAG_A02
*"----------------------------------------------------------------------
CHECK NOT it_supplements IS INITIAL.

CASE lv_op_type.

    WHEN 'C'.
        INSERT zbooksuppl_a2 FROM TABLE @it_supplements.
    WHEN 'U'.
        UPDATE zbooksuppl_a2 FROM TABLE @it_supplements.
    WHEN 'D'.
        DELETE zbooksuppl_a2 FROM TABLE @it_supplements.

ENDCASE.

IF sy-subrc EQ 0.

    ev_updated = abap_true.

ENDIF.

ENDFUNCTION.
