-- ═══════════════════════════════════════════════════════════
--  GLOBAN - Configurazione
-- ═══════════════════════════════════════════════════════════


GLOBAN = {

    ----------------------------------------------------------------------------
    -- URL base del sito GLOBAN (senza slash finale)
    SiteUrl = 'https://globan.link/',

    -- Chiave API GLOBAN (da generare sul sito GLOBAN)
    -- Questa chiave deve corrispondere a quella generata sul sito GLOBAN.
    -- Senza di essa il server non potrà comunicare con il sito e non potrà bloccare i giocatori bannati dal sito.
    ApiKey = '',

    -- ID del server GLOBAN collegato alla API key (visibile nel pannello Admin > Server).
    -- Lascia vuoto solo se la key è già assegnata e non usi più server con la stessa key.
    ServerId = '',
    -----------------------------------------------------------------------------




    -----------------------------------------------------------------------------
    -- Registra gli ingressi e le uscite dei player nella sezione Admin > Server log.
    PlayerEventLogsEnabled = true,

    -- Webhook Discord per ingressi e uscite dei player (vuoto = disattivato).
    -- Ingresso: Nome Steam/Discord, Nome RP, Nome FiveM, Soldi banca, Job + grado.
    WebhookJoin = '',
    -- Uscita: Nome Steam/Discord, Nome RP, Nome FiveM, Durata sessione.
    WebhookLeave = '',

    -- Frequenza di controllo voti premio; minimo pratico 3000 ms.
    VoteRewardPollIntervalMs = 3000,

    -- Abilita (true) o disabilita (false) la voce speciale GLOBAN.ITEM.money.
    MoneyAccount = false,

    -- Inventario per item: auto, esx, ox_inventory, qb-inventory, ps-inventory,
    -- qs-inventory, lj-inventory, codem-inventory, qbcore o qbox.
    -- In auto vengono provati prima gli inventari esterni avviati, poi il framework.
    InventorySystem = 'auto',
    --------------------------------------------------------------------------------



    --------------------------------------------------------------------------------
    -- Intervallo heartbeat verso il sito in millisecondi (min 60000 consigliato)
    -- L'heartbeat aggiorna lo stato online del server sul sito.
    HeartbeatIntervalMs = 60000,

    -- Abilita il blocco dei player bannati in GLOBAN al momento del connect
    EnforceBanCheck = true,

    -- Controllo periodico dei player GIA' connessi: se bannati dal sito
    -- mentre sono online, vengono kickati automaticamente.
    -- 0 = disabilitato (sconsigliato). Es: 60000 = ogni 20 secondi.
    OnlineBanCheckMs = 20000,

    -- Messaggio di kick mostrato al player bannato
    KickMessage = 'Il tuo accesso è stato bloccato da GLOBAN.\nMotivo: %s\nPer aprire un reclamo collegati a https://globan.link/',

    -- Sistema di notifica lato client (a scelta):
    --   'auto'       -> rileva automaticamente il framework attivo (consigliato)
    --   'esx'        -> ESX.ShowNotification
    --   'qbcore'     -> QBCore.Function.Notify
    --   'qbox'       -> exports['qbx_core']:Notify
    --   'ox_lib'     -> lib.notify (richiede @ox_lib/init.lua nel file fxmanifest.lua)
    --   'standalone' -> notifica nativa GTA + chat:addMessage
    NotifySystem = 'auto',

    -- Debug: stampa in console server/client le richieste
    Debug = false,
}


-- Il premio viene dato per qualsiasi voto server espresso mentre il player è online proprio lì.
-- L'account GLOBAN deve avere collegato almeno Steam o Discord al personaggio FiveM.
GLOBAN.ITEM = {
    money = 5000,
    water = 5,
    bread = 5,
}



-- lato server
-- ─────────────────────────────────────────────
--  Export: verifica manuale (per altri script)
--  exports['globan-script']:checkPlayer(source, callback)
-- ─────────────────────────────────────────────