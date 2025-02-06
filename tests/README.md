# Running all the tests in parallel

We want to parallelize the tests on the CI and therefore added specific profiles for each test
project that can be disabled via Maven profiles. This way you can still run all tests alltogether
by not disableing any profile or only a specific one by disabling all the others.

This is used in the Cirrus CI pipeline in order to parallelize all the tests and save time on the
execution.

## org.eclipse.reddeer.common.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-core,-direct,-e4.workbench,-eclipse,-gef,-graphiti,-integration,-jface,-junit,-requirements,-swt,-ui,-uiforms,-workbench

## org.eclipse.reddeer.core.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-direct,-e4.workbench,-eclipse,-gef,-graphiti,-integration,-jface,-junit,-requirements,-swt,-ui,-uiforms,-workbench

## org.eclipse.reddeer.direct.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-e4.workbench,-eclipse,-gef,-graphiti,-integration,-jface,-junit,-requirements,-swt,-ui,-uiforms,-workbench

## org.eclipse.reddeer.e4.workbench.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-eclipse,-gef,-graphiti,-integration,-jface,-junit,-requirements,-swt,-ui,-uiforms,-workbench

## org.eclipse.reddeer.eclipse.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-e4.workbench,-gef,-graphiti,-integration,-jface,-junit,-requirements,-swt,-ui,-uiforms,-workbench

## org.eclipse.reddeer.gef.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-e4.workbench,-eclipse,-graphiti,-integration,-jface,-junit,-requirements,-swt,-ui,-uiforms,-workbench

## org.eclipse.reddeer.graphiti.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-e4.workbench,-eclipse,-gef,-integration,-jface,-junit,-requirements,-swt,-ui,-uiforms,-workbench

## org.eclipse.reddeer.integration.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-e4.workbench,-eclipse,-gef,-graphiti,-jface,-junit,-requirements,-swt,-ui,-uiforms,-workbench

## org.eclipse.reddeer.jface.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-e4.workbench,-eclipse,-gef,-graphiti,-integration,-junit,-requirements,-swt,-ui,-uiforms,-workbench

## org.eclipse.reddeer.junit.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-e4.workbench,-eclipse,-gef,-graphiti,-integration,-jface,-requirements,-swt,-ui,-uiforms,-workbench

## org.eclipse.reddeer.requirements.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-e4.workbench,-eclipse,-gef,-graphiti,-integration,-jface,-junit,-swt,-ui,-uiforms,-workbench

## org.eclipse.reddeer.swt.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-e4.workbench,-eclipse,-gef,-graphiti,-integration,-jface,-junit,-requirements,-ui,-uiforms,-workbench

## org.eclipse.reddeer.ui.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-e4.workbench,-eclipse,-gef,-graphiti,-integration,-jface,-junit,-requirements,-swt,-uiforms,-workbench

## org.eclipse.reddeer.uiforms.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-e4.workbench,-eclipse,-gef,-graphiti,-integration,-jface,-junit,-requirements,-swt,-ui,-workbench

## org.eclipse.reddeer.workbench.test

> mvn clean verify -Dmaven.test.failure.ignore=true -P-common,-core,-direct,-e4.workbench,-eclipse,-gef,-graphiti,-integration,-jface,-junit,-requirements,-swt,-ui,-uiforms
