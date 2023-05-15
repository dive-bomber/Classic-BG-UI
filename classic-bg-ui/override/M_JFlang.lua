function findLanguage()
	currentlanguage = Infinity_GetINIString('Language', 'Text', '')
	if currentlanguage == "it_IT" then			-- Italian
			JFStrings = {
			JF_All = "Tutte",
			JF_Active = "Attive",
			JF_Completed = "Completate",
			JF_Notes = "Le Mie Note:",
			JF_Edited = "Aggiornato:",
			---
			Required_Donation = "Donazione richiesta", 
			takeAll = "Prendi tutto [E]",
			Level_String = "Livello", 
			Spells_String = "Incantesimi",			
			Chapter_Epilogue = "Epilogo",
			Search = "Cercare"
		}
	elseif currentlanguage == "pl_PL" then			-- Polish
			JFStrings = {
			JF_All = "Wszystkie",
			JF_Active = "Aktywne",
			JF_Completed = "Wykonane",
			JF_Notes = "Moje notatki:",
			JF_Edited = "Zmieniony:",
			---
			Required_Donation = "Wymagany datek",
			takeAll = "Wez wszystko [E]",
			Level_String = "Czary", 
			Spells_String = "Poziomu",
			Chapter_Epilogue = "Epilog",
			Search = "Szukaj"
		}
	elseif currentlanguage == "de_DE" then			-- German
			JFStrings = {
			JF_All = "Alle",
			JF_Active = "Offen",
			JF_Completed = "Abgeschlossen",
			JF_Notes = "Meine Notizen:",
			JF_Edited = "Bearbeitet:",
			---
			Required_Donation = "Erforderliche Spende ",
			takeAll = "Nimm alles [E]",
			Level_String = "Eben", 
			Spells_String = "Zauber",			
			Chapter_Epilogue = "Epilog",
			Search = "Suche"
		}
	elseif currentlanguage == "pt_BR" then			-- Brazilian Portuguese 
			JFStrings = {
			JF_All = "Todas",
			JF_Active = "Ativas",
			JF_Completed = "Concluídas",
			JF_Notes = "Minhas Anotações:",
			JF_Edited = "Editado:",
			---
			Required_Donation = "Doação necessária ", 
			takeAll = "Leve tudo [E]",
			Level_String = "Nível", 
			Spells_String = "Feitiços",
			Chapter_Epilogue = "Epílogo",
			Search = "Procurar"
		}
	elseif currentlanguage == "fr_FR" then			-- French
			JFStrings = {
			JF_All = "Toutes",
			JF_Active = "Actives",
			JF_Completed = "Accomplies",
			JF_Notes = "Mes notes:",
			JF_Edited = "Modifiée:",
			---
			Required_Donation = "Don requis",
			takeAll = "Prendre toutes [E]", 
			Level_String = "Niveau", 
			Spells_String = "Sorts",			
			Chapter_Epilogue = "Épilogue",
			Search = "Rechercher"
		}
	elseif currentlanguage == "cs_CZ" then			-- Czech
			JFStrings = {
			JF_All = "Všechny",
			JF_Active = "Aktivní",
			JF_Completed = "Dokončené",
			JF_Notes = "Poznámky:",
			JF_Edited = "Upravené:",
			---
			Required_Donation = "Požadovaný dar",
			takeAll = "Vzít vše [E]", 
			Level_String = "Kouzla", 
			Spells_String = "Úrove",
			Chapter_Epilogue = "Epilogue",
			Search = "Hledat"
		}
	else											-- no matching language or language strings not set, so default to en_US for the extra strings
		JFStrings = {
			JF_All = "All",
			JF_Active = "Active",
			JF_Completed = "Completed",
			JF_Notes = "My Notes:",
			JF_Edited = "Edited:",
			---
			Required_Donation = "Required donation",
			takeAll = "Take all [E]",
			Level_String = "Level", --I realize there are in-game strings for that but it is a possibility that in certain languages these words have different order and/or need conjugated forms
			Spells_String = "Spells",
			Chapter_Epilogue = "Epilogue",
			Search = "Search",
			Backstab = "Backstab",
			WildSurge = "Wild Surge",
			NO_PAUSE_IN_INVENTORY_LABEL = "No pause in inventory",
			NO_PAUSE_IN_INVENTORY_DESCRIPTION = "^RGame-changing.^- \n\nLike in the OG Baldur's Gate, the game unpauses itself when you open inventory screen.",
		}
	end
end

function popupRequester (maxCount, func, selling, icon)
	requester.requesterMax = maxCount
	requester.requesterFunc = func
	requester.selling = selling
	requester.icon = icon
	Infinity_PushMenu('POPUP_REQUESTER',0,0)
end

function popup2ButtonReformParty(info, okText, okFunc, cancelText, cancelFunc)
	Popup2ButtonReformParty = {
		info = info,
		okFunc = okFunc,
		okText = okText,
		cancelFunc = cancelFunc,
		cancelText = cancelText,
	}
	Infinity_PushMenu("POPUP_REFORMPARTY")
end