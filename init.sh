uninet(){
  cd .net; ./init.sh ; cd -
}

thisTemplate(){
  cd
  cp -r this/.this this/this
}

uninet
thisTemplate
