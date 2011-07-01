get '/' do
  erb :index
end

post '/convert' do
  csv = params[:csv]
  @table = csv.lines.to_a.collect { |line| line.chomp.split ',' }
  @rendered_table = table(@table.first, *@table[1..-1]).render
  erb :convert
end