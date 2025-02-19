DROP TABLE IF EXISTS WeaveVMArchiverMonad;
DROP TABLE IF EXISTS WeaveVMArchiverMonadBackfill;

CREATE TABLE IF NOT EXISTS WeaveVMArchiverMonad (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NetworkBlockId INT UNIQUE,
    WeaveVMArchiveTxid VARCHAR(66) UNIQUE
);

CREATE TABLE IF NOT EXISTS WeaveVMArchiverMonadBackfill (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NetworkBlockId INT UNIQUE,
    WeaveVMArchiveTxid VARCHAR(66) UNIQUE
);

CREATE INDEX idx_archiver_txid ON WeaveVMArchiverMonad (WeaveVMArchiveTxid);
CREATE INDEX idx_backfill_txid ON WeaveVMArchiverMonadBackfill (WeaveVMArchiveTxid);
CREATE INDEX idx_archiver_block_id ON WeaveVMArchiverMonad (NetworkBlockId);
CREATE INDEX idx_backfill_block_id ON WeaveVMArchiverMonadBackfill (NetworkBlockId);
