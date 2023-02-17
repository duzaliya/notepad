class Link < Post
  def initialize
    super

    @url = ""
  end

  def read_from_console
    puts "Адрес ссылки:"
    @url = STDIN.gets.chomp

    puts "Что за ссылка?"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    [@url, @text, time_string]
  end

  def to_db_hash
    super.merge(
      {
        text: @text,
        url: @url
      }
    )
  end

  def load_data(data_hash)
    super

    @url = data_hash['url']
  end
end
