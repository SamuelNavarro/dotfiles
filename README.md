# Dotfiles

### TODO:
- [ ] Sincronizar entre todas las máquinas 
- [ ] Para hacer vim compatible con c y YouCompleteMe, tengo que instalar `sudo apt-get install python3-dev`. 
- [ ] Revisar si es mejor eliminar jedi-vim y dejar YCM por la lentitud de la búsqueda. 

Revisar:
https://github.com/Valloric/YouCompleteMe#full-installation-guide


# VIM

De los buscadores, ```Ctrl + P``` es igual que :FZF, busca archivos. Con FZF puedo usar ```Ag``` para encontrar palabras o regex dentro del directorio que estoy buscando. El [repositorio](https://github.com/junegunn/fzf.vim). Para usar Ag con FZF se tiene que instalar [silver_searcher](https://github.com/ggreer/the_silver_searcher).

- Ctags
  - Intalar ctags y luego en el directorio que quiero crear la tags, ```ctags -R --python-kinds=-i``` Ahora en Vim puedo utilizar :tag.
  - Para pasar las tags a un archivo que después pueda cargar en vim para diferentes proyectos ver: http://www.held.org.il/blog/2011/02/configuring-ctags-for-python-and-vim/
  - Revisar en el futuro para ctags y futuras aplicaciones: http://www.adminschoice.com/crontab-quick-reference
