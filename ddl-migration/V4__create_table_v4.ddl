CREATE TABLE `AddPrice` (
  `ID` bigint(11) NOT NULL AUTO_INCREMENT,
  `AssetName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `AssetTicker` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Exchange` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ContractAddress` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Contact` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IsActive` tinyint(4) NOT NULL,
  `CreateUser` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LastEditUser` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CreateTime` datetime NOT NULL,
  `LastEditTime` datetime NOT NULL,
  UNIQUE KEY `PRIMARY` (`ID`,`AssetName`,`AssetTicker`,`Exchange`) USING HASH,
  SHARD KEY `__SHARDKEY` (`AssetName`,`AssetTicker`,`Exchange`),
  KEY `__UNORDERED` () USING CLUSTERED COLUMNSTORE
) AUTO_INCREMENT=33776997205278721 AUTOSTATS_CARDINALITY_MODE=INCREMENTAL AUTOSTATS_HISTOGRAM_MODE=CREATE AUTOSTATS_SAMPLING=ON SQL_MODE='STRICT_ALL_TABLES';