# alv-html-view
Exibição de HTML para ALV Report

[![GitHub forks](https://img.shields.io/github/forks/edmilson-nascimento/alv-html-view?style=social)](https://github.com/edmilson-nascimento/alv-html-view/network/members)
[![GitHub stars](https://img.shields.io/github/stars/edmilson-nascimento/alv-html-view?style=social)](https://github.com/edmilson-nascimento/alv-html-view/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/edmilson-nascimento/alv-html-view)](https://github.com/edmilson-nascimento/alv-html-view/issues)
[![GitHub license](https://img.shields.io/github/license/edmilson-nascimento/alv-html-view)](https://github.com/edmilson-nascimento/alv-html-view/blob/main/LICENSE)
![SAP](https://img.shields.io/badge/SAP-000000?style=flat&logo=sap&logoColor=white)
![ABAP](https://img.shields.io/badge/ABAP-0A9EDC?style=flat&logo=sap&logoColor=white)

## Objetivo
Este repositório tem como objetivo criar um modelo em linguagem SAP ABAP para exibição de dados em formato HTML para relatórios ALV.

## Tecnologia Usada
- SAP ABAP

## Resultado Final
Ao concluir o projeto, espera-se que os dados sejam exibidos em um formato HTML amigável para relatórios ALV.

## Código de Exemplo
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


