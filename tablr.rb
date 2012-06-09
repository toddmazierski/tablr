require "rubygems"
require "bundler/setup"
Bundler.require

get "/" do
  erb :index
end

post "/convert" do
  rows = params[:input].lines.to_a.collect do |row|
    if row.chomp == ""
      :separator
    else
      row.chomp.split(params[:delimiter]).collect { |column| column.strip }
    end
  end
  params[:headers] == "on" ? headers = true : headers = false
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
