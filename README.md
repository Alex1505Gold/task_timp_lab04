[![Build Status](https://travis-ci.org/matveybaykalov/task_timp_lab04.svg?branch=master)](https://travis-ci.org/matveybaykalov/task_timp_lab04)

# Отчёт по lab04

## Сначала были выполнены команды из учебного материала
```shell
export GITHUB_USERNAME=matveybaykalov
export GITHUB_TOKEN=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

cd ${GITHUB_USERNAME}/workspace
pushd .
source scripts/activate

curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles
echo "source $HOME/.rvm/scripts/rvm" >> scripts/activate
. scripts/activate
rvm autolibs disable
rvm install ruby-2.4.2
rvm use 2.4.2 --default
gem install travis

git clone https://github.com/${GITHUB_USERNAME}/lab03 projects/lab04
cd projects/lab04
git remote remove origin
git remote add origin https://github.com/${GITHUB_USERNAME}/lab04

cat > .travis.yml <<EOF
language: cpp
EOF

cat >> .travis.yml <<EOF

script:
- cmake -H. -B_build -DCMAKE_INSTALL_PREFIX=_install
- cmake --build _build
- cmake --build _build --target install
EOF

cat >> .travis.yml <<EOF

addons:
  apt:
    sources:
      - george-edison55-precise-backports
    packages:
      - cmake
      - cmake-data
EOF

travis login --github-token ${GITHUB_TOKEN}

travis lint

ex -sc '1i|<фрагмент_вставки_значка>' -cx README.md

git add .travis.yml
git add README.md
git commit -m"added CI"
git push origin master

travis lint
travis accounts
travis sync
travis repos
travis enable
travis whatsup
travis branches
travis history
travis show
```

## Выполнение домашнего задания

Предварительно была создана директория и удалённый репозиторий task_timp_lab04
```shell
mkdir task_timp_lab04
cd task_timp_lab04
```
Также был склонированы файлы с предыдущей лабораторной работы в текущую директорию
```shell
git clone https://github.com/matveybaykalov/timp_task_lab03.git .
git remote remove origin
git remote add origin https://github.com/matveybaykalov/task_timp_lab04.git
```
Был создан файл .travis.yml и отредактирован с помощью *vim*
```shell
touch .travis.yml
vim .travis.yml
```
В файл был добавлен следующий текст
```yaml
languahe: cpp

script:
- cmake -Hformatter_lib -Bformatter_lib/_build -DCMAKE_INSTALL_PREFIX=_install
- cmake --build formatter_lib/_build
- cmake -Hformatter_ex_lib -Bformatter_ex_lib/_build -DCMAKE_INSTALL_PREFIX=_install
- cmake --build formatter_ex_lib/_build
- cmake -Hhello_world_application -Bhello_world_application/_build -DCMAKE_INSTALL_PREFIX=_install
- cmake --build hello_world_application/_build
- cmake -Hsolver_application -Bsolver_application/_build -DCMAKE_INSTALL_PREFIX=_install
- cmake --build solver_application/_build



addons:
  apt:
    sources:
      - george-edison55-precise-backports
    packages:
      - cmake
      - cmake-data
```
Также были удалены все ненцжные файлы. В текущей директории остались только 
файлы необходимые для работы программ и библиотек, а именно: заголовочные файлы, файлы с реализациями, CMakeLists.txt 
и сам файл .travis.yml

Затем, все изменения были добавлены в удалёный репозиторий.
```shell
git add .
git commit -m "Added CI"
git push origin master
```
В завершении я авторризировался на сайте https://travis-ci.org и запустил тест сборки.

P.S. я выполнял задание постепенно, поэтому приходилось делать несколько коммитов, чтобы разобраться с работой travis, 
но для уменьшения текста в отчёте в файл поместил сразу итоговый код.