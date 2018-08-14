INSERT INTO "public"."tb_role" ("role_name", "create_time", "update_time") VALUES ('系统管理员', '2018-05-17 23:58:12.349707+08', '2018-05-18 00:00:45.021439+08');
INSERT INTO "public"."tb_role" ("role_name", "create_time", "update_time") VALUES ('店员', '2018-05-21 01:19:58+08', '2018-05-23 00:14:10.794696+08');

INSERT INTO "public"."tb_resources" ("resources_name", "type", "create_time") VALUES ('进货管理', '1', '2018-05-17 23:59:50.970347+08');
INSERT INTO "public"."tb_resources" ("resources_name", "type", "create_time") VALUES ('出货管理', '1', '2018-05-17 23:59:59.419831+08');
INSERT INTO "public"."tb_resources" ("resources_name", "type", "create_time") VALUES ('库存管理', '1', '2018-05-18 00:00:07.497293+08');
INSERT INTO "public"."tb_resources" ("resources_name", "type", "create_time") VALUES ('系统管理', '1', '2018-05-18 00:00:13.104613+08');

INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('1', '1', '2018-05-18 00:00:45.021439+08', '2018-05-18 00:00:45.021439+08');
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('1', '2', '2018-05-18 00:00:45.021439+08', '2018-05-18 00:00:45.021439+08');
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('1', '3', '2018-05-18 00:00:45.021439+08', '2018-05-18 00:00:45.021439+08');
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('1', '4', '2018-05-18 00:00:45.021439+08', '2018-05-18 00:00:45.021439+08');

INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('2', '2', '2018-05-18 00:00:45.021439+08', '2018-05-18 00:00:45.021439+08');
INSERT INTO "public"."tb_role_permission" ("role_id", "resources_id", "create_time", "update_time") VALUES ('2', '3', '2018-05-18 00:00:45.021439+08', '2018-05-18 00:00:45.021439+08');

INSERT INTO "public"."tb_user" ("user_name", "password", "real_name", "status", "create_time", "update_time") VALUES ('admin', '3a4ebf16a4795ad258e5408bae7be341', '阿俊', '1', '2018-05-20 22:33:38.090648+08', '2018-06-01 01:11:09.069632+08');

INSERT INTO "public"."tb_user_role" ("user_id", "role_id", "create_time", "update_time") VALUES ('1', '1', '2018-05-20 22:33:38.106649+08', '2018-06-01 01:11:09.069632+08');

INSERT INTO tb_color("color_name", "create_time") VALUES ('红色', now());
INSERT INTO tb_color("color_name", "create_time") VALUES ('橙色', now());
INSERT INTO tb_color("color_name", "create_time") VALUES ('黄色', now());
INSERT INTO tb_color("color_name", "create_time") VALUES ('绿色', now());
INSERT INTO tb_color("color_name", "create_time") VALUES ('青色', now());
INSERT INTO tb_color("color_name", "create_time") VALUES ('蓝色', now());
INSERT INTO tb_color("color_name", "create_time") VALUES ('紫色', now());
INSERT INTO tb_color("color_name", "create_time") VALUES ('褐色', now());
INSERT INTO tb_color("color_name", "create_time") VALUES ('黑色', now());
INSERT INTO tb_color("color_name", "create_time") VALUES ('白色', now());
INSERT INTO tb_color("color_name", "create_time") VALUES ('灰色', now());


INSERT INTO tb_size("size_name", "size_code", "create_time") VALUES ('小码', 'S', now());
INSERT INTO tb_size("size_name", "size_code", "create_time") VALUES ('中码', 'M', now());
INSERT INTO tb_size("size_name", "size_code", "create_time") VALUES ('大码', 'L', now());
INSERT INTO tb_size("size_name", "size_code", "create_time") VALUES ('均码', 'F', now());