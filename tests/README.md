# Running all the tests in parallel

We want to parallelize the tests on the CI and therefore added specific profiles for each test
project that can be enabled via Maven profiles. This way you can still run all tests alltogether
by not enabling any profile or only a specific one by enabling all the others.

This is used in the Cirrus CI pipeline in order to parallelize all the tests and save time on the
execution.

## org.eclipse.reddeer.common.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcore-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.core.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.direct.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.e4.workbench.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.eclipse.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,e4.workbench-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.gef.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.graphiti.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.integration.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.jface.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.junit.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.requirements.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.swt.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,ui-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.ui.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,uiforms-skipTests,workbench-skipTests

## org.eclipse.reddeer.uiforms.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,workbench-skipTests

## org.eclipse.reddeer.workbench.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-skipTests,core-skipTests,direct-skipTests,e4.workbench-skipTests,eclipse-skipTests,gef-skipTests,graphiti-skipTests,integration-skipTests,jface-skipTests,junit-skipTests,requirements-skipTests,swt-skipTests,ui-skipTests,uiforms-skipTests
