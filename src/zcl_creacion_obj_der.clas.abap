CLASS zcl_creacion_obj_der DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_creacion_obj_der IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


    "forma 1

    " DATA lo_contrato TYPE REF TO zcl_carga_estructura_der.
    " CREATE OBJECT lo_contrato.

    "forma 2

    " DATA lo_contrato TYPE REF TO zcl_carga_estructura_der.
    " lo_contrato = new #(  ).

    "forma 3

    DATA(lo_contrato2) = NEW zcl_carga_estructura_der(  ).
    DATA lv_proceso TYPE string.

    IF lo_contrato2 IS BOUND.

      lo_contrato2->set_cliente(
          EXPORTING
              iv_cliente = 'experis'
              iv_localizacion = space
          IMPORTING
              ev_status = DATA(lv_status)
           CHANGING
               cv_porceso = lv_proceso
          ).
      """"""""""""""""""""""""""""""""""""""""""""
      lo_contrato2->get_cliente(
          IMPORTING
             ev_cliente = DATA(lv_cliente) ).
      """"""""""""""""""""""""""""""""""""""""""""""""""""
      lo_contrato2->region = 'EU'.


    ENDIF.

    out->write( | { lv_cliente }-{ lv_status }-{ lv_proceso }-{ lo_contrato2->region } | ).
    "/////////////////////////////////////////////////////////////////////////////////////////////

    zcl_carga_estructura_der=>set_cntr_type( EXPORTING iv_cntr_type = 'Construccion' ).
    zcl_carga_estructura_der=>get_cntr_type( IMPORTING ev_cntr_type = DATA(lv_cntr_type) ).
    "//////////////////////////////


    lo_contrato2->moneda = '3'.

    out->write( lv_cntr_type ).
    zcl_carga_estructura_der=>moneda = '2'.


    "////////////////////////


*    lo_contrato2->get_cliente_name(
*     EXPORTING
*        iv_cliente_id = '01'
*     RECEIVING
*        rv_cliente_name = DATA(lv_cliente_name)
*      ).


data(lv_cliente_name) = lo_contrato2->get_cliente_name( EXPORTING iv_cliente_id = '02' ).




  ENDMETHOD.
ENDCLASS.
