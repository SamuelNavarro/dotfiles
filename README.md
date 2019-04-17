# Dotfiles

### TODO:
- [ ] Sincronizar entre todas las máquinas 
- [ ] Para hacer vim compatible con c y YouCompleteMe, tengo que instalar `sudo apt-get install python3-dev`. 
- [ ] Revisar si es mejor eliminar jedi-vim y dejar YCM por la lentitud de la búsqueda. 

Revisar:
https://github.com/Valloric/YouCompleteMe#full-installation-guide

### Para Instalación
```sudo apt-get install vim-gnome -y``` - para habilitar el clipboard del sistema. Verificar que ```vim --version``` tenga +clipboard.


# VIM

De los buscadores, ```Ctrl + P``` es igual que :FZF, busca archivos. Con FZF puedo usar ```Ag``` para encontrar palabras o regex dentro del directorio que estoy buscando. El [repositorio](https://github.com/junegunn/fzf.vim). Para usar Ag con FZF se tiene que instalar [silver_searcher](https://github.com/ggreer/the_silver_searcher).

- Ctags
  - Intalar ctags y luego en el directorio que quiero crear la tags, ```ctags -R --python-kinds=-i``` Ahora en Vim puedo utilizar :tag.
  - Para pasar las tags a un archivo que después pueda cargar en vim para diferentes proyectos ver: http://www.held.org.il/blog/2011/02/configuring-ctags-for-python-and-vim/
  - Revisar en el futuro para ctags y futuras aplicaciones: http://www.adminschoice.com/crontab-quick-reference


### Javascript
https://blog.ngzhian.com/vim-javascript-development.html es de donde saqué la mayoría de las cosas.


### Actualizar Ctags.
ctags -R -o ~/ctags ~/file/to/path
Con esto ya servirá bien ctags para ese proyecto en particular. Habrá que ver cómo agregar las otras tags y hacer que se actualicen automáticamente. 