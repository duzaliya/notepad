class Post

  # метод выводит массив детей класа Post
  def self.post_types
    [Memo, Link, Task]
  end

  # метод создает экземпляр одного из детей класса Post в зависимости от индекса массива, который ему передали
  def self.create(type_index)
    return post_types[type_index].new
  end

  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    # этот метот должен быть реализован у каждого ребенка
  end

  def to_strings
    # этот метот должен быть реализован у каждого ребенка
  end

  def save
    file = File.new(file_path, "w:UTF-8")

    to_strings.each { |string| file.puts(string) }

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)

    file_time = @created_at.strftime("%Y-%m-%d_%H-%M-%S")

    "#{current_path}/#{self.class.name}_#{file_time}.txt"
  end
end
