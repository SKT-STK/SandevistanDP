advancement revoke @s only sand:eaten
execute if predicate sand:is_sneaking run function sand:_schedule/ece26f3d-eac8-4b65-a6ca-4f6c46a23395
execute unless predicate sand:is_sneaking run schedule clear sand:_schedule/7b440228-78dc-4d4e-8638-91a228918f93
