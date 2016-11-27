set -ev

case $SUITE in
chefspec)
  rspec
  ;;
*)
  rake integration:docker[test,"$SUITE",2]
  ;;
esac
