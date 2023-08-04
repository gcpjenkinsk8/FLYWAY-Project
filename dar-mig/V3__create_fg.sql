CREATE PIPELINE `figRewards`
AS LOAD DATA LINK link_kafka_prod 'dev-0-digitalassetresearch-b9b3.aivencloud.com:23893/figment_rewards'
BATCH_INTERVAL 1000
MAX_PARTITIONS_PER_BATCH 1
ENABLE OUT_OF_ORDER OPTIMIZATION
DISABLE OFFSETS METADATA GC
REPLACE
INTO TABLE `figEthRewards`
FORMAT JSON
(
    `figEthRewards`.`dateReward` <- `date`,
    `figEthRewards`.`value` <- `value`,
    `figEthRewards`.`staking` <- `staking`,
    `figEthRewards`.`tips` <- `tips`
)