package org.adempiere.util;

/*
 * #%L
 * de.metas.util
 * %%
 * Copyright (C) 2015 metas GmbH
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 2 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program. If not, see
 * <http://www.gnu.org/licenses/gpl-2.0.html>.
 * #L%
 */

/**
 * An {@link ILoggable} which collects the given log messages into one string.
 * 
 * @author metas-dev <dev@metasfresh.com>
 *
 */
public final class PlainStringLoggable implements ILoggable
{

	private final StringBuilder sb = new StringBuilder();

	private int logCount = 0;

	@Override
	public void addLog(String msg, Object... msgParameters)
	{
		if (logCount > 0)
		{
			sb.append("\n");
		}
		final String formattedMessage = StringUtils.formatMessage(msg, msgParameters);
		sb.append(formattedMessage);
		logCount++;
	}

	public String getString()
	{
		return sb.toString();
	}

}