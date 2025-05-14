#!/bin/bash
main()
{
	docker login ghcr.io

	docker tag $1 ghcr.io/$2/$1:latest

	docker push ghcr.io/$2/$1:latest
}

pushdock()
{

	case $1 in
		--help)
			echo -e "\nWelcome To This automation script to push your docker images to github registry\n\nHow to use\n\npushdock --help to display this menu\n\npushdock nameOfImage nameOfGithubAccount to push your docker image to your github registry\n\n\t\t\tThanks for using this program"
		;; 
		*)
			         docker login ghcr.io

		       		 docker tag $1 ghcr.io/$2/$1:latest

       				 docker push ghcr.io/$2/$1:latest


		;;
	esac

}
