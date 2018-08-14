INSERT INTO "public"."tb_resources" ("resources_name", "type", "create_time", "sort_id") VALUES ('支出管理', '1', now(), NULL);

update tb_resources set sort_id = 1 where resources_name = '进货管理';
update tb_resources set sort_id = 2 where resources_name = '销售管理';
update tb_resources set sort_id = 3 where resources_name = '库存管理';
update tb_resources set sort_id = 4 where resources_name = '支出管理';
update tb_resources set sort_id = 5 where resources_name = '配置管理';
update tb_resources set sort_id = 6 where resources_name = '统计管理';
update tb_resources set sort_id = 7 where resources_name = '系统管理';

INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('1', '7', now(), now());
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('2', '7', now(), now());
