--[[ dictionnaire ]]

local deputes = {
  {nom="Machin", sexe="M"},
  {nom="Machine", sexe="F"}
}

local verbes = {
  "souhaite",
  "voudrait",
  "exige de",
  "utilise le 49-3 pour",
}

-- verbe à infinitif
local lois = {
  "interdire Internet en France",
  "renvoyer les chatons d'où ils viennent",
  "mettre fin à la congolexicomatisation francophone des lois du marché",
}

local expressionsdebut = {
  "pour",
  "afin de",
  "dans le but de",
}

-- verbe à l'infinitif
local raisons = {
  "protéger les enfants",
  "garantir la sécurité",
  "assurer la bonne conduite des parents lors de la rentrée scolaire",
}

--[[ choix des mots ]]
math.randomseed(os.time())
local depute = math.random(1, #deputes)
local verbe = math.random(1, #verbes)
local loi = math.random(1, #lois)
local expressiondebut = math.random(1, #expressionsdebut)
local raison = math.random(1, #raisons)

--[[ construction de la phrase ]]
local phrase = ((deputes[depute].sexe == "M" and "M. ") or "Mme. ")
phrase = (phrase..deputes[depute].nom.." ")
phrase = (phrase..verbes[verbe].." "..lois[loi].." "..expressionsdebut[expressiondebut].." "..raisons[raison])

--[[ correction ]]
-- de + voyelle
phrase = phrase:gsub("( de )([aeiouy])", function(d, v) return (" d'"..v) end)

print(phrase)
return phrase
