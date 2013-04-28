get "/" do
  erb :index
end

post "/convert" do
  # Process the input by removing newlines, whitespace, and replacing empty
  # lines with separator rows.
  rows = params[:input].lines.map do |row|
    row.chomp!
    if row.empty?
      :separator
    else
      row.split(params[:delimiter]).map { |column| column.strip }
    end
  end
  headers = (params[:headers] == "on")
  # Generate the table.
  @table = table do
    if headers
      self.headings = rows.first
      rows[1..-1].each { |row| add_row row }
    else
      rows.each { |row| add_row row }
    end
  end
  erb :convert
end
