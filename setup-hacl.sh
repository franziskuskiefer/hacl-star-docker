#!/bin/bash

opam init
eval $(opam config env)
git clone https://github.com/mitls/hacl-star.git

echo "export FSTAR_HOME=/home/worker/hacl-star/dependencies/FStar/" >> /home/worker/.bashrc
echo "export KREMLIN_HOME=/home/worker/hacl-star/dependencies/kremlin/" >> /home/worker/.bashrc
echo ". /home/worker/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true" >> /home/worker/.bashrc
echo 'let () =
try Topdirs.dir_directory (Sys.getenv "OCAML_TOPLEVEL_PATH")
with Not_found -> ()
;;' >> /home/worker/.ocamlinit

