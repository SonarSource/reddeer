# Releasing the Eclipse RedDeer fork

For releasing a new version of this Eclipse RedDeer fork there is no automation in place to keep
the changes done for this fork as simple and maintainable as possible. It therefore does not rely
on the [Release GitHub Action](https://github.com/SonarSource/gh-action_release).

Instead the GitHub release is done manually based on the artifacts automatically uploaded by the
Cirrus CI build (to its own storage and not Repox) and a script to be manually triggered afterwards
by the **Platform Engineering Experience** squad.

This project does not follow the *standard* of other SonarSource projects and also does not rely on
the [Releasability GitHub Action](https://github.com/SonarSource/gh-action_releasability).

## Release process

1. Check whether the latest build works correctly with *SonarQube for Eclipse*. Do this by
   downloading the latest build artifact (P2 repository / Eclipse Update Site) and change the
   [Eclipse target platforms](https://github.com/SonarSource/sonarlint-eclipse/tree/master/target-platforms)
   to reference the downloaded one.

2. Create a [GitHub release](https://github.com/SonarSource/reddeer/releases/new) with tag version
   `x.y.z.buildNumber` based on the last build artifact and with branch set to the correct one
   (either `master` for `4.7.x` or `branch-4.2.0` for `4.2.y`).

3. Add the ZIP archive containing the P2 Repository / Eclipse Update Site (the latest build
   artifact downloaded) as an attachement/asset to the release.

4. Reach out to the **Platform Engineering Experience** squad via
   [Slack](https://sonarsource.enterprise.slack.com/archives/C04CVEU7734) for them to upload the
   release to SonarSource Binaries.

5. Bump the version of the Maven/Tycho build:

> mvn org.eclipse.tycho:tycho-versions-plugin:set-version -Dtycho.mode=maven -DnewVersion={new version}
