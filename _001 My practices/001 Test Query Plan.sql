use adventureworks2016_ext
go

select * from sys.dm_exec_cached_plans
select * from sys.dm_exec_query_stats
order by sql_handle, statement_start_offset
go

select * from sys.dm_exec_query_plan(0x02000000D260B22946D4E2625FC2B5822730AC96E86DE5210000000000000000000000000000000000000000)
go