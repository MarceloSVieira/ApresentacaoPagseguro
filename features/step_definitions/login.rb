Dado("Que estou na página do Pagseguro") do
   visit 'https://pagseguro.uol.com.br/'
   sleep(5)
  end
  
  Quando("Efetuo o login com os dados do usuário") do
    find('.button.button--light-sea-green').click()
    fill_in 'eml', with: 'rodrigo.vendedor@teste.de'
    fill_in 'pwd', with: 'ps654321'
    sleep(5)
    click_button("entrar")
  end
  
  Então("Estou logado no Pagseguro") do
    pending # Write code here that turns the phrase above into concrete actions
  end