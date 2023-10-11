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


exxc() {
    echo "What deployable would you like to make"
    echo "I for Interstellar"
    echo "X for the wip method by bubbo"
    echo "T for manual input"
    read -p "> " forktype

    case $forktype in 
        i | I) 
            forktype="https://github.com/InterstellarNetwork/Interstellar"
            name="Interstellar"
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
        ;;
        t | T) 
            echo "Input the github link to mirror"
            read -p "> " forktype
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
        ;;
        x | X) 
            forktype="https://github.com/ypxa/x/"
            name="x"
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
        ;;
        *) 
            clear
            exxc
        ;;
    esac
}
exxc
