puts "Bem vindo ao advinhador de número!!"
puts "Insira o seu nome: "

name = gets.chomp
min = 1;
max = 100;
avg = rand(max);
inputText =  "Digite 1 se for menor ou 2 se for maior ou 0 se eu acertei!"

puts "########################################################"
puts "Vamos começar #{name}!"
puts "########################################################"
puts "Pense em um número entre #{min} e #{max}"
puts "Irei fazer 5 perguntas e tentarei advinhar o seu número"

count = 0
loop do
	puts "Seu número é maior ou menor que #{avg}?"
	puts "#{inputText}"
	response = gets.chomp
	if response == "1"
		max = avg - 1
		avg = rand(max)
	end
	if response == "2"
		min = avg
		avg = rand(avg..max)
	end
	if response == "0"
		puts "Eu mando bem demais, obrigado por jogar!"
		break
	end
	if count == 5
		puts "Você me venceu :/"
		break
	end
	count = count + 1
end