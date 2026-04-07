CLASS zcl_try_der DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
INTERFACES if_oo_adt_classrun .



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_try_der IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
" Subestructura (plana)
TYPES: BEGIN OF ty_addr,
         street TYPE c LENGTH 30,
         city   TYPE c LENGTH 20,
       END OF ty_addr.

" Estructura ANIDADA: contiene ty_addr como un campo
TYPES: BEGIN OF ty_employee_nested,
         id   TYPE i,
         name TYPE c LENGTH 20,
         addr TYPE ty_addr,            "← subestructura anidada

       END OF ty_employee_nested.

   data: ls_plana type  ty_addr,
         ls_anidada type  ty_employee_nested.

         out->write( ls_plana  )  .
              out->write( | |  )  .
                   out->write( ls_anidada  )  .

" Item simple para la tabla interna
TYPES: BEGIN OF ty_order_item,
         product TYPE c LENGTH 10,
         qty     TYPE i,
       END OF ty_order_item.

" Estructura PROFUNDA: tiene tipos dinámicos (string, tablas, referencias)
TYPES: BEGIN OF ty_customer_deep,
         id      TYPE i,
         name    TYPE string,                               "← profundo (string)
         addr    TYPE ty_addr,                               "anidado (plano)
         orders  TYPE STANDARD TABLE OF ty_order_item WITH EMPTY KEY, "← profundo (tabla interna)
         refaddr TYPE REF TO ty_addr,                        "← profundo (referencia)
       END OF ty_customer_deep.


          data: ls_profunda type  ty_customer_deep.
      out->write( | |  )  .
                   out->write( ls_profunda  )  .
  ENDMETHOD.




ENDCLASS.
