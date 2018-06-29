class Table
  attr_reader :name, :rec1, :rec2, :rec3, :rec4 
  def initialize(name, rec1, rec2, rec3, rec4)
    @name = name
    @rec1 = rec1.to_i
    @rec2 = rec2.to_i
    @rec3 = rec3.to_i
    @rec4 = rec4.to_i
  end


  def Table.method1(archivo)
  	lines = []
  	data = []
  	File.open(archivo, 'r') { |file| data = file.readlines }
  	data.each do |line|
  	value = line.split(', ')
  # products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
  	lines << Table.new(*value)
  	
	end
	# print lines
	return lines
  end

  def maxrec
    arr = [@rec1, @rec2, @rec3, @rec4]
    max = arr.max
    puts "#{max} #{@name} Día#{arr.index(max)+1}"
  end

  def Table.total(archivo)
    lines = []
    data = []
    File.open(archivo, 'r') { |file| data = file.readlines }
    listas =  data.map(&:chomp).map{ |li| li.split(', ') }
    reca = listas.each(&:shift)
    print reca.map{ |li| li.inject(0) { |sum, x| sum += x.to_f }/li.length}.inject(0){ |sum, li| sum += li}/reca.length
  end


end

#Table.method1('casino.txt')

#Table.method1('casino.txt').each{ |tabla| tabla.maxrec }

Table.total('casino.txt')
