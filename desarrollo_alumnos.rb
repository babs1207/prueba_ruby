def read_alum(file_name)
  file = File.open(file_name, 'r')
  alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
  file.close
  alum
end

read_alum('alumnos.csv')
array_de_alumnos = read_alum('alumnos.csv')

def menu
  puts '1) Ver el nombre del alumno y su promedio'
  puts '2) Ver el nombre del alumno y sus inasistencias'
  puts '3) Ver el nombre de los alumnos aprobados'
  puts '4) Salir!!!'
end
menu
puts 'Ingrese la opcion a elegir'
opcion = gets.chomp.to_i

while opcion != 4
  if opcion == 1
    array_de_alumnos.each do |alumnos|
      nombre_alumnos = alumnos[0]
      notas = alumnos.map { |num| num.to_i }
      promedio_notas = notas.sum / notas.count.to_f
      puts "#{nombre_alumnos} tiene un promedio de #{promedio_notas}"
    end
  elsif opcion == 2
    inasistencias = false
    inasistencias_alumnos = 0
    array_de_alumnos.each do |alumnos|
      nombre_alumnos = alumnos[0]
      inasistencias = true if alumnos.include? 'A'
      inasistencias_alumnos += 1 if inasistencias == true
      puts "#{nombre_alumnos} tiene #{inasistencias_alumnos} de inasistencias"
    end
  elsif opcion == 3 
  end
end
