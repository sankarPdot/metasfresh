package de.metas.handlingunits.storage.impl;

/*
 * #%L
 * de.metas.handlingunits.base
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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public
 * License along with this program.  If not, see
 * <http://www.gnu.org/licenses/gpl-2.0.html>.
 * #L%
 */


import java.math.BigDecimal;

import org.adempiere.util.Check;
import org.compiere.model.I_C_UOM;
import org.compiere.model.I_M_Product;

import de.metas.quantity.Capacity;

public class PlainProductStorage extends AbstractProductStorage
{
	private final Capacity capacityTotal;
	private BigDecimal qtyInitial;

	public PlainProductStorage(final I_M_Product product,
			final I_C_UOM uom,
			final BigDecimal qtyTotal)
	{
		this(product,
				uom,
				qtyTotal,
				BigDecimal.ZERO // qtyInitial=0 => empty by default
		);
	}

	public PlainProductStorage(final I_M_Product product,
			final I_C_UOM uom,
			final BigDecimal qtyTotal,
			final BigDecimal qtyInitial)
	{
		capacityTotal = Capacity.createCapacity(qtyTotal,
				product, uom,
				false // allowNegativeCapacity
				);

		Check.assumeNotNull(qtyInitial, "qtyInitial not null");
		this.qtyInitial = qtyInitial;
	}

	public PlainProductStorage(final Capacity capacity, final BigDecimal qtyInitial)
	{
		capacityTotal = capacity;

		Check.assumeNotNull(qtyInitial, "qtyInitial not null");
		this.qtyInitial = qtyInitial;
	}

	@Override
	protected Capacity retrieveTotalCapacity()
	{
		return capacityTotal;
	}

	@Override
	protected BigDecimal retrieveQtyInitial()
	{
		return qtyInitial;
	}

	@Override
	protected void beforeMarkingStalled()
	{
		// we are just saving current qty as next qtyInitialO
		qtyInitial = getQty();
	}

}
