class ZCL_ZOV2_MPC_EXT definition
  public
  inheriting from ZCL_ZOV2_MPC
  create public .

public section.

  types:
    begin of ty_ordem_item,
     ORDEMID type I,
     DATACRIACAO type TIMESTAMP,
     CRIADOPOR type C length 20,
     CLIENTEID type I,
     TOTALITENS type P length 8 decimals 2,
     TOTALFRETE type P length 8 decimals 2,
     TOTALORDEM type P length 8 decimals 2,
     STATUS type C length 1,
   toOvitem type TABLE OF ts_ovitem WITH DEFAULT KEY,
  end of ty_ordem_item .

  methods DEFINE
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ZOV2_MPC_EXT IMPLEMENTATION.


  method DEFINE.
  DATA lo_entity_type TYPE REF TO /iwbep/if_mgw_odata_entity_typ.

  super->define( ).

  lo_entity_type = model->get_entity_type( iv_entity_name = 'OvCab' ).
  lo_entity_type->bind_structure( iv_structure_name = 'ZCL_ZOV_MPC_EXT=>TY_ORDEM_ITEM' ).
  endmethod.
ENDCLASS.
