# sample-projects-on-typescript
_git_submodule_
Проект с Git-попдмодулями в виде библиотек. Это демонстрационный проект интеграции нескольких частей кода,
которые могут независимо развиваться друг от друга и интегрироваться друг с другом череез Git-попдмодули.

## Репозитории с включениями
В данном случае этот проект содержит проект sysObjects, а он соответственно sysGroups. Проекты sysObjects 
и sysGroups храняться в виде отдельных веток этого же репозитория, но могут и храниться в отдельных репозиториях.
* [https://github.com/editorbank/sample-projects-on-typescript/tree/sysObjects]
* [https://github.com/editorbank/sample-projects-on-typescript/tree/sysGroup]

## Скрипты
Для обновленния и сборки проекта с подмодулями в нужной поледовательности используются дополнительные скрипты
* preinstall - рекурсивно обновляет подмодули и инсталлирует в них npm-библиотеки
* prebuild - собирает проекты в подмодулях


## Подмолули
Подмодуль добавлен как отдельная ветка того же репозитория, пример комманды:
```bash
git submodule add -b sysObjects git@github.com:editorbank/sample-projects-on-typescript.git sysObjects
```
