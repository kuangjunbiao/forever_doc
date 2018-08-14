-- 颜色表
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('无颜色', now());
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('红色', now());
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('橙色', now());
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('黄色', now());
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('绿色', now());
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('青色', now());
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('蓝色', now());
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('紫色', now());
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('褐色', now());
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('黑色', now());
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('白色', now());
INSERT INTO "public"."tb_color" ("color_name", "create_time") VALUES ('灰色', now());

-- 尺寸表
INSERT INTO "public"."tb_size" ("size_name", "size_code", "create_time") VALUES ('无尺寸', '', now());
INSERT INTO "public"."tb_size" ("size_name", "size_code", "create_time") VALUES ('小码', 'S', now());
INSERT INTO "public"."tb_size" ("size_name", "size_code", "create_time") VALUES ('中码', 'M', now());
INSERT INTO "public"."tb_size" ("size_name", "size_code", "create_time") VALUES ('大码', 'L', now());
INSERT INTO "public"."tb_size" ("size_name", "size_code", "create_time") VALUES ('均码', 'F', now());
INSERT INTO "public"."tb_size" ("size_name", "size_code", "create_time") VALUES ('35', '35', now());
INSERT INTO "public"."tb_size" ("size_name", "size_code", "create_time") VALUES ('36', '36', now());
INSERT INTO "public"."tb_size" ("size_name", "size_code", "create_time") VALUES ('37', '37', now());
INSERT INTO "public"."tb_size" ("size_name", "size_code", "create_time") VALUES ('38', '38', now());

-- 资源表
INSERT INTO "public"."tb_resources" ("resources_name", "type", "create_time") VALUES ('进货管理', '1', now());
INSERT INTO "public"."tb_resources" ("resources_name", "type", "create_time") VALUES ('销售管理', '1', now());
INSERT INTO "public"."tb_resources" ("resources_name", "type", "create_time") VALUES ('库存管理', '1', now());
INSERT INTO "public"."tb_resources" ("resources_name", "type", "create_time") VALUES ('配置管理', '1', now());
INSERT INTO "public"."tb_resources" ("resources_name", "type", "create_time") VALUES ('统计管理', '1', now());
INSERT INTO "public"."tb_resources" ("resources_name", "type", "create_time") VALUES ('系统管理', '1', now());

-- 角色表
INSERT INTO "public"."tb_role" ("role_name", "create_time", "update_time") VALUES ('系统管理员', now(), now());
INSERT INTO "public"."tb_role" ("role_name", "create_time", "update_time") VALUES ('店员', now(), now());


-- 角色资源表
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('1', '1', now(), now());
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('1', '2', now(), now());
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('1', '3', now(), now());
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('1', '4', now(), now());
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('1', '5', now(), now());
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('1', '6', now(), now());

INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('2', '2', now(), now());
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('2', '3', now(), now());
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('2', '4', now(), now());


-- 用户表
INSERT INTO "public"."tb_user" ("user_name", "password", "real_name", "status", "create_time", "update_time") VALUES ('forevery', '56023dba22c4ab91d642bea16c1d58c1', '徐颖', '1',  now(), now());

-- 用户角色表
INSERT INTO "public"."tb_user_role" ("user_id", "role_id", "create_time", "update_time") VALUES ('1', '1', now(), now());
