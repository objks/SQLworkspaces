SELECT nfcid, MIN(TIME) FROM commute WHERE `nfcid`='AAA';

UPDATE `nfc`.`commute` SET `checkout`='2020-03-19 12:31:56' WHERE  `nfcid`='AAA' AND `time`='2020-03-19 10:31:56';