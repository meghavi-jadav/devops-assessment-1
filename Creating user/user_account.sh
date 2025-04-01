if [[ "${UID}" -ne 0 ]]; then 
    echo 'You must be root to run this script. ' >&2
    exit 1
fi

read -p 'Enter the username to create: ' USER_NAME

read -p 'Enter the name of the person who this account is for: ' COMMENT

read -p 'Enter the password to use for the account: ' PASSWORD 

useradd -c "${COMMENT}" -m ${USER_NAME}

#Here we are trying to check if the useradd command succeeded
if [[ "${?}" -ne 0 ]]; then
    echo 'The account could not be created.' >&2
    exit 1
fi


#Here we are trying to set the password for the user account
echo ${USER_NAME}:${PASSWORD} | chpasswd


#Checking if chpasswd command succeeded
if [[ "${?}" -ne 0 ]]; then
    echo 'The password for the account could not be set.' >&2
    exit 1
fi

HOSTNAME = $(hostname)


echo 'The account has been created successfully'
echo 
echo 'Username: '
echo "${USER_NAME}"
echo 
echo 'Password: '
echo "${PASSWORD}"




