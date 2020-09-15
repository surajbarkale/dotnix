{ writeScriptBin }:
writeScriptBin "codew" ''
  #!/bin/sh
  exec code --wait "$@"
''
