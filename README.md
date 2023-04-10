The docker file was created so that a Docker image could be created to run Nginx Server and deploy the docker image via AWS Elastic Beanstalk. 

Login to console and search for Elastic BeanStalk and create new environment
![createEnvironment](https://user-images.githubusercontent.com/116180321/230812249-af0e17c3-5cce-4515-88a6-061c10451b44.PNG)

You will see the following and select the options highlighted in blue
![CreateWebApp](https://user-images.githubusercontent.com/116180321/230812251-959889bb-36be-409d-a18f-ef64f34b3a15.PNG)

When you scroll down on the same page you will see the option to upload the DockerImage file to AWS Elastic Beanstalk
![ElasticBeanstalkDeployment](https://user-images.githubusercontent.com/116180321/230812254-958a5320-afbc-4e37-8308-321d72e05930.PNG)

Then you should see AWS start deploying the infrastructure needed to deploy the web app.
You should now be able to copy the link circled in blue and access the 2048 game from the AWS deployment
![DeploymentLink](https://user-images.githubusercontent.com/116180321/230812764-1f015a2f-d9e7-40fe-998b-7754386c5783.PNG)
