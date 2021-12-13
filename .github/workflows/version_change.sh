#!/bin/bash
############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo
   echo "Syntax: scriptTemplate [-g|t]"
   echo "options:"
   echo "h     Print this Help."
   echo "t     Tag that you want change"
   echo
}

############################################################
############################################################
# Main program                                             #
############################################################
############################################################

# Set variables
Tag=""

############################################################
# Process the input options. Add options as needed.        #
############################################################
# Get the options
while getopts ":ht:" option; do
   case $option in
      h) # display Help
         Help
         exit;;
      t) # Enter a name
         Tag=$OPTARG;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done

if [ -z "$Tag" ] 
then
    Help
    exit
fi


echo "You input the $Tag!"

sed "s/{{tag}}/$Tag/g" ../../temp/template-values.yaml > ../../test/values.yaml 