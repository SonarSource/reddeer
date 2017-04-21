/*******************************************************************************
 * Copyright (c) 2017 Red Hat, Inc and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     Red Hat Inc. - initial API and implementation
 *******************************************************************************/
package org.eclipse.reddeer.junit.test.internal.requirement.inject;

import org.eclipse.reddeer.junit.requirement.inject.InjectRequirement;

public class NoRequirementConfigTestMock {

	@InjectRequirement
	private RequirementB requirementA;
	
	public RequirementB getRequirementA() {
		return requirementA;
	}
	
}
