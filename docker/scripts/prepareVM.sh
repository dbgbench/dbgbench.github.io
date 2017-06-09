#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Usage: $0 <subject>"
  exit 1
fi
subject=$1 #'grep' 'findutils' 

uuid=$(date +%s | sha256sum | base64 | head -c10; echo )

scriptdir=~/corebench
basedir=~/corerepo
repo=git://git.savannah.gnu.org

git config --global user.email "client@corebench.com"
git config --global user.name "Corebench User"

cp "$scriptdir/subjects/grep/install_quick.sh" "$HOME/grep.compile.sh" 
cp "$scriptdir/subjects/findutils/install_quick.sh" "$HOME/find.compile.sh" 

echo "Note that the following test cases should all fail."

function quit {
  echo
  echo $1
  exit 1
}

function shorten {
  echo $1 | cut -c -8
}

function test_reg_after {
  "$TEST/test.sh" "$SRC" 2>&1 >& /dev/null
  fail_after=$?

  if [ $fail_after -eq 0 ]; then
    printf "[v] $subname${error_id}: Test case PASSED.\n"
  elif [ $fail_after -eq 1 ]; then
    printf "[x] $subname${error_id}: Test case FAILED.\n"
  elif [ $fail_after -eq 32 ]; then
    printf "Skipping $subname.$fix_after_rev. Only observable on 32bit kernel\n"
    rm -rf $SRC
    error_id=$((error_id - 1))
  else 
    printf "[?] $subname${error_id}: Test case FAILURE! Something went wrong with the test case.\n"
  fi
}

error_id=0
function test_revs {
  subject=$1
  reg_after_rev=$2
  fix_after_rev=$3
  subname=$(echo $subject | cut -c -4)

  if ! [ -e "$scriptdir/subjects/$subject/tests/${reg_after_rev}_${fix_after_rev}/regression.sh" ] ; then 
    printf "Skipping $subname.$fix_after_rev. No test case.\n"
    return 0
  fi

  error_id=$((error_id + 1))
  

  #CREATE SUBJECT TEST AND SOURCE
  TEST=~/Desktop/$subname${error_id}/test
  SRC=~/Desktop/$subname${error_id}/$subname
  mkdir -p $TEST
  mkdir -p $SRC
  
  #COPY TEST CASE AND SRC
  cp -rf "$scriptdir/subjects/$subject/tests/${reg_after_rev}_${fix_after_rev}/." $TEST/  2>&1 >& /dev/null
  mv "$TEST/regression.sh" "$TEST/test.sh"  2>&1 >& /dev/null
  if [[ "$subject.${fix_after_rev}" == "find.66c536bb" ]]; then
    pushd $TEST > /dev/null
    patch -p1 -f -l < ~/test.find.66c536bb.patch
    popd > /dev/null
  fi

  cp -Lrf "$basedir/$subject/$reg_after_rev/$subject/." $SRC/
  cd $SRC
  printf "all: ;\nclean: ;\n" > doc/Makefile 
  printf "all: ;\nclean: ;\n" > po/Makefile
  "$scriptdir/subjects/$subject/install_quick.sh" $SRC $reg_after_rev "$scriptdir" 2>&1 >& /dev/null
  printf "all: ;\nclean: ;\n" > doc/Makefile 
  printf "all: ;\nclean: ;\n" > po/Makefile

  #CHECK IF SUCCESSFUL
  if [[ $subname == "grep" ]]; then
    $SRC/src/grep --version 2>&1 >& /dev/null
    tmp=$?
    if [ $tmp -ne 0 ]; then
      echo "Built version $subname${error_id} ($reg_after_rev) cannot be executed."
    fi 
  elif [[ $subname == "find" ]]; then
    $SRC/find/find --version 2>&1 >& /dev/null
    tmp=$?
    if [ $tmp -ne 0 ]; then
      echo "Built version $subname${error_id} ($reg_after_rev) cannot be executed."
    fi
  elif [[ $subname == "core" ]]; then
    $SRC/src/ls --version 2>&1 >& /dev/null
    tmp=$?
    if [ $tmp -ne 0 ]; then
      echo "Built version $subname${error_id} ($reg_after_rev) cannot be executed."
    fi
  fi
  #PREPARE PATCH DERIVATION
  cd $SRC
  git add -u 2>&1 >& /dev/null
  git commit -m "Base" 2>&1 >& /dev/null
  git branch $subname${error_id} 2>&1 >& /dev/null
  cat > $SRC/../diff.sh <<EOF
#!/bin/bash
cd $SRC/
#git diff HEAD > ../$subname${error_id}.patch
#diff -x "*~" -Naur $SRC_COPY $SRC > ../$subname${error_id}.patch
git diff $subname${error_id} > ../$subname${error_id}.patch
echo ""
echo "Please copy the contents of $subname${error_id}.patch into"
echo "the appropriate field at http://bit.do/$subname-${fix_after_rev}."
echo ""
EOF
  chmod +x $SRC/../diff.sh
  cat > $SRC/../restore.sh << EOF
#!/bin/bash
choice=0
read -p "All your changes will be lost. Are you sure you want to rollback and restore the original (buggy) program (y/n)?" choice
case "\$choice" in 
  y|Y ) echo "Okay";;
  n|N ) exit 0 ;;
  * ) echo "Did not understand. Try again."; exit 1 ;;
esac

cd $SRC
git reset --hard
"~/$subname.compile.sh" "$SRC" $reg_after_rev "$scriptdir" 2>&1 >& /dev/null
EOF
  chmod +x $SRC/../restore.sh

  #PREPARE README-FILE
  if [[ $subname == "grep" ]]; then
    printf "Grep is a command-line utility for searching plain-text data sets for lines matching a regular expression. For instance, the command 'grep apple fruitlist.txt' returns all occurances of 'apple' in the file fruitlist.txt. To find out more about the parameters that grep can take, type 'grep --help' or 'man grep'.\n\n"  | fmt -w 90 > $SRC/../readme.txt
  elif [[ $subname == "find" ]]; then
    printf "Find is a command-line utility that searches through one or more directory trees of a file system, locates files based on some user-specified criteria and applies a user-specified action on each matched file. The possible search criteria include a pattern to match against the file name or a time range to match against the modification time or access time of the file. By default, find returns a list of all files below the current working directory.\n\n" | fmt -w 90 > $SRC/../readme.txt
  elif [[ $subname == "core" ]]; then
    printf "Coreutils is a collection of the basic tools, such as cat, ls, and rm, that are expected to be available on every Unix-like operating system. If time permits, you can consider these errors as BONUS debugging task.\n\n" | fmt -w 90 > $SRC/../readme.txt
  else
    quit "UNKNOWN SUBJECT: $subject"
  fi 
printf "
BUG DIAGNOSIS\n
1) Visit http://bit.do/$subname-${fix_after_rev}?entry.594570799=$uuid to read the simplified bug report specific to this error $subname${error_id}.\n
NOTE THAT EVERY ERROR HAS ITS OWN LINK!\n
2) Run the following test case. If the exit code is 0, the test case has passed, otherwise it failed. You can check the exit code with \"echo \$?\".\n
$TEST/test.sh $SRC\n
\n
3) Note down the DIAGNOSIS STARTING TIME for this error.\n
4) You may want to start bug diagnosis by understanding the runtime actions leading to the error that is reproduced by the test case. Of course, you can use any tools that are available on this machine or on the internet. Technically, all bugs can be explained in *.c or *.h files.\n
5) Note down the DIAGNOSIS ENDING TIME for this error.\n
6) Answer all questions on the first page of the questionnaire at http://bit.do/$subname-${fix_after_rev}?entry.594570799=$uuid and click 'Next'.\n

BUG FIXING\n
7) Note down the FIXING STARTING TIME for this error.\n
8) Fix the error. Again, you can use any tool that is available to you.\n
9) Note down the FIXING ENDING TIME for this error.\n
10) Answer all questions on the second page of the questionnaire at http://bit.do/$subname-${fix_after_rev}?entry.594570799=$uuid .\n
--> Execute $SRC/../diff.sh and copy the contents of $SRC/../$subname${error_id}.patch to the field provided in the questionnaire.\n 
--> Execute $SRC/../restore.sh to undo all changes if you have any troubles and want to start anew.\n
--> Execute make in the folder $SRC to compile the program after it was changed.\n
When you are finished, click 'Submit'\n
You can now continue with the next error.\n\n" | fmt -w 90 >> $SRC/../readme.txt

echo "In case you need to use sudo privileges on the VM:" >> $SRC/../readme.txt
echo "* user     = root" >> $SRC/../readme.txt
echo "* password = corebench" >> $SRC/../readme.txt
echo "" >> $SRC/../readme.txt
echo "Your uuid is: $uuid" >> $SRC/../readme.txt
echo "" >> $SRC/../readme.txt
echo "If you have any questions about the infrastructure or the questionnaire, do not hesitate to contact us immediately!" | fmt -w 90 >> $SRC/../readme.txt

echo "This is error $subname.$fix_after_rev. Your uuid is $uuid" > $SRC/../$subname.$fix_after_rev

test_reg_after  

  cd - 2>&1 >& /dev/null
}

echo "-- $subject --"
while read r_pair; do 
  reg=$(echo $r_pair | cut -c -41)
  fix=$(echo $r_pair | cut -c 42-82)
  more_reg=""
  more_fix=""
  if [[ $reg = \#* ]]; then
    continue
  fi
  if [[ $reg = \+* ]]; then
    read more_reg
    reg=$(echo "$reg" | cut -c 2-)
  fi
  if [[ $fix = *+* ]]; then
    read more_fix
    #Two '+' -> shift 2
    if ! [ -z "$more_reg" ]; then
      fix=$(echo "$fix" | cut -c 3-)
      #One '+' -> shift 1
    else 
      fix=$(echo "$fix" | cut -c 2-)
    fi
  fi
  
  reg_after_rev=$(shorten "$reg")
  fix_after_rev=$(shorten "$fix")
  if ! [ -z "$more_reg" ]; then 
    reg_after_rev=$(shorten "$more_reg") 
  fi
  if ! [ -z "$more_fix" ]; then 
    fix_after_rev=$(shorten "$more_fix") 
  fi
    echo $subject $reg_after_rev $fix_after_rev 
done < "$scriptdir/subjects/$subject/regressions.txt" | shuf | while read reg_after_rev fix_after_rev; do test_revs $reg_after_rev $fix_after_rev; done

exit 0
