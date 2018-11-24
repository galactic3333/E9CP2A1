require 'date'
class Course
  def initialize(nombre, finic, fterm)
    @nombre = nombre
    @finic = finic
    @fterm = fterm
  end

  def self.method1(file = 'cursos.txt')
    cursos = []
    data = []
    File.open(file, 'r') { |f| data = f.readlines.map(&:chomp) }

    data.each do |curso|
      cursos << self.new(*curso.split(', '))
    end
    print cursos
  end


  def self.cursos_previos(fecha = Date.today)

    print cursos

  end

  def self.cursos_posteriores(fecha = Date.today)
  end

end

Course.method1
Course.cursos_previos