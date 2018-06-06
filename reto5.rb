=begin
1 Dar bienvenida al grupo. 
2.Hacer la pregunta.
3.Determinar si  es correcta la respuesta
    si es correcta
     ' felicitar'!
      Y volver al punto 2
    De lo contrario
      pedir volverlo a intentar
      dejar linea en blanco para volver
4 . Finalizadas todas las preguntas decir que termino exitosamente.
=end

class Read
  
  def initialize
    @h = {}
  end
 
  def open
    content_lines = File.readlines("data.txt") 
    @h = {}
    content_lines.map do |line|
      line_array = line.chomp.split("*")
     #puts line_array
      @h[line_array[0]] = line_array[1]
    end
   # puts @h
  end
    
  def ask
    puts "Welcome to dare 5! Can you answer all the questions? let\'s see"
    @h.each do |question, answer|
      puts "Question: #{question}"
      reply = gets.chomp
      while reply.downcase != answer.downcase
        puts 'that\s not correct! Try again'
        reply = gets.chomp
      end  
      puts 'that\s correct!'  
    end 
    puts 'We are finish! congrats'
  end  
end 


player2 = Read.new
player2.open
puts 
player2.ask

