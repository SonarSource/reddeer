# Releasing the Eclipse RedDeer fork

For releasing a new version of this Eclipse RedDeer fork, we rely on the
[Release GitHub Action](https://github.com/SonarSource/gh-action_release). Compared to other
*standard* SonarSource projects there is no **Jira project**, **Parent POM**, and also no
**Quality Gate** (due to no *SonarQube analysis*).

## Release process

1. Check whether the latest build works correctly with *SonarQube for Eclipse*. Do this by
   downloading the latest build artifact (P2 repository / Eclipse Update Site) and change the
   [Eclipse target platforms](https://github.com/SonarSource/sonarlint-eclipse/tree/master/target-platforms)
   to reference the downloaded one. You can download it either from GitHub CI or Repox!

2. Go to [Actions → Release → Run workflow](https://github.com/SonarSource/reddeer/actions/workflows/release.yml)
   and enter the full version string (e.g. `x.y.z.buildNumber`), then click **Run workflow**.

3. Await the workflow run to complete successfully. Check that the P2
   repository / Eclipse Update Site was successfully uploaded to
   [SonarSource Binaries](https://binaries.sonarsource.com/?prefix=RedDeer/releases) both as a ZIP
   archive and unpacked. The GitHub release and tag are created automatically by the workflow.

4. Bump the version of the Maven/Tycho build, then adjust the `Require-Bundle` statements:

> mvn org.eclipse.tycho:tycho-versions-plugin:set-version -Dtycho.mode=maven -DnewVersion={new version}
