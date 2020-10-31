        </div>

        </div>
        
        </div>

      </div>
    </div>

    <div id="carregando">
      <img src="img/loading.gif" class="loading"/>
    </div>

    <div class="modal fade" id="modalVerDados" tabindex="-1" role="dialog" aria-labelledby="titulo-modal" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="titulo-modal"></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body" id="corpo-modal">
            
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
          </div>
        </div>
      </div>
    </div>



    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery.maskedinput.js"></script>
    <script>
      $('#toggle').click(function() {
        $('#sidebar').toggle('slide');
          $('.content').animate({
              'margin-left' : $('.content').css('margin-left') == '230px' ? '0px' : '230px'
          }, 300);
      });

      $('.cpf').mask('999.999.999-99');
      $('.cnpj').mask('99.999.999/9999-99');
      $('.fone').mask('(99) 99999-9999');
      $('.cep').mask('99999-999');

      <?php if(isset($_GET['mensagem'])): ?>
        setTimeout(function(){
          $('#alert-mensagem').fadeOut();
          window.location.href =  window.location.href.split("?")[0];
        }, 5000);
     <?php endif; ?>

     

     $('.cep').on('change', function() {
      var cep = $(this).val();

      $.ajax({
        url: `http://viacep.com.br/ws/${cep}/json/`,
        type: 'GET',
        dataType: 'json',
        beforeSend: function() {
          $('#carregando').fadeIn();

          $('#logradouro').val('');
          $('#complemento').val('');
          $('#bairro').val('');
          $('#cidade').val('');
          $('#estado').val('');
        }
      })
      .done(function(resultado) {
        if(resultado.erro) {
          alert('CEP não encontrado! Por favor digite um válido.')
          $('#cep').val('');
          $('#logradouro').val('');
          $('#complemento').val('');
          $('#bairro').val('');
          $('#cidade').val('');
          $('#estado').val('');

          return;
        }

        $('#logradouro').val(resultado.logradouro);
        $('#complemento').val(resultado.complemento);
        $('#bairro').val(resultado.bairro);
        $('#cidade').val(resultado.localidade);
        $('#estado').val(resultado.uf);

        $('#numero').focus();

      })
      .fail(function() {
        alert('Digite um CEP válido!');
        $('#cep').focus();
      }).always(function() {
        $('#carregando').fadeOut();

      });
      
     })

     $('.cpf').on('change', function() {
        let cpf = $(this).val();
        let valido = validarcpf(cpf);

        if(!valido) {
          $('.cpf').val('');
          $('.cpf').focus();
          alert('O CPF digitado é inválido, por favor digite um CPF válido!');
        }
     })


     function validarcpf(numero) {

      numero = numero.replace(/[^\d]+/g,'');
      if(numero == '') return false; 

      // Elimina CPFs invalidos conhecidos
        
      if (numero.length != 11 || 
      numero == "00000000000" || 
      numero == "11111111111" || 
      numero == "22222222222" || 
      numero == "33333333333" || 
      numero == "44444444444" || 
      numero == "55555555555" || 
      numero == "66666666666" || 
      numero == "77777777777" || 
      numero == "88888888888" || 
      numero == "99999999999")
        return invalido = false;

      var soma = 0;
      var resto;
      if (numero == "00000000000") return invalido = false;

      for (i=1; i<=9; i++) soma = soma + parseInt(numero.substring(i-1, i)) * (11 - i);
      resto = (soma * 10) % 11;

      if ((resto == 10) || (resto == 11))  resto = 0;
      if (resto != parseInt(numero.substring(9, 10)) ) return invalido = false;

      soma = 0;
      for (i = 1; i <= 10; i++) soma = soma + parseInt(numero.substring(i-1, i)) * (12 - i);
      resto = (soma * 10) % 11;

      if ((resto == 10) || (resto == 11))  resto = 0;
      if (resto != parseInt(numero.substring(10, 11) ) ) return invalido = false;
      return valido = true;
    }



    </script>
  </body>
</html>