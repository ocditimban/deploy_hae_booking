directory_name='/mysql-dump';

case "$(uname -s)" in

  CYGWIN*|MINGW32*|MINGW64*|MSYS*)
    for f in ../mysql-dump/*.sql; do
      f="$(basename -- $f)"
      winpty docker exec -it hae_database mysql -uroot -proot -e "source /docker-entrypoint-initdb.d/$f; show databases;"
    done
    ;;

  # Add here more strings to compare
  # See correspondence table at the bottom of this answer
  *)
    docker exec hae_booking sh -c "$command"
    ;;
esac