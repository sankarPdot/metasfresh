-- 08.01.2016 14:03
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_RelationType_ID,Created,CreatedBy,EntityType,IsActive,IsDirected,IsExplicit,Name,Updated,UpdatedBy) VALUES (0,0,540148,TO_TIMESTAMP('2016-01-08 14:03:32','YYYY-MM-DD HH24:MI:SS'),100,'de.metas.swat','Y','N','N','C_PaySelection -> C_Invoice',TO_TIMESTAMP('2016-01-08 14:03:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 08.01.2016 14:07
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,540626,TO_TIMESTAMP('2016-01-08 14:07:00','YYYY-MM-DD HH24:MI:SS'),100,'de.metas.swat','Y','N','C_PaySelection -> C_Invoice',TO_TIMESTAMP('2016-01-08 14:07:00','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 08.01.2016 14:07
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=540626 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 08.01.2016 14:07
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,5609,0,540626,426,TO_TIMESTAMP('2016-01-08 14:07:34','YYYY-MM-DD HH24:MI:SS'),100,'de.metas.swat','Y','N',TO_TIMESTAMP('2016-01-08 14:07:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 08.01.2016 14:08
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET WhereClause='exists
(
	select 1
	from C_PaySelection ps
	join C_PaySelectionLine psl on ps.C_PaySelection_ID = psl.C_PaySelection_ID
	join C_Invoice i on psl.C_Invoice_ID = i.C_Invoice_ID
	where
		C_PaySelection.C_PaySelection_ID = ps.C_PaySelection_ID and
		(ps.C_PaySelection_ID = @C_PaySelection_ID/-1@ or i.C_Invoice_ID = @C_Invoice_ID/-1@)
)
',Updated=TO_TIMESTAMP('2016-01-08 14:08:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=540626
;

-- 08.01.2016 14:08
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET AD_Window_ID=206,Updated=TO_TIMESTAMP('2016-01-08 14:08:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=540626
;

-- 08.01.2016 14:09
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,540627,TO_TIMESTAMP('2016-01-08 14:09:16','YYYY-MM-DD HH24:MI:SS'),100,'de.metas.swat','Y','N','RelType C_PaySelection -> C_Invoice',TO_TIMESTAMP('2016-01-08 14:09:16','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 08.01.2016 14:09
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=540627 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 08.01.2016 14:10
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,3484,0,540627,318,TO_TIMESTAMP('2016-01-08 14:10:03','YYYY-MM-DD HH24:MI:SS'),100,'de.metas.swat','Y','N',TO_TIMESTAMP('2016-01-08 14:10:03','YYYY-MM-DD HH24:MI:SS'),100,'exists
(
	select 1
	from C_PaySelection ps
	join C_PaySelectionLine psl on ps.C_PaySelection_ID = psl.C_PaySelection_ID
	join C_Invoice i on psl.C_Invoice_ID = i.C_Invoice_ID
	where
		C_Invoice.C_Invoice_ID = i.C_Invoice_ID and
		(ps.C_PaySelection_ID = @C_PaySelection_ID/-1@ or i.C_Invoice_ID = @C_Invoice_ID/-1@)
)')
;

-- 08.01.2016 14:10
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET AD_Window_ID=183,Updated=TO_TIMESTAMP('2016-01-08 14:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=540627
;

-- 08.01.2016 14:10
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_RelationType SET AD_Reference_Source_ID=540626, AD_Reference_Target_ID=540627,Updated=TO_TIMESTAMP('2016-01-08 14:10:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=540148
;

