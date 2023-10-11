echo "Interstellar and Astroid deployable fork creator"
echo "Checking info....."
sleep 1


if ! command -v gh >/dev/null 2>&1; then
    echo "Install gh first"
    sleep 2
    exit 1
fi
sleep 1
if ! gh auth status >/dev/null 2>&1; then
    echo "You need to login: gh auth login"
    sleep 2
    exit 1
fi
sleep 1


echo "What deployable would you like to make"
echo "I for Interstellar"
echo "A for Astroid"
read -p "> " forktype

case $forktype in 
    i | I) 
        forktype="https://github.com/InterstellarNetwork/Interstellar"
        name="Interstellar"
    ;;
    a | A) 
        forktype="https://github.com/VyperGroup/astroidv3"
        name="astroidv3"
    ;;
esac

read -p "Link to your repo you want to overwrite> " yourrepo
echo "This will take a minute depends on your WiFi speed"
sleep 2
echo
echo "----"
echo "Cloning"
echo "----"
echo
git clone --bare $forktype.git
cd $name.git
echo
echo "----"
echo "Pushing"
echo "----"
echo
git push --mirror $yourrepo.git
cd -
echo "Done!"
rm -rf $name.git
