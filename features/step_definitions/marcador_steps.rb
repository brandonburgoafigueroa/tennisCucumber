Given("Visito la pagina de marcador") do
    visit('/marcador')
  end
  
  Then("Deberia mostrar marcador de jugador A {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end
  
  Given("Visito la pagina del marcador") do
    visit('/marcador')
  end

  Then("Deberia mostrar nombre de jugador {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end
  Then("Deberia mostrar marcador de jugador B {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end