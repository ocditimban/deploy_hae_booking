command="cd HAEBooking;"
command=$command" php artisan key:generate;"
#command=$command" php artisan cache:clear;"
#command=$command" php artisan migrate;"
#command=$command" composer install;"
#command=$command" php artisan db:seed --class=UserPermissions;"

case "$(uname -s)" in

  CYGWIN*|MINGW32*|MINGW64*|MSYS*)
    winpty docker exec hae_booking sh -c "$command"
    ;;

  # Add here more strings to compare
  # See correspondence table at the bottom of this answer
  *)
    docker exec hae_booking sh -c "$command"
    ;;
esac