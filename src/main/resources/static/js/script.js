document.getElementById('formCadastrarLIvro').addEventListener('submit', function (event) {
        var nomeLivro = document.getElementById('CadastrarLivroNome').value;
        var autorLivro = document.getElementById('CadastrarLivroAutor').value;
        var sinopseLivro = document.getElementById('CadastrarLivroSinopse').value;
        var dataLancamentoLivro = document.getElementById('CadastrarLivroDataLancamento').value;

        if (nomeLivro.trim() === '' || autorLivro.trim() === '' || sinopseLivro.trim() === '' || dataLancamentoLivro.trim() === '') {
            alert('Por favor, preencha todos os campos.');
            event.preventDefault();
        }
    });
    
    document.getElementById('formAdicionarAnalise').addEventListener('submit', function (event) {
        var tituloAnalise = document.getElementById('adicionarAnaliseTitulo').value;
        var analiseTexto = document.getElementById('adicionarAnaliseAnalise').value;
        var notaAnalise = document.getElementById('adicionarAnaliseNota').value;

        if (tituloAnalise.trim() === '' || analiseTexto.trim() === '' || notaAnalise.trim() === '') {
            alert('Por favor, preencha todos os campos.');
            event.preventDefault();
        }
    });

    document.getElementById('formEditarAnalise').addEventListener('submit', function (event) {
        var tituloEditarAnalise = document.getElementById('EditarAnaliseTitulo').value;
        var analiseEditarTexto = document.getElementById('EditarAnaliseAnalise').value;
        var notaEditarAnalise = document.getElementById('EditarAnaliseNota').value;

        if (tituloEditarAnalise.trim() === '' || analiseEditarTexto.trim() === '' || notaEditarAnalise.trim() === '') {
            alert('Por favor, preencha todos os campos.');
            event.preventDefault();
        }
    });

    document.getElementById('formEditarLIvro').addEventListener('submit', function (event) {
        var nomeEditarLivro = document.getElementById('editarLivroNome').value;
        var autorEditarLivro = document.getElementById('editarLivroAutor').value;
        var sinopseEditarLivro = document.getElementById('editarLivroSinopse').value;
        var dataLancamentoEditarLivro = document.getElementById('editarLivroDataLancamento').value;

        if (nomeEditarLivro.trim() === '' || autorEditarLivro.trim() === '' || sinopseEditarLivro.trim() === '' || dataLancamentoEditarLivro.trim() === '') {
            alert('Por favor, preencha todos os campos.');
            event.preventDefault();
        }
    });
