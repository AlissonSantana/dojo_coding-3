#language:pt
#encoding: UTF-8

Funcionalidade: Correios
     Eu como sub sistema terceiro
     Quero buscar um endereço pelo correio
     Para localizar a unidade da Inmetrics Barueri

    @correios
    Esquema do Cenário: Buscar CEP da Inmetrics
    	Quando buscar o endereço pelo <CEP>
    	Então visualizo de forma ordenada

    	Exemplos:
    	|CEP        |
    	|"02850175" |
    	|"02850170" |
    	|"17211090" |
