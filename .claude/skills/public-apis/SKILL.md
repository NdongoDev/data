---
name: public-apis
description: Trouver une API publique gratuite parmi ~1400 entrées catégorisées (finance, données ouvertes, géocodage, météo, IA, etc.) avec auth, HTTPS et CORS. À utiliser quand l'utilisateur cherche une source de données/API gratuite, veut comparer des APIs d'une catégorie, ou enrichir un pipeline BI/ETL.
---

# public-apis

Catalogue local du dépôt communautaire `public-apis/public-apis` (licence MIT, voir `references/LICENSE-public-apis`). Source de vérité : `references/public-apis-catalog.md`.

## Format d'une ligne
`| [Nom](url) | Description | Auth (`apiKey`, `OAuth`, `No`) | HTTPS (Yes/No) | CORS (Yes/No/Unknown) |`

## Procédure
1. Identifier la catégorie (sections `###` du catalogue) et les contraintes : auth, HTTPS, CORS.
2. Filtrer : `bash .claude/skills/public-apis/scripts/search.sh <mot-clé> [<mot-clé2>]` (mots combinés en AND).
3. Présenter 3-5 candidats max, en tableau : nom, usage, auth, HTTPS, CORS, risque.
4. Avant de recommander pour un usage production, vérifier la page officielle : le catalogue peut être périmé (API morte, quota/tarif changés, CGU).

## Règles
- Ne jamais inventer une API absente du catalogue ; le dire et proposer une recherche web.
- Signaler : auth `apiKey` (gestion des secrets), absence de HTTPS, absence de SLA, limites de débit.
- Ne pas committer de clés API ; passer par variables d'environnement.
