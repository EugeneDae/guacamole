uninet(){
  cd .net; ./init.sh ; cd -
}

thisTemplate(){
  cd template
  cp .this this
}

uninet
thisTemplate
