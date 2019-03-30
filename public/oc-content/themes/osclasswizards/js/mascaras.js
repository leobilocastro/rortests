$(document).ready(function($) {
	
    $(".phone").mask("(99) 99999-99999");
    $(".telefone_fixo").mask("(99) 9999-9999");
    $(".cpf").mask("999.999.999-99");
    $(".rg").mask("99.999.999? -*");
    $(".cep").mask("99999-999");
    $(".cep_imovel").mask("99999-999");
    $(".date").mask("99/99/9999");
    $(".placa").mask("aaa-9999");
    $(".s_phone_mobile").mask("(99) 99999-99999");
    $(".s_phone_land").mask("(99) 9999-9999");
});

//mascara para valores
function mascara(o,f){
	v_obj=o;
	v_fun=f;
	setTimeout("execmascara()",1);
}
function execmascara(){
	v_obj.value=v_fun(v_obj.value);
}
function mreais(v){
	v=v.replace(/\D/g,"");			//Remove tudo o que não é dígito
	v=v.replace(/(\d{2})$/,",$1");  //Coloca a virgula
	return v;
}

function nome(v){
	return v;
}

function cpf(v){
    v=v.replace(/\D/g,"");                    //Remove tudo o que não é dígito
    v=v.replace(/(\d{3})(\d)/,"$1.$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
    v=v.replace(/(\d{3})(\d)/,"$1.$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
    v=v.replace(/(\d{3})(\d{1,2})$/,"$1-$2"); //Coloca um hífen entre o terceiro e o quarto dígitos
    return v;
}

function cnpj(v){
    v=v.replace(/\D/g,"");                           //Remove tudo o que não é dígito
    v=v.replace(/^(\d{2})(\d)/,"$1.$2");             //Coloca ponto entre o segundo e o terceiro dígitos
    v=v.replace(/^(\d{2})\.(\d{3})(\d)/,"$1.$2.$3"); //Coloca ponto entre o quinto e o sexto dígitos
    v=v.replace(/\.(\d{3})(\d)/,".$1/$2");           //Coloca uma barra entre o oitavo e o nono dígitos
    v=v.replace(/(\d{4})(\d)/,"$1-$2");           //Coloca um hífen depois do bloco de quatro dígitos
    return v;
}

function nascimento(v){
    v=v.replace(/\D/g,"");                    //Remove tudo o que não é dígito
    v=v.replace(/(\d{2})(\d)/,"$1/$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
    v=v.replace(/(\d{2})(\d)/,"$1/$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
    return v;
}

function data(v){
    v=v.replace(/\D/g,"");                    //Remove tudo o que não é dígito
    v=v.replace(/(\d{2})(\d)/,"$1/$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
    v=v.replace(/(\d{2})(\d)/,"$1/$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
    return v;
}

function cep(v){
    v=v.replace(/\D/g,"");                    //Remove tudo o que não é dígito
    v=v.replace(/(\d{5})(\d)/,"$1-$2");       //Coloca um travessao entre o terceiro e o quarto dígitos
    return v;
}