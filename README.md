For clarification, To create the package I would create a folder containing profile.d setup.d, Docker file and build.sh (https://github.com/vmware-tanzu-labs/educates-extension-packages/tree/main/packages/tce-0.12) . Then modify the publish-packages.yaml (which is a github workflow and will update automatically on push to main) to deploy them to GHCR (using imgpkg from Carvel)

**Note:** profile.d is process AFTER setup.d when building packages
## How to build image
1. cd into package folder
    ```
    cd packages/gemfire
    ```
2. Build with docker
    ```
    docker build -t $REGISTRY/gemfire-image:latest .
    ```

    **Note:** I am using the images registry running on a local educates cluster (REGISTRY=localhost:5001)

3. Push to registry
    ```
    docker push $REGISTRY/gemfire-image:latest
    ```

## How to test package image creation (Make sure all necessary files have been copied in teh correct locations)
1. Run Image as Container 
    ```
    docker run -it --name gemfire $REGISTRY/gemfire-image:latest 
    ```
<!-- 
## Deploy to local image registry 
1. Build pod
    ```
    kubectl apply -f test.yaml
    ```
## Exec into Registry
```
k exec -it deployment/registry -- bin/sh
```

[image-name]:$REGISTRY/gemfire-image:latest -->
