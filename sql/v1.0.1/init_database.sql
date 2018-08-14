/*
PGSQL Backup
Source Server Version: 9.6.2
Source Database: forever
Date: 2018/7/8 星期日 13:22:26
*/


-- ----------------------------
--  Sequence definition for "public"."tb_color_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tb_color_id_seq";
CREATE SEQUENCE "public"."tb_color_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
--  Sequence definition for "public"."tb_purchase_order_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tb_purchase_order_id_seq";
CREATE SEQUENCE "public"."tb_purchase_order_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
--  Sequence definition for "public"."tb_resources_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tb_resources_id_seq";
CREATE SEQUENCE "public"."tb_resources_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
--  Sequence definition for "public"."tb_role_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tb_role_id_seq";
CREATE SEQUENCE "public"."tb_role_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
--  Sequence definition for "public"."tb_role_permission_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tb_role_permission_id_seq";
CREATE SEQUENCE "public"."tb_role_permission_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
--  Sequence definition for "public"."tb_sales_order_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tb_sales_order_id_seq";
CREATE SEQUENCE "public"."tb_sales_order_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
--  Sequence definition for "public"."tb_size_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tb_size_id_seq";
CREATE SEQUENCE "public"."tb_size_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
--  Sequence definition for "public"."tb_stock_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tb_stock_id_seq";
CREATE SEQUENCE "public"."tb_stock_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
--  Sequence definition for "public"."tb_user_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tb_user_id_seq";
CREATE SEQUENCE "public"."tb_user_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
--  Sequence definition for "public"."tb_user_role_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tb_user_role_id_seq";
CREATE SEQUENCE "public"."tb_user_role_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
--  Table structure for "public"."tb_color"
-- ----------------------------
DROP TABLE "public"."tb_color";
CREATE TABLE "public"."tb_color" (
"id" int8 DEFAULT nextval('tb_color_id_seq'::regclass) NOT NULL,
"color_name" varchar(50) COLLATE "default" NOT NULL,
"create_time" timestamptz(6),
PRIMARY KEY ("id"),
UNIQUE ("color_name")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."tb_color" IS '颜色表';

COMMENT ON COLUMN "public"."tb_color"."id" IS '编号';

COMMENT ON COLUMN "public"."tb_color"."color_name" IS '颜色名';

COMMENT ON COLUMN "public"."tb_color"."create_time" IS '创建时间';;


-- ----------------------------
--  Table structure for "public"."tb_size"
-- ----------------------------
DROP TABLE "public"."tb_size";
CREATE TABLE "public"."tb_size" (
"id" int8 DEFAULT nextval('tb_size_id_seq'::regclass) NOT NULL,
"size_name" varchar(50) COLLATE "default" NOT NULL,
"size_code" varchar(10) COLLATE "default" NOT NULL,
"create_time" timestamptz(6),
PRIMARY KEY ("id"),
UNIQUE ("size_name", "size_code")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."tb_size" IS '尺寸表';

COMMENT ON COLUMN "public"."tb_size"."id" IS '编号';

COMMENT ON COLUMN "public"."tb_size"."size_name" IS '尺寸名';

COMMENT ON COLUMN "public"."tb_size"."size_code" IS '尺寸简称';

COMMENT ON COLUMN "public"."tb_size"."create_time" IS '创建时间';

-- ----------------------------
--  Table structure for "public"."tb_resources"
-- ----------------------------
DROP TABLE "public"."tb_resources";
CREATE TABLE "public"."tb_resources" (
"id" int8 DEFAULT nextval('tb_resources_id_seq'::regclass) NOT NULL,
"resources_name" varchar(50) COLLATE "default",
"type" int2,
"create_time" timestamptz(6),
PRIMARY KEY ("id"),
UNIQUE ("resources_name", "type")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."tb_resources" IS '资源表';

COMMENT ON COLUMN "public"."tb_resources"."id" IS '编号';

COMMENT ON COLUMN "public"."tb_resources"."resources_name" IS '资源名';

COMMENT ON COLUMN "public"."tb_resources"."type" IS '类型, 1:菜单 2:操作';

COMMENT ON COLUMN "public"."tb_resources"."create_time" IS '创建时间';;

-- ----------------------------
--  Table structure for "public"."tb_role"
-- ----------------------------
DROP TABLE "public"."tb_role";
CREATE TABLE "public"."tb_role" (
"id" int8 DEFAULT nextval('tb_role_id_seq'::regclass) NOT NULL,
"role_name" varchar(50) COLLATE "default",
"create_time" timestamptz(6),
"update_time" timestamptz(6),
PRIMARY KEY ("id"),
UNIQUE ("role_name")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."tb_role" IS '角色表';

COMMENT ON COLUMN "public"."tb_role"."id" IS '编号';

COMMENT ON COLUMN "public"."tb_role"."role_name" IS '角色名';

COMMENT ON COLUMN "public"."tb_role"."create_time" IS '创建时间';

COMMENT ON COLUMN "public"."tb_role"."update_time" IS '修改时间';;

-- ----------------------------
--  Table structure for "public"."tb_role_permission"
-- ----------------------------
DROP TABLE "public"."tb_role_permission";
CREATE TABLE "public"."tb_role_permission" (
"id" int8 DEFAULT nextval('tb_role_permission_id_seq'::regclass) NOT NULL,
"role_id" int8,
"resources_id" int8,
"create_time" timestamptz(6),
"update_time" timestamptz(6),
PRIMARY KEY ("id"),
FOREIGN KEY ("role_id") REFERENCES "public"."tb_role" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
FOREIGN KEY ("resources_id") REFERENCES "public"."tb_resources" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
UNIQUE ("role_id", "resources_id")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."tb_role_permission" IS '角色资源表';

COMMENT ON COLUMN "public"."tb_role_permission"."id" IS '编号';

COMMENT ON COLUMN "public"."tb_role_permission"."role_id" IS '角色编号';

COMMENT ON COLUMN "public"."tb_role_permission"."resources_id" IS '资源编号';

COMMENT ON COLUMN "public"."tb_role_permission"."create_time" IS '创建时间';

COMMENT ON COLUMN "public"."tb_role_permission"."update_time" IS '修改时间';;


-- ----------------------------
--  Table structure for "public"."tb_user"
-- ----------------------------
DROP TABLE "public"."tb_user";
CREATE TABLE "public"."tb_user" (
"id" int8 DEFAULT nextval('tb_user_id_seq'::regclass) NOT NULL,
"user_name" varchar(50) COLLATE "default",
"password" varchar(50) COLLATE "default",
"real_name" varchar(50) COLLATE "default",
"status" int2 DEFAULT 1,
"create_time" timestamptz(6),
"update_time" timestamptz(6),
PRIMARY KEY ("id"),
UNIQUE ("user_name")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."tb_user" IS '用户表';

COMMENT ON COLUMN "public"."tb_user"."id" IS '编号';

COMMENT ON COLUMN "public"."tb_user"."user_name" IS '账号';

COMMENT ON COLUMN "public"."tb_user"."password" IS '密码';

COMMENT ON COLUMN "public"."tb_user"."real_name" IS '真实姓名';

COMMENT ON COLUMN "public"."tb_user"."status" IS '状态, 0:无效, 1:有效';

COMMENT ON COLUMN "public"."tb_user"."create_time" IS '创建时间';

COMMENT ON COLUMN "public"."tb_user"."update_time" IS '修改时间';;

-- ----------------------------
--  Table structure for "public"."tb_user_role"
-- ----------------------------
DROP TABLE "public"."tb_user_role";
CREATE TABLE "public"."tb_user_role" (
"id" int8 DEFAULT nextval('tb_user_role_id_seq'::regclass) NOT NULL,
"user_id" int8,
"role_id" int8,
"create_time" timestamptz(6),
"update_time" timestamptz(6),
PRIMARY KEY ("id"),
FOREIGN KEY ("user_id") REFERENCES "public"."tb_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
FOREIGN KEY ("role_id") REFERENCES "public"."tb_role" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
UNIQUE ("user_id")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."tb_user_role" IS '用户角色表';

COMMENT ON COLUMN "public"."tb_user_role"."id" IS '编号';

COMMENT ON COLUMN "public"."tb_user_role"."user_id" IS '用户编号';

COMMENT ON COLUMN "public"."tb_user_role"."role_id" IS '角色编号';

COMMENT ON COLUMN "public"."tb_user_role"."create_time" IS '创建时间';

COMMENT ON COLUMN "public"."tb_user_role"."update_time" IS '修改时间';

-- ----------------------------
--  Table structure for "public"."tb_stock"
-- ----------------------------
DROP TABLE "public"."tb_stock";
CREATE TABLE "public"."tb_stock" (
"id" int8 DEFAULT nextval('tb_stock_id_seq'::regclass) NOT NULL,
"purchase_order_name" varchar(255) COLLATE "default",
"goods_name" varchar(255) COLLATE "default",
"color_id" int8,
"size_id" int8,
"quantity" int8,
"avg_price" numeric(20,6),
"create_time" timestamptz(6),
"update_time" timestamptz(6),
PRIMARY KEY ("id"),
FOREIGN KEY ("size_id") REFERENCES "public"."tb_size" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
FOREIGN KEY ("color_id") REFERENCES "public"."tb_color" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
UNIQUE ("purchase_order_name", "goods_name", "color_id", "size_id")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."tb_stock" IS '库存表';

COMMENT ON COLUMN "public"."tb_stock"."id" IS '编号';

COMMENT ON COLUMN "public"."tb_stock"."purchase_order_name" IS '进货单名称';

COMMENT ON COLUMN "public"."tb_stock"."goods_name" IS '商品名称';

COMMENT ON COLUMN "public"."tb_stock"."color_id" IS '颜色';

COMMENT ON COLUMN "public"."tb_stock"."size_id" IS '尺寸';

COMMENT ON COLUMN "public"."tb_stock"."quantity" IS '剩余数量';

COMMENT ON COLUMN "public"."tb_stock"."avg_price" IS '库存平均价';;

COMMENT ON COLUMN "public"."tb_stock"."create_time" IS '创建时间';

COMMENT ON COLUMN "public"."tb_stock"."update_time" IS '修改时间';

-- ----------------------------
--  Table structure for "public"."tb_purchase_order"
-- ----------------------------
DROP TABLE "public"."tb_purchase_order";
CREATE TABLE "public"."tb_purchase_order" (
"id" int8 DEFAULT nextval('tb_purchase_order_id_seq'::regclass) NOT NULL,
"goods_id" int8,
"color_id" int8,
"size_id" int8,
"cost_price" numeric(20,6),
"quantity" int8,
"total" numeric(20,6),
"user_id" int8,
"create_time" timestamptz(6),
"update_time" timestamptz(6),
PRIMARY KEY ("id"),
FOREIGN KEY ("goods_id") REFERENCES "public"."tb_stock" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
FOREIGN KEY ("color_id") REFERENCES "public"."tb_color" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
FOREIGN KEY ("size_id") REFERENCES "public"."tb_size" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."tb_purchase_order" IS '进货订单表';

COMMENT ON COLUMN "public"."tb_purchase_order"."id" IS '编号';

COMMENT ON COLUMN "public"."tb_purchase_order"."goods_id" IS '商品编号';

COMMENT ON COLUMN "public"."tb_purchase_order"."color_id" IS '颜色';

COMMENT ON COLUMN "public"."tb_purchase_order"."size_id" IS '尺寸';

COMMENT ON COLUMN "public"."tb_purchase_order"."cost_price" IS '成本价';

COMMENT ON COLUMN "public"."tb_purchase_order"."quantity" IS '数量';

COMMENT ON COLUMN "public"."tb_purchase_order"."total" IS '总价';

COMMENT ON COLUMN "public"."tb_purchase_order"."user_id" IS '用户编号';

COMMENT ON COLUMN "public"."tb_purchase_order"."create_time" IS '创建时间';

COMMENT ON COLUMN "public"."tb_purchase_order"."update_time" IS '修改时间';


-- ----------------------------
--  Table structure for "public"."tb_sales_order"
-- ----------------------------
DROP TABLE "public"."tb_sales_order";
CREATE TABLE "public"."tb_sales_order" (
"id" int8 DEFAULT nextval('tb_sales_order_id_seq'::regclass) NOT NULL,
"goods_id" int8,
"color_id" int8,
"size_id" int8,
"tag_price" numeric(20,6),
"sell_price" numeric(20,6),
"quantity" int8,
"total" numeric(20,6),
"user_id" int8,
"pay_type" int2,
"remark" varchar(255) COLLATE "default",
"create_time" timestamptz(6),
"update_time" timestamptz(6),
PRIMARY KEY ("id"),
FOREIGN KEY ("goods_id") REFERENCES "public"."tb_stock" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
FOREIGN KEY ("size_id") REFERENCES "public"."tb_size" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
FOREIGN KEY ("color_id") REFERENCES "public"."tb_color" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."tb_sales_order" IS '出货订单表';

COMMENT ON COLUMN "public"."tb_sales_order"."id" IS '编号';

COMMENT ON COLUMN "public"."tb_sales_order"."goods_id" IS '商品编号';

COMMENT ON COLUMN "public"."tb_sales_order"."color_id" IS '颜色';

COMMENT ON COLUMN "public"."tb_sales_order"."size_id" IS '尺寸';;

COMMENT ON COLUMN "public"."tb_sales_order"."tag_price" IS '吊牌价';

COMMENT ON COLUMN "public"."tb_sales_order"."sell_price" IS '成交价';

COMMENT ON COLUMN "public"."tb_sales_order"."quantity" IS '数量';

COMMENT ON COLUMN "public"."tb_sales_order"."total" IS '总价';

COMMENT ON COLUMN "public"."tb_sales_order"."user_id" IS '用户编号';

COMMENT ON COLUMN "public"."tb_sales_order"."pay_type" IS '支付方式';

COMMENT ON COLUMN "public"."tb_sales_order"."remark" IS '备注';

COMMENT ON COLUMN "public"."tb_sales_order"."create_time" IS '创建时间';

COMMENT ON COLUMN "public"."tb_sales_order"."update_time" IS '修改时间';