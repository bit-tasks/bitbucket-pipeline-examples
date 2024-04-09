# Bit Tasks for Bitbucket CI/CD Pipelines

Example Bitbucket Pipeline jobs for common Bit and Git CI/CD workflows.

### Bitbucket Support with Bit Docker Image
Leverage seamless integration of Bitbucket support through the [Bit Docker image](https://github.com/bit-tasks/bit-docker-image). Select from these available images:

- **Latest Stable:** 
  ```
  bitsrc/stable:latest
  ```
  
- **Nightly:** 
  ```bash
  bitsrc/nightly:latest
  ```

## Setup Guide

1. **Initialize Configuration File:** Create `bitbucket-pipelines.yml` in your Bitbucket repository's root with the code shown below.
2. **Workspace Navigation:** Move to the appropriate directory if your workspace isn't at the root of your Git repository. For instance, use `cd ws-dir`.
3. **Script Initialization:** Begin with `bitbucket.bit.init`, as subsequent scripts will depend on it.
4. **CI/CD Variables Setup:** Define new CI/CD variables like:
   - `BITBUCKET_ACCESS_TOKEN`: Your Bitbucket [Repository Access Token](https://support.atlassian.com/bitbucket-cloud/docs/create-a-repository-access-token/) with appropriate permissions.
   - `BIT_CLOUD_ACCESS_TOKEN`: You need `BIT_CLOUD_ACCESS_TOKEN` ([docs](https://bit.dev/reference/ci/bitbucket-pipelines#generating-an-access-token)).
   - `GIT_USER_NAME`
   - `GIT_USER_EMAIL`
   
Ensure these variables are correctly configured within your Bitbucket Pipelines.

> **Note:** If you set the variables in Bitbucket repository settings under **Repository variables**, there's no need to explicitly define them inside your `bitbucket-pipelines.yml` file.

### Automating Component Release

| Task                        | Example                         | 
|-----------------------------|---------------------------------|
| Initialize Bit             | [bit-init/bitbucket-pipelines.yml](/bitbucket-pipelines/bit-init/bitbucket-pipelines.yml)          |
| Bit Verify Components  | [verify/bitbucket-pipelines.yml](/bitbucket-pipelines/verify/bitbucket-pipelines.yml)                |
| Bit Tag and Export        | [tag-export/bitbucket-pipelines.yml](/bitbucket-pipelines/tag-export/bitbucket-pipelines.yml)  |
| Bit Pull Request Build  | [pull-request/bitbucket-pipelines.yml](/bitbucket-pipelines/pull-request/bitbucket-pipelines.yml) |
| Bit Lane Cleanup        | [lane-cleanup/bitbucket-pipelines.yml](/bitbucket-pipelines/lane-cleanup/bitbucket-pipelines.yml) |
| Commit Bitmap           | [commit-bitmap/bitbucket-pipelines.yml](/bitbucket-pipelines/commit-bitmap/bitbucket-pipelines.yml) |

  :arrow_down: [Download Files](https://github.com/bit-tasks/bitbucket-pipeline-examples/raw/main/downloads/automating-component-releases.zip)

### Update Workspace Components, External Dependencies and Envs

| Task                        | Example                         |
|-----------------------------|---------------------------------|
| Dependency Update           | [dependency-update/bitbucket-pipelines.yml](/bitbucket-pipelines/dependency-update/bitbucket-pipelines.yml)   |

  :arrow_down: [Download Files](https://github.com/bit-tasks/bitbucket-pipeline-examples/raw/main/downloads/dependency-update.zip)

### Sync Git Branches with Bit Lanes

| Task                        | Example                         |
|-----------------------------|---------------------------------|
| Branch Lane                 | [branch-lane/bitbucket-pipelines.yml](/bitbucket-pipelines/branch-lane/bitbucket-pipelines.yml)  |

  :arrow_down: [Download Files](https://github.com/bit-tasks/bitbucket-pipeline-examples/raw/main/downloads/branch-lane.zip)


## Contributor Guide

To contribute, make updates to scripts starting with `gitlab.bit.` in the [Bit Docker Image Repository](https://github.com/bit-tasks/bit-docker-image).

To create zip files use the below commands.

```bash
chmod +x zip_files.sh
bash zip_files.sh
