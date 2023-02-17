class Memo < Post
  def read_from_console
    puts "Новая заметка (все, что пишите до строчки \"end\"):"

    line = nil

    until line == "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    # удаляем последнюю строчку, потому  что это end
    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    @text.unshift(time_string)
  end

  def to_db_hash
    super.merge(
      {
        text: @text.join('\n\r') # массив строк делаем одной большой строкой, разделяя с помощью спецсимвола перевода строки
      }
    )
  end

  def load_data(data_hash)
    super(data_hash)

    @text = data_hash['text'].split('\n\r')
  end
end
