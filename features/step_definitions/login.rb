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
  
  Então("Verifico se estou logado no Pagseguro") do
    find(:xpath, "//*[@id='ps']/body/main/section/div/div[1]/div[1]/div/h3")
  end