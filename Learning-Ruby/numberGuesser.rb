puts "Bem vindo ao advinhador de número!!"
puts "Insira o seu nome: "

name = gets.chomp
min = 1;
max = 1000;
avg = rand(max);
initialText = "Digite 1 se for menor ou 2 se for maior: "
inputText =  "Digite 1 se for menor ou 2 se for maior ou 0 se eu acertei!"

puts "Vamos começar #{name}!"
puts "Pense em um número entre 1 e 1000"
puts "Irei fazer 3 perguntas e tentarei advinhar o seu número"
puts "Seu número é maior ou menor que #{avg}?"
puts "#{initialText}"

response = gets.chomp
if response == "1"
	max = avg
	avg = rand(max)
end
if response == "2"
	min = avg
	avg = rand(avg..max)
end

puts "Seu número é: #{avg}?"
puts "#{inputText}"

response = gets.chomp
if response == "0"
	puts "Eu mando bem demais, obrigado por jogar!"
end
if response == "1"
	max = avg
	avg = rand(max)
end
if response == "2"
	min = avg
	avg = rand(avg..max)
end

puts "Seu número é: #{avg}?"
puts "#{inputText}"

response = gets.chomp
if response == "0"
	puts "Eu mando bem demais, obrigado por jogar!"
end
if response == "1"
	max = avg
	avg = rand(max)
end
if response == "2"
	min = avg
	avg = rand(avg..max)
end

puts "Seu número é: #{avg}?"
puts "#{inputText}"

response = gets.chomp
if response == "0"
	puts "Eu mando bem demais, obrigado por jogar!"
else
	puts "Você me venceu :/"
end