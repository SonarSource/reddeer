# Eclipse RedDeer fork configured to only work with SonarQube for Eclipse

This an **unoffical** fork of Eclipse [RedDeer](http://www.eclipse.org/reddeer) that follows the
approach "it works on my machine". In our case this fork should just be working for our
[SonarQube for Eclipse plug-in](https://github.com/SonarSource/sonarlint-eclipse).

It is not intended for adding new features or doing bug fixes but rather to keep it compatible with
our CI build for the product as well as the latest released versions of the Eclipse IDE.

> [!IMPORTANT]
> 
> Please do not reach out to us about providing support for this fork. It is meant to only work for
> our specific needs and it is only a coincidence that this might also work for your needs.

## Archived Eclipse Project

For more information about the official but archived Eclipse project, have a look at its
[GitHub repository](https://github.com/eclipse-archived/reddeer).

## Official documentation

To get started with working with Eclipse RedDeer and implementing tests, check the official but
archived [Documentation](https://github.com/eclipse/reddeer/wiki).

# Build the p2 repository (Eclipse Update Site) locally

To build this fork locally, clone this repository and switch to the branch you want to build,
currently there are two:

- `master` based on the official `4.7.0` release adapted to our needs
- `branch-4.2.0` based on the official `4.2.0` release adapted to our needs

After that, run Maven, using Tycho, to build all bundles, features and the official Eclipse Update
Site. We have to disable the tests as there are failing ones and the tests are not split from the
main build like it is done on the SonarQube for Eclipse repository.

> mvn clean verify -DskipTests

### Running unit / integration tests

To run the unit / integration tests run Maven, using Tycho and the tests based on Eclipse
[SWTBot](https://projects.eclipse.org/projects/technology.swtbot).

> mvn clean verify -Dmaven.test.failure.ignore=true

This way the build does not fail fast and all tests are run and afterwards the results are
available.

### Using locally built artifacts

Once built the Eclipse Update Site can be found inside the this folder structure at
**site/target/repository**. Get the path and use it in `Eclipse Help -> Install New Software...` to
install the plug-in(s) inside the running application.

## Local development environment

Sadly Eclipse RedDeer does not provide a
[target platform](https://help.eclipse.org/latest/index.jsp?topic=%2Forg.eclipse.pde.doc.user%2Fconcepts%2Ftarget.htm)
for development and some plug-ins required cannot be installed on the newest version of the Eclipse
IDE anymore.

But for just maintaining a working Maven/Tycho build relying on other editors like
*Visual Studio Code* and running the build via Maven in the shell should be sufficient.
