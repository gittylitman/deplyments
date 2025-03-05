# Deplyments


# Deploy the code to Artifact registry

- Create service account

`gcloud iam service-accounts create github-actions \
--description="GitHub Actions to push Docker images" \
--display-name="GitHub Actions Service Account"`

- Give the permssion to the Servise account

`gcloud projects add-iam-policy-binding <YOUR-PROJECT-ID> \
--member="serviceAccount:github-actions@<YOUR-PROJECT-ID>.iam.gserviceaccount.com" \
--role="roles/artifactregistry.writer"`

- Create JSON Credentional

`gcloud iam service-accounts keys create key.json \
    --iam-account=github-actions@<YOUR-PROJECT-ID>.iam.gserviceaccount.com`

- Insert the variable `GCP_SA_KEY` to the gitHub secrets.
