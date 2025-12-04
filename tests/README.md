# Running all the tests in parallel

We want to parallelize the tests on the CI and therefore added specific profiles for each test
bundle that can be enabled to run unit/integration tests on that specific bundle. By default all
unit/integration tests of all test bundles are disabled.

## org.eclipse.reddeer.common.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcommon-tests

## org.eclipse.reddeer.core.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pcore-tests

## org.eclipse.reddeer.direct.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pdirect-tests

## org.eclipse.reddeer.e4.workbench.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pe4.workbench-tests

## org.eclipse.reddeer.eclipse.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Peclipse-tests

## org.eclipse.reddeer.graphiti.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pgraphiti-tests

## org.eclipse.reddeer.integration.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pintegration-tests

## org.eclipse.reddeer.jface.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pjface-tests

## org.eclipse.reddeer.junit.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pjunit-tests

## org.eclipse.reddeer.requirements.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Prequirements-tests

## org.eclipse.reddeer.swt.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pswt-tests

## org.eclipse.reddeer.ui.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pui-tests

## org.eclipse.reddeer.uiforms.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Puiforms-tests

## org.eclipse.reddeer.workbench.test

> mvn clean verify -Dmaven.test.failure.ignore=true -Pworkbench-tests
