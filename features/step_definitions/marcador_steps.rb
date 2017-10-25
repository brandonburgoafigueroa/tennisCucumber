Given("Visito la pagina de marcador") do
    visit('/marcador/')
  end
  
  Then("Deberia mostrar marcador de jugador {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end