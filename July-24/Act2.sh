while getopts ":t:" opt; do    #gettopts will get the options for a argument 
 case ${opt} in
 t )
 target=$OPTARG                    #whatever is handed from getopts is stored inside the optarg
 ;;
 \? )
 echo "Invalid option: $OPTARG" 1>&2     #If not valid option is entered inside of OPTARG 
 ;;
 : )
 echo "Invalid option: $OPTARG requires an argument"   #If nothing is found in the optarg at all meaning                                                                                                    t                                                                                                      the gettops failed
1>&2
 ;;
 esac
done
shift $((OPTIND -1))   #holds the index of the next arg in optind and then is shifts it back one
