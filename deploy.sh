#!/bin/bash
docker login -u preethivinil -p dckr_pat_Eoo1sRzg6OWiGjxvnSm3qAABSVE
if [[ $GIT_BRANCH == "origin/dev" ]]; then

        docker tag devops-build preethivinil/dev:project
        docker push preethivinil/dev:project

elif [[ $GIT_BRANCH == "origin/master" ]]; then

        docker tag devops-build preethivinil/prod:project01
        docker push preethivinil/prod:project01

else
        echo "failed"
fi

