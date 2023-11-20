//document.getElementById('formCadastrarLIvro').addEventListener('submit', function (event) {
//        var nomeLivro = document.getElementById('CadastrarLivroNome').value;
//        var autorLivro = document.getElementById('CadastrarLivroAutor').value;
//        var sinopseLivro = document.getElementById('CadastrarLivroSinopse').value;
//        var dataLancamentoLivro = document.getElementById('CadastrarLivroDataLancamento').value;
//
//        if (nomeLivro.trim() === '' || autorLivro.trim() === '' || sinopseLivro.trim() === '' || dataLancamentoLivro.trim() === '') {
//            alert('Por favor, preencha todos os campos.');
//            event.preventDefault();
//        }
//    });
    
$(document).ready(function () {
    $('.editar-resenha-button').click(function () {
        var analiseId = $(this).data('analise-id');
        var analiseTitulo = $('#titulo_' + analiseId).text();
        var analiseResenha = $('#resenha_' + analiseId).text();
        var analiseNota = $('#nota_' + analiseId).text();
        
        
        $('#analiseId').val(analiseId);
        $('#EditarAnaliseTitulo').val(analiseTitulo);
        $('#EditarAnaliseAnalise').val(analiseResenha);
        $('#EditarAnaliseNota').val(analiseNota);
        
        var formAction = '/editar-analise/' + analiseId;
        $('#formEditarAnalise').attr('action', formAction);
        
        var formAction = '/excluir-analise/' + analiseId;
        $('#btnExcluirAnalise').attr('formaction', formAction);
        
        mostrarEditarAnalise();
        
        const windowHeight = $(window).height();
        const formHeight = $('#formEditarAnalise').height();
        const scrollTo = $('#formEditarAnalise').offset().top - (windowHeight / 2) + (formHeight / 2);
        
         $('html, body').animate({
            scrollTop: scrollTo
        }, 500);
        
        $('#formEditarAnalise textarea[name="titulo"]').focus();
    });
    $("#btnEditarlivro").on("click", function () {
        $("#rowAdicionarAnalise").removeClass("d-flex");
        $("#rowAdicionarAnalise").addClass("d-none");
        
        $("#rowEditarAnalise").removeClass("d-flex");
        $("#rowEditarAnalise").addClass("d-none"); 
        
        $("#rowEditarLivro").removeClass("d-none");
        $("#rowEditarLivro").addClass("d-flex");        
    });
   $("#btnCancelarEditarLivro").on("click", function () {
        $("#rowEditarLivro").removeClass("d-flex");
        $("#rowEditarLivro").addClass("d-none");        
        
        $("#rowAdicionarAnalise").removeClass("d-none");
        $("#rowAdicionarAnalise").addClass("d-flex");        
    });
    
    $("#btnCancelarEditarAnalise").on("click", function () {
        $("#rowEditarAnalise").removeClass("d-flex");
        $("#rowEditarAnalise").addClass("d-none");        
        
        $("#rowAdicionarAnalise").removeClass("d-none");
        $("#rowAdicionarAnalise").addClass("d-flex");        
    });
    
    function mostrarEditarAnalise(){
         $("#rowAdicionarAnalise").removeClass("d-flex");
        $("#rowAdicionarAnalise").addClass("d-none");
        
        $("#rowEditarLivro").removeClass("d-flex");
        $("#rowEditarLivro").addClass("d-none"); 
        
        $("#rowEditarAnalise").removeClass("d-none");
        $("#rowEditarAnalise").addClass("d-flex");        
    }
    
});
    

