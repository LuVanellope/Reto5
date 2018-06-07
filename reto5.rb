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

class TheGame
  
  def initialize
    @question_answer = {}
  end
 
  def open
    content_lines = File.readlines("data.txt") 
    content_lines.each do |line|
      line_array = line.chomp.split("*")
      @question_answer[line_array[0]] = line_array[1]
    end
  end
    
  def ask
    puts "Welcome to dare 5! Can you answer all the questions? let\'s see"
    @question_answer.each do |question, answer|
      puts "Question: #{question}"
      reply = gets.chomp
      while reply.downcase != answer.downcase
        puts 'that\s not correct! Try again'
        reply = gets.chomp
      end  
      puts 'that\'s correct!'  
    end 
    puts 'We are finish! congrats'
  end  
end 


player2 = TheGame.new
player2.open
player2.ask

