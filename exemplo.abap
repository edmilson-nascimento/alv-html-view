
### Criação do arquivo exemplo.abap

```abap
cl_demo_output=>begin_section(
    title = 'BEFORE'
).
cl_demo_output=>write( 'Dados actuais na tabela' ).
cl_demo_output=>write_data(
  EXPORTING
    value = gt_old
    name  = 'GT_OLD Before'
).
cl_demo_output=>write( 'Dados que deverão ser conciliados na tabela' ).
cl_demo_output=>write_data(
  EXPORTING
    value = gt_new
    name  = 'GT_NEW'    " Name
).
cl_demo_output=>end_section( ).
cl_demo_output=>next_section( title = 'AFTER' ).
cl_demo_output=>write_data(
  EXPORTING
    value = gt_old
    name  = 'GT_OLD After'   " Name
).
cl_demo_output=>end_section( ).
cl_demo_output=>next_section( title = 'DOWNLOAD MORE RAM!' ).
cl_demo_output=>end_section( ).
cl_demo_output=>display( ).