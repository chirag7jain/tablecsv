class TableCSV

  VERSION = "0.1.0"

  attr_reader :content

  def initialize
    @content = ''
  end

  def attach(html)
    @content = "#{@content}#{build_csv_array(html)}"
    self
  end

  private
  def build_csv_array(html)
    require 'nokogiri'

    table = Nokogiri::HTML(html).css('table')
    capture_table(table)
  end

  def capture_table(table)
    rows = @content.length == 0 ? header_row(table.first) : []
    table.css('tr').drop(1).each {|r| rows << csv_row(r.css('td')) }
    rows
  end

  def header_row(row)
    csv_row(header_cells(row))
  end

  def header_cells(row)
    if (cells = row.css('th')).length == 0
      cells = row.css('td')
    end
    cells
  end

  def csv_row(cells)
    row = ''
    cells.each {|cell| row = "#{row}#{cell.text},"}
    "#{row[0..-2]}\n"
  end

end
