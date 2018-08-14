DROP TABLE IF EXISTS "public"."tb_consume";

DROP SEQUENCE IF EXISTS "public"."tb_consume_id_seq";
CREATE SEQUENCE "public"."tb_consume_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;


CREATE TABLE "public"."tb_consume" (
"id" int8 DEFAULT nextval('tb_consume_id_seq'::regclass) NOT NULL,
"date" date,
"amount" numeric(20,6),
"create_time" timestamptz(6),
"update_time" timestamptz(6),
"remark" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."tb_consume"."id" IS '编号';
COMMENT ON COLUMN "public"."tb_consume"."date" IS '消费日期';
COMMENT ON COLUMN "public"."tb_consume"."amount" IS '消费金额';
COMMENT ON COLUMN "public"."tb_consume"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."tb_consume"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."tb_consume"."remark" IS '备注';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Uniques structure for table tb_consume
-- ----------------------------
ALTER TABLE "public"."tb_consume" ADD UNIQUE ("id");

-- ----------------------------
-- Primary Key structure for table tb_consume
-- ----------------------------
ALTER TABLE "public"."tb_consume" ADD PRIMARY KEY ("id");