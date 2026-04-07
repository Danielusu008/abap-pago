CLASS zcl_main_der DEFINITION
PUBLIC
FINAL
CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_main_der IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA lt_accion TYPE i VALUE 2.

    DATA(lo_employee) = NEW zcl_creadora_der(
    iv_nombre = 'Natalia'
    iv_apellido = 'Ruiz'
    iv_telefono = '666555777'
    iv_experiencia = 4
    iv_certificaciones = 2
    ).


    CASE lt_accion.


        "llamada a la funcion crear registro empleado
      WHEN 1.

        "genera un nuevo registro con la info expuesta en la linea 20
        DATA(lv_alta) = lo_employee->alta_empleado( ).
        out->write( lv_alta ).

        " llamada a la funcion modificacion
      WHEN 2.
        out->write(   lo_employee->modificacion(
         iv_nombre = 'Luisa '
         iv_apellido = 'Ruiz'
         iv_telefono = '666555777'
         iv_experiencia = 4
         iv_certificaciones = 2
         iv_id_empleado = 10

         ) ).


        "trae las fila que indicamos , en caso de ser 0 nos trae la bd entera
      WHEN 3.

        DATA(lt_obj) = lo_employee->traer_lt(

        iv_id_empleado = 0
        ).
        out->write( lt_obj ).


        " trae la cantidad de filas que se le indica
      WHEN 4.

        DATA(lt_traer) = lo_employee->traer_n_filas( iv_n_filas = 2 ).

        out->write( lt_traer ).

    ENDCASE.


* IF lt_obj IS NOT INITIAL.
* out->write( 'hay datos' ).
* out->write( lt_obj ).
* ELSE.
* out->write( 'No hay datos' ).
* ENDIF.




    " extraer los registros de otra base de datos y modificar la nuestra propia con esos registros


* lo_employee->modificar_registros( ).
* data(lt_obj) = lo_employee->traer_lt(
* ).
*
*


    "out->write( lt_obj ).





  ENDMETHOD.

ENDCLASS.
