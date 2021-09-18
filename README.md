# docker-image-to-git
There are two sets of repositories that are associated with docker containers.

## Local Repositories
The first set of repositories is the local ones that are on the user's computer.  There is a repository for docker containers, and you will make a local github repository. 

### Docker Images
The local docker repository is not a directory like the github directory, in that the directory is not used for editing.

The docker image in the local docker repository can be used as a model to make the image metadata that will be located in github. For this reason, there are two repositories in hub.docker.com.

```docker pull liteinthecloud/docker-image-in-hub:latest``` is the image that was decided on previous to making anything public.

Making Docker use this image to build new images is somewhat off-topic, but the initial idea was that Docker will search the local repository first, and if the requested image cannot be located, it will search the hub.docker.com repositories.

When the final edition was created, the docker image was uploaded to hub.docker.com.  It can be downloaded by using the following.

```docker pull liteinthecloud/docker-image-to-git```
The name implies that you will also find its information in github, which is not true of the other inage.

### Github Directories
The local github repository differs from the local docker image store because you will actually ```mkdir``` a directory, ```cd``` to it, and add content and folders. It is differentiated from normal folders on your conputer because it was initialized as a local github repository by using the command ```git init```.

The information that is stored in the local repository includes, but is not limited to:
* The Dockerfile that describes how to build the desired image from the one that is included in the ```FROM``` command
* Default configuration files
* index.html and similar files

## Internet Repositories
Likewise, where there is a local repository, there should also be a repository that can be shared with your team or the world. The docker container images will be pushed to hub.docker.com, and the same information should be pushed to your github.com repository.

After the repositories on docker and github are created, their status can be changed to public or private, depending on the intended distribution.

### Docker Images

This image can be pulled from the docker repository by using:
```
docker pull liteinthecloud/docker-image-to-git
```
You can also build an image from the docker image by using the following command.

```docker build -t liteinthecloud/docker-image-to-git```

The fully qualified image name would resemble the following
```docker build -t docker.io/liteinthecloud/docker-image-to-git:latest```.

### Github Directories

The corresponding github repository can be retrieved with 
git clone https://github.com/Yvonne-Richardson/docker-image-to-git

The directry will contain all of the initial content for the site that will be built with that specific image.
