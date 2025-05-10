advancement revoke @s only sand:eaten
execute as @s if predicate sand:is_sneaking run schedule function sand:activate/activate 2t replace
execute as @s unless predicate sand:is_sneaking run schedule clear sand:activate/activate
