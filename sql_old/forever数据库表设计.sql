--库存表(物品名称,物品数量,创建时间,修改时间)
--id,goods_name,quantity,create_time,update_time

DROP TABLE IF EXISTS "tb_stock";

DROP SEQUENCE IF EXISTS "public"."tb_stock_id_seq";
CREATE SEQUENCE "public"."tb_stock_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

CREATE TABLE "public"."tb_stock" (
"id" int8 DEFAULT nextval('tb_stock_id_seq'::regclass) NOT NULL,
"purchase_order_name" VARCHAR(255), 
"goods_name" varchar(255),
"quantity" int8,
"create_time" timestamptz(6),
"update_time" timestamptz(6),
CONSTRAINT "tb_stock_pkey" PRIMARY KEY ("id"),
CONSTRAINT "tb_stock_name_key" UNIQUE ("purchase_order_name","goods_name")
)
WITH (OIDS=FALSE);

COMMENT ON TABLE "public"."tb_stock" IS '库存表';
COMMENT ON COLUMN "public"."tb_stock"."id" IS '编号';
COMMENT ON COLUMN "public"."tb_stock"."purchase_order_name" IS '进货单名称';
COMMENT ON COLUMN "public"."tb_stock"."goods_name" IS '商品名称';
COMMENT ON COLUMN "public"."tb_stock"."quantity" IS '剩余数量';
COMMENT ON COLUMN "public"."tb_stock"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."tb_stock"."update_time" IS '修改时间';

--进货订单表
--id,order_name,goods_name,cost_price,quantity,total,create_time

DROP TABLE IF EXISTS "tb_purchase_order";

DROP SEQUENCE IF EXISTS "public"."tb_purchase_order_id_seq";
CREATE SEQUENCE "public"."tb_purchase_order_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

CREATE TABLE "public"."tb_purchase_order" (
"id" int8 DEFAULT nextval('tb_purchase_order_id_seq'::regclass) NOT NULL,
"goods_id" int8,
"cost_price" decimal(20,6),
"quantity" int8,
"total" decimal(20,6),
"user_id" int8,
"create_time" timestamptz(6),
"update_time" timestamptz(6),
CONSTRAINT "tb_purchase_order_pkey" PRIMARY KEY ("id")
)
WITH (OIDS=FALSE);

COMMENT ON TABLE "public"."tb_purchase_order" IS '进货订单表';
COMMENT ON COLUMN "public"."tb_purchase_order"."id" IS '编号';
COMMENT ON COLUMN "public"."tb_purchase_order"."goods_id" IS '商品编号';
COMMENT ON COLUMN "public"."tb_purchase_order"."cost_price" IS '成本价';
COMMENT ON COLUMN "public"."tb_purchase_order"."quantity" IS '数量';
COMMENT ON COLUMN "public"."tb_purchase_order"."total" IS '总价';
COMMENT ON COLUMN "public"."tb_purchase_order"."user_id" IS '用户编号';
COMMENT ON COLUMN "public"."tb_purchase_order"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."tb_purchase_order"."update_time" IS '修改时间';

--出货订单表
--id,order_name,goods_name,sell_price,quantity,total,create_time
DROP TABLE IF EXISTS "tb_sales_order";

DROP SEQUENCE IF EXISTS "public"."tb_sales_order_id_seq";
CREATE SEQUENCE "public"."tb_sales_order_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

CREATE TABLE "public"."tb_sales_order" (
"id" int8 DEFAULT nextval('tb_sales_order_id_seq'::regclass) NOT NULL, 
"goods_id" int8,
"tag_price" decimal(20,6),
"sell_price" decimal(20,6),
"quantity" int8,
"total" decimal(20,6),
"user_id" int8,
"pay_type" int2,
"remark" varchar(255),
"create_time" timestamptz(6),
"update_time" timestamptz(6),
CONSTRAINT "tb_sales_order_pkey" PRIMARY KEY ("id")
)
WITH (OIDS=FALSE);

COMMENT ON TABLE "public"."tb_sales_order" IS '出货订单表';
COMMENT ON COLUMN "public"."tb_sales_order"."id" IS '编号';
COMMENT ON COLUMN "public"."tb_sales_order"."goods_id" IS '商品编号';
COMMENT ON COLUMN "public"."tb_sales_order"."tag_price" IS '吊牌价';
COMMENT ON COLUMN "public"."tb_sales_order"."sell_price" IS '成交价';
COMMENT ON COLUMN "public"."tb_sales_order"."quantity" IS '数量';
COMMENT ON COLUMN "public"."tb_sales_order"."total" IS '总价';
COMMENT ON COLUMN "public"."tb_sales_order"."user_id" IS '用户编号';
COMMENT ON COLUMN "public"."tb_sales_order"."pay_type" IS '支付方式';
COMMENT ON COLUMN "public"."tb_sales_order"."remark" IS '备注';
COMMENT ON COLUMN "public"."tb_sales_order"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."tb_sales_order"."update_time" IS '修改时间';


--用户表
--id,user_name,password,create_time,update_time
DROP TABLE IF EXISTS "tb_user";

DROP SEQUENCE IF EXISTS "public"."tb_user_id_seq";
CREATE SEQUENCE "public"."tb_user_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

CREATE TABLE "public"."tb_user" (
"id" int8 DEFAULT nextval('tb_user_id_seq'::regclass) NOT NULL,
"user_name" varchar(50),
"password" varchar(50),
"real_name" varchar(50),
"status" int2 DEFAULT 1,
"create_time" timestamptz(6),
"update_time" timestamptz(6),
CONSTRAINT "tb_user_pkey" PRIMARY KEY ("id"),
CONSTRAINT "tb_user_name_key" UNIQUE ("user_name")
)
WITH (OIDS=FALSE);

COMMENT ON TABLE "public"."tb_user" IS '用户表';
COMMENT ON COLUMN "public"."tb_user"."id" IS '编号';
COMMENT ON COLUMN "public"."tb_user"."user_name" IS '账号';
COMMENT ON COLUMN "public"."tb_user"."password" IS '密码';
COMMENT ON COLUMN "public"."tb_user"."status" IS '状态, 0:无效, 1:有效';
COMMENT ON COLUMN "public"."tb_user"."real_name" IS '真实姓名';
COMMENT ON COLUMN "public"."tb_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."tb_user"."update_time" IS '修改时间';

-- 角色表
-- id,role_name,create_time,update_time
DROP TABLE IF EXISTS "tb_role";

DROP SEQUENCE IF EXISTS "public"."tb_role_id_seq";
CREATE SEQUENCE "public"."tb_role_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

CREATE TABLE "public"."tb_role" (
"id" int8 DEFAULT nextval('tb_role_id_seq'::regclass) NOT NULL,
"role_name" varchar(50),
"create_time" timestamptz(6),
"update_time" timestamptz(6),
CONSTRAINT "tb_role_pkey" PRIMARY KEY ("id"),
CONSTRAINT "tb_role_name_key" UNIQUE ("role_name")
)
WITH (OIDS=FALSE);

COMMENT ON TABLE "public"."tb_role" IS '角色表';
COMMENT ON COLUMN "public"."tb_role"."id" IS '编号';
COMMENT ON COLUMN "public"."tb_role"."role_name" IS '角色名';
COMMENT ON COLUMN "public"."tb_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."tb_role"."update_time" IS '修改时间';

-- 资源表
-- id,resources_name,create_time
DROP TABLE IF EXISTS "tb_resources";

DROP SEQUENCE IF EXISTS "public"."tb_resources_id_seq";
CREATE SEQUENCE "public"."tb_resources_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

CREATE TABLE "public"."tb_resources" (
"id" int8 DEFAULT nextval('tb_resources_id_seq'::regclass) NOT NULL,
"resources_name" varchar(50),
"type" int2,
"create_time" timestamptz(6),
CONSTRAINT "tb_resources_pkey" PRIMARY KEY ("id"),
CONSTRAINT "tb_resources_name_key" UNIQUE ("resources_name","type")
)
WITH (OIDS=FALSE);

COMMENT ON TABLE "public"."tb_resources" IS '资源表';
COMMENT ON COLUMN "public"."tb_resources"."id" IS '编号';
COMMENT ON COLUMN "public"."tb_resources"."resources_name" IS '资源名';
COMMENT ON COLUMN "public"."tb_resources"."type" IS '类型, 1:菜单 2:操作';
COMMENT ON COLUMN "public"."tb_resources"."create_time" IS '创建时间';

-- 用户角色表
DROP TABLE IF EXISTS "tb_user_role";

DROP SEQUENCE IF EXISTS "public"."tb_user_role_id_seq";
CREATE SEQUENCE "public"."tb_user_role_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

CREATE TABLE "public"."tb_user_role" (
"id" int8 DEFAULT nextval('tb_user_role_id_seq'::regclass) NOT NULL,
"user_id" int8,
"role_id" int8,
"create_time" timestamptz(6),
"update_time" timestamptz(6),
CONSTRAINT "tb_user_role_pkey" PRIMARY KEY ("id"),
CONSTRAINT "tb_user_id_key" UNIQUE ("user_id")
)
WITH (OIDS=FALSE);

COMMENT ON TABLE "public"."tb_user_role" IS '用户角色表';
COMMENT ON COLUMN "public"."tb_user_role"."id" IS '编号';
COMMENT ON COLUMN "public"."tb_user_role"."user_id" IS '用户编号';
COMMENT ON COLUMN "public"."tb_user_role"."role_id" IS '角色编号';
COMMENT ON COLUMN "public"."tb_user_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."tb_user_role"."update_time" IS '修改时间';

-- 角色权限表
-- id,role_id,permission_id,create_time
DROP TABLE IF EXISTS "tb_role_permission";

DROP SEQUENCE IF EXISTS "public"."tb_role_permission_id_seq";
CREATE SEQUENCE "public"."tb_role_permission_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

CREATE TABLE "public"."tb_role_permission" (
"id" int8 DEFAULT nextval('tb_role_permission_id_seq'::regclass) NOT NULL,
"role_id" int8,
"resources_id" int8,
"create_time" timestamptz(6),
"update_time" timestamptz(6),
CONSTRAINT "tb_role_permission_pkey" PRIMARY KEY ("id"),
CONSTRAINT "tb_role_permission_role_resources_id_key" UNIQUE ("role_id","resources_id")
)
WITH (OIDS=FALSE);

COMMENT ON TABLE "public"."tb_role_permission" IS '角色资源表';
COMMENT ON COLUMN "public"."tb_role_permission"."id" IS '编号';
COMMENT ON COLUMN "public"."tb_role_permission"."role_id" IS '角色编号';
COMMENT ON COLUMN "public"."tb_role_permission"."resources_id" IS '资源编号';
COMMENT ON COLUMN "public"."tb_role_permission"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."tb_role_permission"."update_time" IS '修改时间';

-- 颜色表
DROP TABLE IF EXISTS "tb_color";

DROP SEQUENCE IF EXISTS "public"."tb_color_id_seq";

CREATE SEQUENCE "public"."tb_color_id_seq" INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."tb_color" (
	"id" int8 DEFAULT nextval('tb_color_id_seq' :: regclass) NOT NULL,
	"color_name" VARCHAR (50) NOT NULL,
	"create_time" timestamptz (6),
	CONSTRAINT "tb_color_pkey" PRIMARY KEY ("id"),
	CONSTRAINT "tb_color_name_key" UNIQUE ("color_name")
) WITH (OIDS = FALSE);

COMMENT ON TABLE "public"."tb_color" IS '颜色表';
COMMENT ON COLUMN "public"."tb_color"."id" IS '编号';
COMMENT ON COLUMN "public"."tb_color"."color_name" IS '颜色名';
COMMENT ON COLUMN "public"."tb_color"."create_time" IS '创建时间';

-- 尺寸表
DROP TABLE IF EXISTS "tb_size";

DROP SEQUENCE IF EXISTS "public"."tb_size_id_seq";

CREATE SEQUENCE "public"."tb_size_id_seq" INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."tb_size" (
	"id" int8 DEFAULT nextval('tb_size_id_seq' :: regclass) NOT NULL,
	"size_name" VARCHAR (50) NOT NULL,
	"size_code" CHAR NOT NULL,
	"create_time" timestamptz (6),
	CONSTRAINT "tb_size_pkey" PRIMARY KEY ("id"),
	CONSTRAINT "tb_size_name_key" UNIQUE ("size_name")
) WITH (OIDS = FALSE);

COMMENT ON TABLE "public"."tb_size" IS '尺寸表';
COMMENT ON COLUMN "public"."tb_size"."id" IS '编号';
COMMENT ON COLUMN "public"."tb_size"."size_name" IS '尺寸名';
COMMENT ON COLUMN "public"."tb_size"."size_code" IS '尺寸简称';
COMMENT ON COLUMN "public"."tb_size"."create_time" IS '创建时间';