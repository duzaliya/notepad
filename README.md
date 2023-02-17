# Программа "Блокнот"

Программа для личного планирования, создания заметок и сохранения ссылок.

#### Для запуска:
Убедитесь, что у вас установлен [Ruby](https://www.ruby-lang.org/ru/documentation/installation/) и [БД SQLite](https://setiwik.ru/kak-ustanovit-sqlite-i-brauzer-sqlite-v-ubuntu/).

##### Склонируйте репозиторий
```
git clone https://github.com/duzaliya/notepad.git
```
##### Перейдите в папку notepad
```
cd notepad
```
##### Для создания записи запустите
```
ruby new_post.rb
```
Программа предложит вам 3 типа постов, выберите цифру от 0 до 2, следуйте инструкциям в терминале.

##### Для чтения своих постов запустите
```
ruby read.rb -h
```
