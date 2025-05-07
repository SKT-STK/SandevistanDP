advancement revoke @s only sand:eaten
execute if predicate sand:is_sneaking run function sand:_schedule/c167404e-9bbb-45fa-8794-acded2b4d516
execute unless predicate sand:is_sneaking run schedule clear sand:_schedule/29499df4-ffd1-41dc-bd17-5043dbfa06a3
