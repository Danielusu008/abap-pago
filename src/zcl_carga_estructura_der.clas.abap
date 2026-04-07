CLASS zcl_carga_estructura_der DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

types: begin of ty_address,
         country     type string,
         city        type string,
         postal_code type string,
         region      type string,
         street      type string,
         number      type string,
       end of ty_address,
       tty_address type table of ty_address.

    METHODS set_address IMPORTING it_address TYPE tty_address.



    CLASS-DATA moneda TYPE c LENGTH 3 .
    DATA region TYPE string.

    METHODS set_cliente
      IMPORTING iv_cliente      TYPE string
                iv_localizacion TYPE string
      EXPORTING ev_status       TYPE string
      CHANGING  cv_porceso      TYPE string.

    "///////////////////////////

    METHODS get_cliente
      EXPORTING ev_cliente TYPE string.
    "////////////////////////


    CLASS-METHODS:
      set_cntr_type IMPORTING iv_cntr_type TYPE string,
      get_cntr_type EXPORTING ev_cntr_type TYPE string.

    "///////////////////

    METHODS get_cliente_name IMPORTING iv_cliente_id TYPE string RETURNING VALUE(rv_cliente_name) TYPE string.

    METHODS set_sales_org IMPORTING sales_org TYPE string.
    METHODS get_sales_org EXPORTING sales_org TYPE string.

  PROTECTED SECTION.
    DATA creacion_fecha TYPE sydate.





  PRIVATE SECTION.

    DATA cliente TYPE string.
    CLASS-DATA cntr_type TYPE string .
    DATA sales_org TYPE string.

ENDCLASS.



CLASS zcl_carga_estructura_der IMPLEMENTATION.


  METHOD set_cliente.

    cliente = iv_cliente .
    ev_status = 'ok'.
    cv_porceso = 'Started'.

  ENDMETHOD.

  METHOD get_cliente.

    ev_cliente = cliente.

  ENDMETHOD.


  METHOD get_cntr_type.

    ev_cntr_type = cntr_type.

  ENDMETHOD.


  METHOD set_cntr_type.

    cntr_type = iv_cntr_type.

  ENDMETHOD.

  METHOD get_cliente_name.

    CASE iv_cliente_id.
      WHEN '01'.
        rv_cliente_name = 'Nombre del cliente 01'.
      WHEN '02'.
        rv_cliente_name = 'Nombre del cliente 02'.
    ENDCASE.

  ENDMETHOD.

  METHOD get_sales_org.

    sales_org = me->sales_org.



  ENDMETHOD.

  METHOD set_sales_org.

    me->sales_org = sales_org.

  endmethod.

  METHOD set_address.
    me->sales_org = sales_org.
    me->set_address(  it_address = value #( ( country = 'es' ) ) ).


  ENDMETHOD.

ENDCLASS.
