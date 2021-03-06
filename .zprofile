# local development secrets 
LOCAL_SECRETS=".local_secrets"

if [ -f "$LOCAL_SECRETS" ]; then
    source $LOCAL_SECRETS
    export SPRING_DATASOURCE_USERNAME=$DATABASE_USER
    export SPRING_DATASOURCE_PASSWORD=$DATABASE_PASSWORD

    export DATABASE_ANALYTICS_USERNAME=$DATABASE_USER
    export DATABASE_ANALYTICS_PASSWORD=$DATABASE_PASSWORD
fi


LOCAL_PROFILE_FILE=".zprofile_local"
if [ -f "$LOCAL_PROFILE_FILE" ]; then
    source $LOCAL_PROFILE_FILE
fi

