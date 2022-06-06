## Accept input on command line, or read interactively if none
case $# in
  3) bday=$1; bmonth=$2; byear=$3 ;;
  *) printf "Enter the birthdate (day month year): "
     read bday bmonth byear
     ;;
esac

## Ensure 2 digits for $bmonth and $bday
case $bmonth in ?) bmonth=0$bmonth;; esac
case $bday in ?) bday=0$bday;; esac

eval "$( date "+cyear=%Y cmonth=%m cday=%d" )"

[ $bmonth$bday -lt $cmonth$cday ] &&
 age=$(( $cyear - $byear )) ||
  age=$(( $cyear - $byear - 1 ))

echo "Age = $age"
