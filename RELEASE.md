# Releasing the Eclipse RedDeer fork

For releasing a new version of this Eclipse RedDeer fork, we rely on the
[Release GitHub Action](https://github.com/SonarSource/gh-action_release). Compared to other
*standard* SonarSource projects there is no **Jira project**, **Parent POM**, and also no
**Quality Gate** (due to no *SonarQube analysis*).

## Release process

1. Check whether the latest build works correctly with *SonarQube for Eclipse*. Do this by
   downloading the latest build artifact (P2 repository / Eclipse Update Site) and change the
   [Eclipse target platforms](https://github.com/SonarSource/sonarlint-eclipse/tree/master/target-platforms)
   to reference the downloaded one.

2. Create a [GitHub release](https://github.com/SonarSource/reddeer/releases/new) with tag version
   `x.y.z.buildNumber` based on the last build artifact and with branch set to the correct one
   (either `master` for `4.7.x` or `branch-4.2.0` for `4.2.y`).

3. Await the GitHub action for the release process to run successfully. Check that the P2
   repository / Eclipse Update Site was successfully uploaded to
   [SonarSource Binaries](https://binaries.sonarsource.com/?prefix=RedDeer/releases) both as a ZIP archive
   and unpacked.

4. Bump the version of the Maven/Tycho build:

> mvn org.eclipse.tycho:tycho-versions-plugin:set-version -Dtycho.mode=maven -DnewVersion={new version}
