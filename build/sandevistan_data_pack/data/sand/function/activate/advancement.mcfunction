advancement revoke @s only sand:eaten
execute if predicate sand:is_sneaking run function sand:activate/advancement/schedule_function_01
execute unless predicate sand:is_sneaking run function sand:activate/advancement/schedule_clear_0
