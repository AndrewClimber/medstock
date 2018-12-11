--
-- Create Schema Script 
--   Database Version   : 9.2.0.8.0 
--   TOAD Version       : 8.6.0.38 
--   DB Connect String  : BIGFOOT 
--   Schema             : P07 
--   Script Created by  : SYS 
--   Script Created at  : 22.11.2007 13:30:59 
--   Physical Location  :  
--   Notes              :  
--

-- Object Counts: 
--   Functions: 2       Lines of Code: 40 
--   Indexes: 4         Columns: 11         
--   Object Privileges: 11 
--   Packages: 2        Lines of Code: 229 
--   Package Bodies: 2  Lines of Code: 1345 
--   Procedures: 2      Lines of Code: 425 
--   Tables: 8          Columns: 87         Constraints: 3      
--   Triggers: 2 
--   Views: 2           


CREATE TABLE CHECK_BD_DELAY
(
  CD_D    NUMBER(10)                            NOT NULL,
  BD_MIN  NUMBER(5),
  BD_MAX  NUMBER(5),
  BD      NUMBER(5),
  PROC    NUMBER(7,5),
  STATUS  NUMBER(1),
  CD_U    NUMBER(8)                             DEFAULT 0
)
TABLESPACE USERS
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE CHECK_CLIENT
(
  CD_U                NUMBER(5)                 NOT NULL,
  CHECK_DEBITOR_10BD  NUMBER(1)                 DEFAULT 0,
  SUM_MAX_CREDIT_R    NUMBER(15)                DEFAULT 0,
  CHECK_MAX_CREDIT_R  NUMBER(1)                 DEFAULT 0,
  SUM_MAX_CREDIT_D    NUMBER(15)                DEFAULT 0,
  CHECK_MAX_CREDIT_D  NUMBER(1)                 DEFAULT 0,
  SPECIFICATION       NUMBER(1)                 DEFAULT 2,
  CHECK_DEBITOR_15BD  NUMBER(1)                 DEFAULT 1,
  MAX_DISCNT          NUMBER(5,3),
  VIP                 NUMBER(1)                 DEFAULT 0,
  REF_DOG_SPEC        NUMBER(1)                 DEFAULT 1
)
TABLESPACE USERS
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE FORM6
(
  CD_U           NUMBER(6)                      NOT NULL,
  DO_10D_RUR     NUMBER(10)                     DEFAULT 0                     NOT NULL,
  DO_10D_USD     NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT10D_DO1_RUR  NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT10D_DO1_USD  NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT1_DO2_RUR    NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT1_DO2_USD    NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT2_DO3_RUR    NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT2_DO3_USD    NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT3_DO4_RUR    NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT3_DO4_USD    NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT4_DO5_RUR    NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT4_DO5_USD    NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT5_DO6_RUR    NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT5_DO6_USD    NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT6_RUR        NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT6_USD        NUMBER(10)                     DEFAULT 0                     NOT NULL,
  SPIS_RUR       NUMBER(10)                     DEFAULT 0                     NOT NULL,
  SPIS_USD       NUMBER(10)                     DEFAULT 0                     NOT NULL,
  NEPRO_RUR      NUMBER(10)                     DEFAULT 0                     NOT NULL,
  NEPRO_USD      NUMBER(10)                     DEFAULT 0                     NOT NULL,
  MES_RUR        NUMBER(10)                     DEFAULT 0                     NOT NULL,
  MES_USD        NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OBSH_RUR       NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OBSH_USD       NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT6_DO12_RUR   NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT6_DO12_USD   NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT12_RUR       NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OT12_USD       NUMBER(10)                     DEFAULT 0                     NOT NULL,
  OPL_M          NUMBER(10,2)                   DEFAULT 0                     NOT NULL,
  AVG_OPL_3M     NUMBER(10,2)                   DEFAULT 0                     NOT NULL
)
TABLESPACE USERS
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          2080K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE MONTH_DEALS_RES
(
  START_DT         DATE,
  END_DT           DATE,
  TOTAL_CNT        NUMBER(10),
  TOTAL_CASH       NUMBER(10,2),
  PRC_LESS_3_CNT   NUMBER(10,2),
  PRC_LESS_3_CASH  NUMBER(10,2),
  PRC_3_7_CNT      NUMBER(10,2),
  PRC_3_7_CASH     NUMBER(10,2),
  PRC_MORE_7_CNT   NUMBER(10,2),
  PRC_MORE_7_CASH  NUMBER(10,2)
)
TABLESPACE USERS
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          2M
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE GLOBAL TEMPORARY TABLE MONTH_DEALS_TMP
(
  CD_A    NUMBER(10),
  FPRICE  NUMBER(10),
  RENT    NUMBER(10)
)
ON COMMIT PRESERVE ROWS
NOCACHE;


CREATE TABLE PC_DOC
(
  CD_A    NUMBER(8)                             NOT NULL,
  NUM     NUMBER(4)                             NOT NULL,
  BPAK    DATE                                  DEFAULT sysdate,
  EPAK    DATE,
  ERROR   NUMBER(1)                             DEFAULT 0,
  STATUS  NUMBER(1)                             DEFAULT 0,
  CCD_A   NUMBER(8),
  CNUM    NUMBER(4),
  CS      NUMBER(1)                             DEFAULT 0
)
TABLESPACE USERS
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE PC_LST
(
  CD_A        NUMBER(8),
  NUM         NUMBER(4),
  CD_M        NUMBER(8),
  AMN_DOC     NUMBER(8),
  AMN_PAK     NUMBER(8)                         DEFAULT 0,
  AMN_DEL     NUMBER(8)                         DEFAULT 0,
  AMN_SCAN    NUMBER(8)                         DEFAULT 0,
  AMN_MANUAL  NUMBER(8)                         DEFAULT 0,
  CS          NUMBER(1)                         DEFAULT 0
)
TABLESPACE USERS
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE PC_PLACE
(
  CD_A  NUMBER(8)                               NOT NULL,
  NUM   NUMBER(4)                               NOT NULL,
  CD_M  NUMBER(8)                               NOT NULL,
  M1    NUMBER(6)                               DEFAULT 1,
  M2    NUMBER(6),
  AMN   NUMBER(10),
  PAK   NUMBER(6)
)
TABLESPACE USERS
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE INDEX PC_DOC_COMBINE ON PC_DOC
(CCD_A, CNUM)
LOGGING
NOPARALLEL;


CREATE UNIQUE INDEX PC_DOC_PK ON PC_DOC
(CD_A, NUM)
LOGGING
NOPARALLEL;


CREATE UNIQUE INDEX PC_LST_D ON PC_LST
(CD_A, NUM, CD_M)
LOGGING
NOPARALLEL;


CREATE UNIQUE INDEX PC_PLACE_UNI ON PC_PLACE
(CD_A, NUM, CD_M, M1)
LOGGING
NOPARALLEL;


CREATE OR REPLACE PACKAGE     CP IS
-- Всякие проверки различных параметров 

-- MODIFICATION HISTORY
-- Person      Date    Comments
-- John      20.11.01  Create

-- Проверка документа на правильность оформления наценок на отсрочку платежа
-- Возвращает 0 если всё оформлено нормально
FUNCTION CHECK_BD_IN_DOCUMENT (CDC$ abc.doc.cd_c%TYPE) RETURN  number;
PRAGMA RESTRICT_REFERENCES(CHECK_BD_IN_DOCUMENT,RNPS,WNPS,WNDS);

--Проверка на дублирование документов
PROCEDURE CHECK_DOUBLE_DOCUMENT(CD_C$ abc.doc.cd_c%TYPE);

--Проверка клиента на дебиторку свыше 10БД (по документу) с отсрочкой на 45 и 30 БД
--Распоряжения №№ 827, 828 от 29.12.2001
FUNCTION CHECK_DEBITOR_10BD(CDC$ abc.doc.cd_c%TYPE) RETURN  number;
PRAGMA RESTRICT_REFERENCES(CHECK_DEBITOR_10BD,RNPS,WNPS,WNDS);

--Проверка заданной категории у препарата на заданный день (дата задается вручную)
--Эта функция перегружаемая
Function CHECK_CTG_ON_DAY(CDM$ abc.med.cd_m%TYPE,
                          CDX$ abc.xmed.cd_x%TYPE,
                          CDCTG$ abc.xmed.cd_ctg%TYPE,
                          DATE$ date) return number;
PRAGMA RESTRICT_REFERENCES(CHECK_CTG_ON_DAY,WNPS,WNDS);

--Проверка заданной категории у препарата на определенный день (дата берется по документу)
--Эта функция перегружаемая
Function CHECK_CTG_ON_DAY(CDM$ abc.med.cd_m%TYPE,
                          CDX$ abc.xmed.cd_x%TYPE,
                          CDCTG$ abc.xmed.cd_ctg%TYPE,
                          CDC$ abc.doc.cd_c%TYPE) return number;
PRAGMA RESTRICT_REFERENCES(CHECK_CTG_ON_DAY,WNPS,WNDS);

--Проверка совместимости категорий в документах, используется вместо ABC.CHK_CTG
--Смотрит категории препаратов на дату "трансформации в отгружено"/создания документа
FUNCTION CHECK_CTG_IN_DOCUMENT(CDC$ abc.doc.cd_c%TYPE) RETURN number;
PRAGMA RESTRICT_REFERENCES(CHECK_CTG_IN_DOCUMENT,WNPS,WNDS);

--Проверка клиента на превышение максимального товарного кредита
--Распоряжения №№ 818 от 28.12.01, 121 от 11.02.02
FUNCTION CHECK_CREDIT(CDC$ abc.doc.cd_c%TYPE) RETURN  number;
PRAGMA RESTRICT_REFERENCES(CHECK_CREDIT,RNPS,WNPS,WNDS);

END; -- Package spec
/

SHOW ERRORS;


CREATE OR REPLACE PACKAGE     DOC_UTL IS
-- Утилиты для документов

-- Кол-во банковских дней по короткому примечанию в документе
FUNCTION GET_BD_REFNUM(CD_C# abc.doc.cd_c%TYPE)  RETURN  number;
Pragma Restrict_References(GET_BD_REFNUM,WNDS,WNPS,RNPS);

-- Кол-во календарных дней по короткому примечанию в документе
FUNCTION GET_KD_REFNUM(CD_C# abc.doc.cd_c%TYPE)  RETURN  number;
Pragma Restrict_References(GET_KD_REFNUM,WNDS,WNPS,RNPS);

--Количество позиций в документе
Function COUNT_LST(CD_C# abc.lst.cd_c%TYPE) return number;
PRAGMA RESTRICT_REFERENCES(COUNT_LST,WNPS,RNPS,WNDS);

--Емкость документа
Function CAPACITY_LST(CD_C# abc.lst.cd_c%TYPE) return number;
PRAGMA RESTRICT_REFERENCES(CAPACITY_LST,WNPS,RNPS,WNDS);

--Объем документа
Function VOLUME_LST(CD_C# abc.lst.cd_c%TYPE) return number;
PRAGMA RESTRICT_REFERENCES(VOLUME_LST,WNPS,RNPS,WNDS);

--Масса документа
Function WEIGHT_LST(CD_C# abc.lst.cd_c%TYPE) return number;
PRAGMA RESTRICT_REFERENCES(WEIGHT_LST,WNPS,RNPS,WNDS);

--Сумма наценки в документе
Function GET_SUM_TAX   (CDC# number, CDX# number)  RETURN  number;
PRAGMA RESTRICT_REFERENCES(GET_SUM_TAX,WNPS,RNPS,WNDS);

--Процент наценки в документе
Function GET_PROC_TAX   (CDC# number, CDX# number)  RETURN  number;
PRAGMA RESTRICT_REFERENCES(GET_PROC_TAX,WNPS,RNPS,WNDS);

--Общий процент наценки в документе
Function GET_ALL_PROC_TAX   (CDC# number)  RETURN number;
PRAGMA RESTRICT_REFERENCES(GET_PROC_TAX,WNPS,RNPS,WNDS);

/*Возвращает последнюю дату оплаты по расходному документу*/
FUNCTION GETMAXPAYDATE(CDC ABC.DOC.CD_C%TYPE) RETURN ABC.DOC.DATEF%TYPE;
PRAGMA RESTRICT_REFERENCES(GETMAXPAYDATE,WNDS,WNPS,RNPS);

/*Реальный RRATE документа*/
FUNCTION RRATE$(eCDC  ABC.DOC.CD_C%TYPE,
                eDATE date:=null)
RETURN number;
PRAGMA RESTRICT_REFERENCES(RRATE$,WNDS,WNPS,RNPS);
FUNCTION RRATE$(eROWID varchar2,
                eDATE date:=null)
RETURN number;
PRAGMA RESTRICT_REFERENCES(RRATE$,WNDS,WNPS,RNPS);


/*Реальный FRATE документа по курсу ЦБ*/
FUNCTION FRATE_CB$(eCDC  ABC.DOC.CD_C%TYPE,
               eDATE date:=null)
RETURN number;
PRAGMA RESTRICT_REFERENCES(FRATE_CB$,WNDS,WNPS,RNPS);

/*Реальный FRATE документа*/
FUNCTION FRATE$(eCDC  ABC.DOC.CD_C%TYPE,
               eDATE date:=null)
RETURN number;
PRAGMA RESTRICT_REFERENCES(FRATE$,WNDS,WNPS,RNPS);
FUNCTION FRATE$(eROWID varchar2,
                eDATE date:=null)
RETURN number;
PRAGMA RESTRICT_REFERENCES(FRATE$,WNDS,WNPS,RNPS);

/*Ставка НДС % препарата в документе*/
FUNCTION NDS_LST_PROC(eCDC abc.doc.cd_c%TYPE,
                      eCDM abc.lst.cd_m%TYPE)
RETURN number;
PRAGMA RESTRICT_REFERENCES(NDS_LST_PROC,WNDS,WNPS);

/*Сумма (полного кол-ва по позиции) НДС препарата в документе*/
FUNCTION NDS_LST_NDSAMN(eCDC abc.doc.cd_c%TYPE,
                     eCDM abc.lst.cd_m%TYPE)
RETURN number;
PRAGMA RESTRICT_REFERENCES(NDS_LST_NDSAMN,WNDS,WNPS);

/*Сумма (одной штуки) НДС препарата в документе*/
FUNCTION NDS_LST_NDS(eCDC abc.doc.cd_c%TYPE,
                        eCDM abc.lst.cd_m%TYPE)
RETURN number;
PRAGMA RESTRICT_REFERENCES(NDS_LST_NDS,WNDS,WNPS);

/*Цена препарата в документе с учетом НДС*/
FUNCTION NDS_LST_PRICENDS(eCDC abc.doc.cd_c%TYPE,
                          eCDM abc.lst.cd_m%TYPE)
RETURN number;
PRAGMA RESTRICT_REFERENCES(NDS_LST_PRICENDS,WNDS,WNPS);

/*Цена препарата в документе без учета НДС*/
FUNCTION NDS_LST_PRICE(eCDC abc.doc.cd_c%TYPE,
                       eCDM abc.lst.cd_m%TYPE)
RETURN number;
PRAGMA RESTRICT_REFERENCES(NDS_LST_PRICE,WNDS,WNPS);

/*Стоимость (полного кол-ва по позиции) препарата в документе без учета НДС*/
FUNCTION NDS_LST_SUM(eCDC abc.doc.cd_c%TYPE,
                     eCDM abc.lst.cd_m%TYPE)
RETURN number;
PRAGMA RESTRICT_REFERENCES(NDS_LST_SUM,WNDS,WNPS);

/*Стоимость (полного кол-ва по позиции) препарата в документе с учетом НДС*/
FUNCTION NDS_LST_SUMNDS(eCDC abc.doc.cd_c%TYPE,
                        eCDM abc.lst.cd_m%TYPE)
RETURN number;
PRAGMA RESTRICT_REFERENCES(NDS_LST_SUMNDS,WNDS,WNPS);

/*Сумма НДС по LST*/
FUNCTION DOC_LST_SUMNDS(eCDC abc.doc.cd_c%TYPE, NDS NUMBER)
RETURN number;
PRAGMA RESTRICT_REFERENCES(DOC_LST_SUMNDS,WNDS,WNPS);

/*Проверяет наличие указанной метки в документе*/
FUNCTION CHK_DSIGN(eCDC abc.doc.cd_c%TYPE,
                   eN   number)
RETURN number;

/*добавляет к указанной дате необходимое кол-во банковских дней*/
FUNCTION ADD_BANK_DAY(eD1 date, eBD number)
RETURN date;

/*добавляет к указанной дате необходимое кол-во календарных дней дней*/
FUNCTION ADD_CALENDAR_DAY(eD1 date, eKD number)
RETURN date;

/*Получить дату предполагаемой оплаты по короткому примечанию*/
FUNCTION GET_DPO(eCDC abc.doc.cd_c%TYPE)
RETURN date;

FUNCTION GET_NOTPAY_SUM(eCDC abc.doc.cd_c%TYPE,
                        eD1 date)
RETURN number;

/* Получить суммарную себестоимость препарата по документу*/
FUNCTION GET_PREP_SEB(eCDC abc.doc.cd_c%TYPE,
                      eCDM abc.med.cd_m%TYPE)
RETURN number;

/* Получить сумму сделки по документу*/
FUNCTION GET_R(eCDC abc.doc.cd_c%TYPE,
               eCDM abc.med.cd_m%TYPE)
RETURN number;

/* Получить расхождение рентабельности */
FUNCTION GET_DIFF_RENT(C1 NUMBER)
RETURN number;

/* Получить значение  рентабельности */
FUNCTION GET_DEAL_RENT(C1 NUMBER)
RETURN number;

/* Кол-во мест в документе (по контролю на упаковке, иначе = 1 */
FUNCTION COUNT_DOC_PLACES(eCD_A abc.doc.cd_a%TYPE, eNUM abc.doc.num%TYPE)
RETURN number;

/*Процент всех скидок в документе*/
FUNCTION GET_SUM_PROC_DISCOUNT(eCDC abc.ltax.cd_c%TYPE)
RETURN number;

FUNCTION GET_LST_SERT(SERT# NUMBER, eCDM abc.med.cd_m%TYPE, delimeter varchar2 default ';')
RETURN varchar2;
PRAGMA RESTRICT_REFERENCES(GET_LST_SERT,WNDS,WNPS);

/*Флаг срочности документа*/
FUNCTION GET_CITO_STATUS(eCD_A abc.doc.cd_a%TYPE, eNUM abc.doc.num%TYPE)
RETURN number;

/*возвращает 1 если есть препарат в документе, 0 если нету*/
FUNCTION GET_PRESENCE_MED(CDA abc.doc.cd_a%TYPE, NUM abc.doc.num%TYPE, CDM abc.med.cd_m%TYPE)
RETURN number;

/*1 если есть документ с СD_С в ABC.DOC, 0 если нету */
FUNCTION check_doc_existance(iCDC abc.doc.cd_c%TYPE)
RETURN number;


END; -- Package Specification DOC_UTL
/

SHOW ERRORS;


CREATE OR REPLACE PACKAGE BODY     CP IS
-- MODIFICATION HISTORY
-- Person      Date    Comments
-- John      20.11.01  Create

--Курсор для функций CHECK_CTG_ON_DAY
Cursor XL(cCDM abc.xlog.cd_m%TYPE,
          cCDX abc.xlog.cd_x%TYPE,
          cCD_CTG abc.xlog.cd_ctg%TYPE,
          cDATE date) is
             --Смотрим в ABC.XLOG
             select cd_m, cd_x, cd_ctg, stamp, act
                from abc.xlog
                where cd_m=cCDM and cd_x=cCDX and stamp<=cDATE and cd_ctg=cCD_CTG
              UNION ALL
              --Если дата>=системной, тогда смотрим текущее состояние в ABC.XMED
              --при этом игнорируются все данные из других запросов!
              select cd_m, cd_x, cd_ctg, sysdate, 'I'
                from abc.xmed
                where cd_m=cCDM and cd_x=cCDX and cd_ctg=cCD_CTG and sysdate<=cDATE
              UNION ALL
              --Если INSERT данной категории произведен после нужной даты, значит
              --до этой даты препарат не относился к этой категории
              select cd_m, cd_x, cd_ctg, to_date('01.01.1900','dd.mm.yyyy'), 'D'
                from abc.xlog
                where cd_m=cCDM and cd_x=cCDX and cd_ctg=cCD_CTG and stamp>cDATE and act='I'
              UNION ALL
              --Если дата<системной и выборка из ABC.XLOG пустая, тогда смотрим текущее состояние в ABC.XMED
              select cd_m, cd_x, cd_ctg, to_date('01.01.1800','dd.mm.yyyy'), 'I'
                from abc.xmed
                where cd_m=cCDM and cd_x=cCDX and cd_ctg=cCD_CTG
              UNION ALL
              --Если все предыдущие выборки пустые, значит препарат не относится к данной категории
              select cCDM, cCDX, cCD_CTG, to_date('01.01.1700','dd.mm.yyyy'), 'D'
                from dual
--                where sysdate>cDATE
            order by 4 desc;

FUNCTION CHECK_BD_IN_DOCUMENT (CDC$ abc.doc.cd_c%TYPE) RETURN  number IS
-- Проверка документа на правильность оформления наценок на отсрочку платежа
-- Возвращает 0 если всё оформлено нормально

RES# number(2):=0;
DeltaBD# number(3):=1;
DeltaKD# number(3):=1;
RSFx# varchar2(32):='RSF164'; --Если в примечании (ABC.PXDOC.PRIM)содержится данная строка,
                              --тогда не проверяем соответсвие избыток или недостаток наценок
                              --на отсрочку, а соответствие даты оплаты проверяется по календарным дням
                              --(специально для препаратов, отпускаемых с отсрочкой но без наценки)
iKDRefnum number(5):=NVL(doc_utl.get_kd_refnum(CDC$),0);
iBDRefnum number(5):=NVL(doc_utl.get_bd_refnum(CDC$),0);
iBD number(5):=0;
iKD number(5):=0;
iDayOfWeek varchar2(16):='';
iCheckKD number(1):=0;
iRealKD  number(5):=0;
BEGIN
   --Проверяем соответствие БД по датам и в коротком примечании
  select gpof.get_bd(d.date0,p.dated)+DeltaBD#,
         p.dated-d.date0+DeltaKD#,
         upper(to_char(p.dated,'day','NLS_DATE_LANGUAGE=RUSSIAN')),
         decode(instr(NVL(p.prim,' '),RSFx#),0,
                decode(d.cd_l,13,
                       1,
                       decode(d.cd_l,9,1,0)),
                1)
    into iBD,
         iKD,
         iDayOfWeek,
         iCheckKD
    from abc.doc d, abc.pxdoc p
    where
     d.cd_c=CDC$
     and d.cd_c=p.cd_c;
    
  select decode(iDayOfWeek,'ПОНЕДЕЛЬНИК',
                decode(iKd-1,iKDRefnum,
                       iKd-1,
                       decode(iKd-2,iKDRefnum,iKd-2,iKd)),
                iKd)
   into iRealKD
   from dual;

   select count(*) into RES#
   from abc.doc d, abc.pxdoc p
   where
     d.cd_c=CDC$
     and d.cd_c=p.cd_c
     and (decode(iCheckKD,1,iKDRefnum,iBDRefnum)<>decode(iCheckKD,1,iRealKD,iBd)
           and iBd>3
          OR d.date0>p.dated);

/*   select count(*) into RES#
   from abc.doc d, abc.pxdoc p
   where
     d.cd_c=CDC$
     and d.cd_c=p.cd_c
     and ((
         decode(instr(p.prim,RSFx#),0,
                decode(d.cd_u,3197,NVL(doc_utl.get_kd_refnum(d.cd_c),0),
                       NVL(doc_utl.get_bd_refnum(d.cd_c),0)),
                NVL(doc_utl.get_kd_refnum(d.cd_c),0))<>
         decode(instr(p.prim,RSFx#),0,
                decode(d.cd_u,3197,
                       decode(upper(to_char(p.dated,'day','NLS_DATE_LANGUAGE=RUSSIAN')),'ПОНЕДЕЛЬНИК',
                       decode(p.dated-d.date0-1,doc_utl.get_kd_refnum(d.cd_c),p.dated-d.date0-1,
                              decode(p.dated-d.date0-2,doc_utl.get_kd_refnum(d.cd_c),p.dated-d.date0-2,p.dated-d.date0)),p.dated-d.date0),
                       gpof.get_bd(d.date0,p.dated)+DeltaBD#),
                gpof.get_bd(d.date0,p.dated)+DeltaBD#,
                decode(upper(to_char(p.dated,'day','NLS_DATE_LANGUAGE=RUSSIAN')),'ПОНЕДЕЛЬНИК',
                       decode(p.dated-d.date0-1,doc_utl.get_kd_refnum(d.cd_c),p.dated-d.date0-1,
                              decode(p.dated-d.date0-2,doc_utl.get_kd_refnum(d.cd_c),p.dated-d.date0-2,p.dated-d.date0)),p.dated-d.date0))
     and gpof.get_bd(d.date0,p.dated)+DeltaBD#>3)
     OR
        d.date0>p.dated);*/


   IF RES#>0 THEN
     Return(2);
   END IF;

   --Проверяем дату оплаты. Может выпадать на выходной
   select status into RES#
   from abc.calendar, abc.pxdoc p
   where
   p.cd_c=CDC$
   and dat=trunc(p.dated);
   IF RES#=0 THEN
     Return(3);
   END IF;

   --Если документ более чем на 3 БД, проверяем имеет ли он хоть одну
   --наценку на отсрочку. Если документ менее 3 БД, проверяем избыток наценок
   SELECT count(*) INTO RES#
   FROM abc.doc d, abc.pxdoc p
   WHERE
     d.cd_c=CDC$
     AND p.cd_c=d.cd_c
     AND ((gpof.get_bd(d.date0,p.dated)+DeltaBD#>3
           AND (iCheckKD=1)
           AND 0=(SELECT COUNT(*)
                  FROM abc.ltax l
                  WHERE l.cd_c=d.cd_c AND l.cd_x in (SELECT DISTINCT cd_d
                                                     FROM V$CHECK_BD_DELAY)))
          OR (iBD=20
               AND d.cd_u=142 --Аптека 266 (комиссия, на 20 б.д. без наценок
               AND 0=(SELECT COUNT(*)
                      FROM abc.ltax l
                      WHERE l.cd_c=d.cd_c AND l.cd_x in (SELECT DISTINCT cd_d
                                                         FROM V$CHECK_BD_DELAY)))
          OR (iBD>3
               AND 1=(SELECT COUNT(*)
                      FROM abc.ltax l
                      WHERE l.cd_c=d.cd_c AND l.cd_x in (SELECT DISTINCT cd_d
                                                         FROM V$CHECK_BD_DELAY)))
          OR
          (iBD<=3
           AND 0=(SELECT COUNT(*)
                  FROM abc.ltax l
                  WHERE l.cd_c=d.cd_c AND l.cd_x in (SELECT DISTINCT cd_d
                                                     FROM V$CHECK_BD_DELAY))));
   --Если нет ни одной наценки, или избыток наценок
   IF RES#=0 THEN
     RETURN(-1);
   END IF;

   --Проверяем проценты
   SELECT count(*) INTO RES#
   FROM abc.doc d, abc.pxdoc p, abc.ltax l,
        v$check_bd_delay b
   WHERE
     d.cd_c=CDC$
     AND l.cd_c=d.cd_c
     AND p.cd_c=d.cd_c
     AND b.cd_d=l.cd_x
     AND
        (NOT EXISTS (SELECT 1
                      FROM v$check_bd_delay
                      WHERE
                       cd_d=b.cd_d
                       AND iBD BETWEEN bd_min AND bd_max)
          OR
          EXISTS (SELECT 1
                      FROM v$check_bd_delay
                      WHERE
                       cd_d=b.cd_d
                       AND cd_u=d.cd_u
                       AND iBD BETWEEN bd_min AND bd_max
                       AND l.proc<>proc)
          OR
          EXISTS (SELECT 1
                      FROM v$check_bd_delay c
                      WHERE
                       cd_d=b.cd_d
                       AND cd_u=0
                       AND iBD BETWEEN bd_min AND bd_max
                       AND l.proc<>proc
                       AND not exists (select 1 from v$check_bd_delay where cd_u=d.cd_u
                                                                            and cd_d=c.cd_d
                                                                            and bd=c.bd)));
   IF RES#>0 THEN
     RETURN(1);
   ELSE
     RETURN(0);
   END IF;
   EXCEPTION
     --Если данные (почему-то?) не найдены, тогда ошибки типа нет
     WHEN NO_DATA_FOUND THEN RETURN(0);
END CHECK_BD_IN_DOCUMENT;

PROCEDURE CHECK_DOUBLE_DOCUMENT(CD_C$ abc.doc.cd_c%TYPE) IS

DAY_FOR_CHECK number(2):=4; --Количество дней, период за который проверяются документы
MIN_PROCENT number(10):=80; --Пороговое значение процентов, выше которых документ считается дублированным

Cursor O is
    select distinct
        p.credate,
        d.cd_a
    from abc.doc d,
         abc.pxdoc p,
         abc.doc du
    where
    du.cd_c=CD_C$
    and d.cd_u=du.cd_u
    and d.cd_c<>CD_C$
    and d.tp in (427,432,52,78,81,83,433)
    and p.cd_c=d.cd_c
    and p.credate>trunc(sysdate-DAY_FOR_CHECK)
    order by p.credate desc;

PROCENT number(10):=0;
DOUBLEDOCUMENT abc.doc.cd_a%TYPE:=-1;
RES# number(2):=0;

BEGIN --PROCEDURE CHECK_DOUBLE_DOCUMENT
/*  SELECT STATUS INTO RES# FROM CHECK_PARAMS WHERE PN='CHECK_DOUBLE_DOCUMENT';
  IF RES#=0 THEN
    RETURN;
  END IF;*/

  FOR ODOC in O
  Loop
    DOUBLEDOCUMENT:=ODOC.CD_A;
    select r.c/(decode(sign(o.c-n.c),1,o.c,n.c))*100 into PROCENT
        from
        (select count(l.cd_m) c from abc.doc d, abc.lst l
                                where d.cd_a=ODOC.CD_A and l.cd_c=d.cd_c) o,
        (select count(l.cd_m) c from abc.lst l
                                where l.cd_c=CD_C$) n,
        (select count(*) c from
          (select l.cd_m from abc.doc d, abc.lst l
                         where d.cd_a=ODOC.CD_A  and l.cd_c=d.cd_c
           intersect
           select l.cd_m from abc.lst l
                         where l.cd_c=CD_C$)) r;
    Exit When PROCENT>=MIN_PROCENT;
  End Loop;
  IF (PROCENT>=MIN_PROCENT) AND (DOUBLEDOCUMENT<>-1) THEN
    update abc.pxdoc set prim=prim||' Дублирование с '||DOUBLEDOCUMENT||' на '||round(PROCENT)||'%'
                     where cd_c=CD_C$;
/*    insert into check_double_doc_log(CD_A,CD_AD,DPROCENT)
                              select CD_A,DOUBLEDOCUMENT,PROCENT from abc.doc where cd_c=CD_C$;*/
  END IF;
END; -- PROCEDURE CHECK_DOUBLE_DOCUMENT

FUNCTION CHECK_DEBITOR_10BD(CDC$ abc.doc.cd_c%TYPE) RETURN  number IS

  RES# number(1):=0;
  DeltaBD number(3):=1;
BEGIN --FUNCTION CHECK_DEBITOR_10BD
/*  SELECT STATUS INTO RES# FROM CHECK_PARAMS WHERE PN='CHECK_DEBITOR_10BD';
  IF RES#=0 THEN
    RETURN(0);
  END IF;*/

/*  SELECT USR_UTL.CHECK_DEBITOR(NVL(c.cd_u,-1),11) INTO RES#
  FROM abc.doc d, CHECK_CLIENT c, abc.pxdoc px
  WHERE
    d.cd_c=CDC$
    and px.cd_c=d.cd_c
    and ( --RSF 828
          exists (select 1
                  from abc.ltax l
                  where
                    l.cd_c=d.cd_c
                    and l.cd_x=91 --К_ЛПУ
                    and ((proc=0.045) or (gpof.get_bd(d.date0,px.dated)+DeltaBD=30)))
         or --RSF 827
          exists (select 1
                  from abc.ltax l
                  where
                    l.cd_c=d.cd_c
                    and l.cd_x=1 --Н Отсрочка
                    and ((proc=0.07) and (gpof.get_bd(d.date0,px.dated)+DeltaBD=45))))
    and d.cd_u=c.cd_u(+)
    and c.check_debitor_10bd(+)=1;*/

  RETURN(RES#);

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN(0);
END; --FUNCTION CHECK_DEBITOR_10BD

--Работает по дате
FUNCTION CHECK_CTG_ON_DAY(CDM$ abc.med.cd_m%TYPE,
                          CDX$ abc.xmed.cd_x%TYPE,
                          CDCTG$ abc.xmed.cd_ctg%TYPE,
                          DATE$ date) return number is
  RES# number(2):=0;
  XLR XL%RowType;
Begin --FUNCTION CHECK_CTG_ON_DAY
  Open XL(CDM$,CDX$,CDCTG$,DATE$);
  Fetch XL into XLR;
  IF XL%Found THEN
    IF XLR.ACT='I' THEN
      RES#:=1;
    END IF;
  END IF;
  Close XL;
  Return(RES#);
End; --FUNCTION CHECK_CTG_ON_DAY

--Работает по документу
FUNCTION CHECK_CTG_ON_DAY(CDM$ abc.med.cd_m%TYPE,
                          CDX$ abc.xmed.cd_x%TYPE,
                          CDCTG$ abc.xmed.cd_ctg%TYPE,
                          CDC$ abc.doc.cd_c%TYPE) return number is
  RES# number(2):=0;
  DATE# date;
  XLR XL%RowType;
Begin --FUNCTION CHECK_CTG_ON_DAY
  select NVL(d.shipped,p.credate) INTO DATE#
  from abc.doc d, abc.pxdoc p
  where
  d.cd_c=CDC$
  and p.cd_c=d.cd_c;

  Open XL(CDM$,CDX$,CDCTG$,DATE#);
  Fetch XL into XLR;
  IF XL%Found THEN
    IF XLR.ACT='I' THEN
      RES#:=1;
    END IF;
  END IF;
  Close XL;
  Return(RES#);
End; --FUNCTION CHECK_CTG_ON_DAY

FUNCTION CHECK_CTG_IN_DOCUMENT  (CDC$ abc.doc.cd_c%TYPE) RETURN number IS

CountCTG# number(4):=0;

Function CHK_CMP(CDC abc.doc.cd_c%TYPE, CDX$ number, CDCTG$ number) return number is
  RES# number(4);
Begin
-- проверка на Гремучую смесь
  select c into RES#
  from (select DOC_UTL.COUNT_LST(CDC)-count(CP.check_ctg_on_day(l.cd_m,CDX$,CDCTG$,l.cd_c)) c
        from abc.lst l
        where
        l.cd_c=CDC
        Group by CP.check_ctg_on_day(l.cd_m,CDX$,CDCTG$,l.cd_c))
  where rownum=1;
  IF RES#<>0 THEN
    Return(1);
  ELSE
    Return(0);
  END IF;
End;

BEGIN --FUNCTION CHECK_CTG_IN_DOCUMENT
--   return(1);
   --Проверка НДС
   select count(*) INTO CountCTG#
   from abc.lst l, abc.pxdoc p
   where
    p.cd_c=CDC$
    and p.cd_c=l.cd_c
--  and NVL(l.tp,decode(SIGN(p.ctg_cmp),1,CP.check_ctg_on_day(l.cd_m,3,decode(p.ctg_cmp,10,6,20,5),l.cd_c)*p.ctg_cmp
--                                       ,CP.check_ctg_on_day(l.cd_m,3,6,l.cd_c)+CP.check_ctg_on_day(l.cd_m,3,5,l.cd_c)))=decode(SIGN(p.ctg_cmp),1,p.ctg_cmp,0);

    and  NVL(l.tp,decode(SIGN(p.ctg_cmp),1,CP.check_ctg_on_day(l.cd_m,3,decode(p.ctg_cmp,10,6,20,5,18,10),l.cd_c)*p.ctg_cmp
   ,CP.check_ctg_on_day(l.cd_m,3,6,l.cd_c)+CP.check_ctg_on_day(l.cd_m,3,5,l.cd_c)))=abc.chk_nds(p.cd_c);
--   and abc.get_med_nds(l.cd_m)=fash.chk_nds(p.cd_c);
   IF CountCTG#<>DOC_UTL.COUNT_LST(CDC$) THEN
     Return(0);
   END IF;

   --Проверка Психотропных и Сильнодействующих
   IF CHK_CMP(CDC$,3, 1)+CHK_CMP(CDC$,3, 13)=0 THEN
     RETURN(1); --Аналогично ABC.CHK_CTG
   ELSE
     RETURN(0);
   END IF;
END; --FUNCTION CHECK_CTG_IN_DOCUMENT

FUNCTION CHECK_CREDIT(CDC$ abc.doc.cd_c%TYPE) RETURN  number is
  Check_Rub# number(1):=0;
  Check_Dol# number(1):=0;
  Credit_Rub# NUMBER;
  Credit_Dol# NUMBER;
  RES# number(2):=0;
BEGIN --FUNCTION CHECK_CREDIT
  BEGIN
/*  Select check_max_credit_r, check_max_credit_d, sum_max_credit_r, sum_max_credit_d
    into Check_Rub#, Check_Dol#, Credit_Rub#, Credit_Dol#
    from check_client
  where cd_u in (select cd_u from abc.doc where cd_c=CDC$);*/
  null;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      Check_Rub#:=0;
      Check_Dol#:=0;
  END;

  IF Check_Rub#<>1 AND Check_Dol#<>1 THEN
    RETURN(0);
  END IF;

  select count(*) into RES# from
  (select count(1)
   from abc.doc d, abc.usum u
   where
   d.cd_u in (select cd_u from abc.doc where cd_c=CDC$)
   and d.tp in (78)
   and yfprice/(fprice+0.0000001)<0.999
   and fprice>0
   and u.cd_u=d.cd_u
   and u.cd_v=1
   Having
   decode(Check_Rub#,1,-u.saldo+sum(d.fprice*(1-yfprice/fprice)),0)>decode(Check_Rub#,1,Credit_Rub#,0)
   or decode(Check_Dol#,1,-u.saldo/abc.rat(1,sysdate,2)+sum(d.fprice/d.frate*(1-yfprice/fprice)),0)>decode(Check_Dol#,1,Credit_Dol#,0)
   Group by u.saldo);

   IF RES#<>0 THEN
     RETURN(1);
   ELSE
     RETURN(0);
   END IF;
END; --FUNCTION CHECK_CREDIT

END CP;
/

SHOW ERRORS;


CREATE OR REPLACE PACKAGE BODY     DOC_UTL IS
-- Утилиты для документов

-- MODIFICATION HISTORY
-- Person      Date    Comments
-- John     24.04.2001 Создание

-- Кол-во банковских дней по короткому примечанию в документе
FUNCTION GET_BD_REFNUM(CD_C# abc.doc.cd_c%TYPE) RETURN number is
  REFNUM# abc.doc.refnum%TYPE;
  BD# number(3):=0;
  BDS# varchar2(16):='';

BEGIN --FUNCTION GET_BD_REFNUM
  select upper(REFNUM) into REFNUM# from abc.doc where cd_c=CD_C#;
    IF REFNUM# like '%БД%' THEN

    FOR i in 1..instr(REFNUM#,'БД')-1
    Loop
      IF translate(substr(REFNUM#,instr(REFNUM#,'БД')-i,1),'0123456789','~~~~~~~~~~')='~' THEN
        BDS#:=substr(REFNUM#,instr(REFNUM#,'БД')-i,1)||BDS#;
        IF length(BDS#)>3 THEN EXIT; END IF;
        BD#:=to_number(BDS#);
      ELSE
        BDS#:='';
        IF BD#>0 THEN EXIT; END IF;
      END IF;
    End Loop;

  END IF;

  return(BD#);

  Exception
    When NO_DATA_FOUND THEN
      return(null);
END; --FUNCTION GET_BD_REFNUM

-- Кол-во банковских дней по короткому примечанию в документе
FUNCTION GET_KD_REFNUM(CD_C# abc.doc.cd_c%TYPE) RETURN number is
  REFNUM# abc.doc.refnum%TYPE;
  BD# number(3):=0;
  BDS# varchar2(16):='';

BEGIN --FUNCTION GET_KD_REFNUM
  select upper(REFNUM) into REFNUM# from abc.doc where cd_c=CD_C#;
    IF REFNUM# like '%КД%' THEN

    FOR i in 1..instr(REFNUM#,'КД')-1
    Loop
      IF translate(substr(REFNUM#,instr(REFNUM#,'КД')-i,1),'0123456789','~~~~~~~~~~')='~' THEN
        BDS#:=substr(REFNUM#,instr(REFNUM#,'КД')-i,1)||BDS#;
        IF length(BDS#)>3 THEN EXIT; END IF;
        BD#:=to_number(BDS#);
      ELSE
        BDS#:='';
        IF BD#>0 THEN EXIT; END IF;
      END IF;
    End Loop;

  END IF;

  return(BD#);

  Exception
    When NO_DATA_FOUND THEN
      return(null);
END; --FUNCTION GET_KD_REFNUM

--Количество позиций в документе
Function COUNT_LST(CD_C# abc.lst.cd_c%TYPE) return number is
RES number(10);
BEGIN
  Select count(*) into RES from abc.lst where cd_c=CD_C#;
  Return(RES);
  Exception
    When Others Then
      Return(0);
END;--Function COUNT_LST

--Емкость документа
Function CAPACITY_LST(CD_C# abc.lst.cd_c%TYPE) return number is
RES number(10);
BEGIN
  Select sum(amn1) into RES from abc.lst where cd_c=CD_C#;
  Return(NVL(RES,0));
  Exception
    When Others Then
      Return(0);
END;--Function CAPACITY_LST

Function VOLUME_LST(CD_C# abc.lst.cd_c%TYPE) return number is
iRES number;
BEGIN --VOLUME_LST
  select
    sum(l.amn1*m.vol)
  into iRES
  from abc.lst l, abc.med m
  where
  l.cd_c=CD_C#
  and l.cd_m=m.cd_m;

  RETURN(iRES);
END VOLUME_LST;

Function WEIGHT_LST(CD_C# abc.lst.cd_c%TYPE) return number is
iRES number;
BEGIN --WEIGHT_LST
  select
    sum(l.amn1*m.weight)
  into iRES
  from abc.lst l, abc.med m
  where
  l.cd_c=CD_C#
  and l.cd_m=m.cd_m;

  RETURN(iRES);
END WEIGHT_LST;

--Сумма наценки в документе
Function      GET_SUM_TAX   (CDC# number, CDX# number)  RETURN  number IS
RES number(20,6):=0;
BEGIN
  select fprice into RES from abc.ltax where cd_c=CDC# and tp=1 and cd_x=CDX#;
  return(res);
  Exception when others then return(0);
END; -- Function GET_SUM_TAX

--Процент наценки в документе
Function GET_PROC_TAX   (CDC# number, CDX# number)  RETURN  number IS
RES number(20,6):=0;
BEGIN
  select proc into RES from abc.ltax where cd_c=CDC# and tp=1 and cd_x=CDX#;
  return(res*100);
  Exception when others then return(0);
END; -- Function GET_SUM_TAX

Function      GET_ALL_PROC_TAX   (CDC# number)  RETURN  number IS
RES number(20,6):=0;
BEGIN
  select sum(proc) into RES from abc.ltax where cd_c=CDC# and tp=1;
  return(res);
  Exception when others then return(0);
END; -- Function GET_SUM_TAX

/*Возвращает последнюю дату оплаты по расходному документу*/
FUNCTION GETMAXPAYDATE (CDC ABC.DOC.CD_C%TYPE) RETURN ABC.DOC.DATEF%TYPE IS
-- PURPOSE: BRIEFLY EXPLAIN THE FUNCTIONALITY OF THE FUNCTION
--
-- MODIFICATION HISTORY
-- PERSON          DATE      COMMENTS
-- --------------  --------  -------------------------------------------
-- Turlakov K.E.   06.08.99
-- DECLARE PROGRAM VARIABLES AS SHOWN ABOVE
 CURSOR C IS SELECT NVL(PXP.DATEX,D.DATEF) FROM R$BUH.LPAY_LPAY LP,ABC.PXDOC PXP,ABC.DOC D
  WHERE LP.CD_C1=CDC
    AND LP.CD_C2=PXP.CD_C
    AND LP.CD_C2=D.CD_C
    ORDER BY NVL(PXP.DATEX,D.DATEF) DESC;

 RESULT ABC.PXDOC.DATEX%TYPE DEFAULT NULL;
BEGIN
 OPEN C;
  FETCH C INTO RESULT;
 CLOSE C;
 RETURN (RESULT);
 EXCEPTION
   WHEN NO_DATA_FOUND THEN RETURN null;
   WHEN OTHERS THEN RETURN null;
END;

FUNCTION RRATE$(eCDC  ABC.DOC.CD_C%TYPE,
                eDATE date:=null)
RETURN number is
iRES number:=0;
BEGIN --FUNCTION PRICE$
  select
    decode(cd_vr,2,1,decode(eDATE,null,decode(rrate,1,abc.rat(cd_vr,datef,2,4),rrate),abc.rat(cd_vr,eDATE,2,4)))
    INTO iRES
  from abc.doc d
  where d.cd_c=eCDC;
  RETURN(iRES);

END RRATE$;

FUNCTION RRATE$(eROWID varchar2,
                eDATE date:=null)
RETURN number is
iRES number:=0;
BEGIN --FUNCTION PRICE$
  select
    decode(cd_vr,2,1,decode(eDATE,null,decode(rrate,1,abc.rat(cd_vr,datef,2,4),rrate),abc.rat(cd_vr,eDATE,2,4)))
    INTO iRES
  from abc.doc d
  where rowid=chartorowid(eROWID);
  RETURN(iRES);

END RRATE$;

FUNCTION FRATE$(eCDC  ABC.DOC.CD_C%TYPE,
                eDATE date:=null)
RETURN number is
iRES number:=0;
BEGIN --FUNCTION PRICE$
  select
    decode(cd_vf,2,1,decode(eDATE,null,decode(frate,1,abc.rat(cd_vf,datef,2,4),frate),abc.rat(cd_vf,eDATE,2,4)))
    INTO iRES
  from abc.doc d
  where d.cd_c=eCDC;
  RETURN(iRES);
END FRATE$;

FUNCTION FRATE_CB$(eCDC  ABC.DOC.CD_C%TYPE,
                eDATE date:=null)
RETURN number is
iRES number:=0;
BEGIN --FUNCTION PRICE$
  select
    decode(cd_vf,2,1,decode(eDATE,null,decode(frate,1,abc.rat(cd_vf,datef,2,1),frate),abc.rat(cd_vf,eDATE,2,1)))
    INTO iRES
  from abc.doc d
  where d.cd_c=eCDC;
  RETURN(iRES);
END FRATE_CB$;

FUNCTION FRATE$(eROWID varchar2,
                eDATE date:=null)
RETURN number is
iRES number:=0;
BEGIN --FUNCTION PRICE$
  select
    decode(cd_vf,2,1,decode(eDATE,null,decode(frate,1,abc.rat(cd_vf,datef,2,4),frate),abc.rat(cd_vf,eDATE,2,4)))
    INTO iRES
  from abc.doc d
  where rowid=chartorowid(eROWID);
  RETURN(iRES);

END FRATE$;

--Объем документа

FUNCTION NDS_LST_PROC(eCDC abc.doc.cd_c%TYPE,
                      eCDM abc.lst.cd_m%TYPE) RETURN number IS
iRES number:=null;
BEGIN --FUNCTION NDS_LST_PROC
  select DECODE(L.TP,10,10,20,20,0,0,DECODE(P07.CP.check_ctg_on_day(l.cd_m,3,5,l.cd_c),0,decode(P07.CP.check_ctg_on_day(l.cd_m,3,6,l.cd_c),0,0,10),20))
  into iRES
  from abc.lst l
  where
    l.cd_c=eCDC
    and l.cd_m=eCDM;
  RETURN(iRES);
END NDS_LST_PROC;

FUNCTION NDS_LST_NDSAMN(eCDC abc.doc.cd_c%TYPE,
                     eCDM abc.lst.cd_m%TYPE) RETURN number IS
iRES number:=null;
BEGIN --FUNCTION NDS_LST_NDSAMN
  select DECODE(L.TP,null,DECODE(P07.CP.check_ctg_on_day(l.cd_m,3,5,l.cd_c), 1,ROUND((L.TRRPRICE-L.RRPRICE*(1/1.2)*L.AMN1),2),
                decode(P07.CP.check_ctg_on_day(l.cd_m,3,6,l.cd_c),1,ROUND((L.TRRPRICE-L.RRPRICE*(1/1.1)*L.AMN1),2),0)),L.TRRPRICE-ROUND((L.RRPRICE)*L.AMN1,2))
  into iRES
  from abc.lst l
  where
    l.cd_c=eCDC
    and l.cd_m=eCDM;
  RETURN(iRES);
END NDS_LST_NDSAMN;

FUNCTION NDS_LST_NDS(eCDC abc.doc.cd_c%TYPE,
                     eCDM abc.lst.cd_m%TYPE) RETURN number IS
iRES number:=null;
BEGIN --FUNCTION NDS_LST_NDS
  select DECODE(l.tp,null, L.RRPRICE-L.RRPRICE/(1+decode(P07.CP.CHECK_CTG_ON_DAY(l.cd_m,3,5,l.cd_c),1,20,decode(P07.CP.CHECK_CTG_ON_DAY(l.cd_m,3,6,l.cd_c),1,10,0))/100) , ROUND(L.TRRPRICE/L.AMN1-L.RRPRICE,2))
  into iRES
  from abc.lst l
  where
    l.cd_c=eCDC
    and l.cd_m=eCDM;
  RETURN(iRES);
END NDS_LST_NDS;

FUNCTION NDS_LST_PRICENDS(eCDC abc.doc.cd_c%TYPE,
                          eCDM abc.lst.cd_m%TYPE) RETURN number IS
iRES number:=null;
BEGIN --FUNCTION NDS_LST_PRICENDS
  select DECODE(l.tp,null,l.RRPRICE,ROUND(L.TRRPRICE/L.AMN1,3))
  into iRES
  from abc.lst l
  where
    l.cd_c=eCDC
    and l.cd_m=eCDM;
  RETURN(iRES);
END NDS_LST_PRICENDS;

FUNCTION NDS_LST_PRICE(eCDC abc.doc.cd_c%TYPE,
                       eCDM abc.lst.cd_m%TYPE) RETURN number IS
iRES number:=null;
BEGIN --FUNCTION NDS_LST_PRICE
  select DECODE(L.TP,null,DECODE(P07.CP.check_ctg_on_day(l.cd_m,3,5,l.cd_c), 1,ROUND(L.RRPRICE*(1/1.2),2),
                decode(P07.CP.check_ctg_on_day(l.cd_m,3,6,l.cd_c),1,ROUND(L.RRPRICE*(1/1.1),2), L.RRPRICE)),L.RRPRICE)
  into iRES
  from abc.lst l
  where
    l.cd_c=eCDC
    and l.cd_m=eCDM;
  RETURN(iRES);
END NDS_LST_PRICE;

FUNCTION NDS_LST_SUM(eCDC abc.doc.cd_c%TYPE,
                     eCDM abc.lst.cd_m%TYPE) RETURN number IS
iRES number:=null;
BEGIN --FUNCTION NDS_LST_SUM
  select DECODE(L.TP,null,DECODE(P07.CP.check_ctg_on_day(l.cd_m,3,5,l.cd_c), 1,ROUND(L.RRPRICE*(1/1.2)*L.AMN1,2),
                decode(P07.CP.check_ctg_on_day(l.cd_m,3,6,l.cd_c),1,ROUND(L.RRPRICE*(1/1.1)*L.AMN1,2), L.RRPRICE*L.AMN1)),L.RRPRICE*L.AMN1)
  into iRES
  from abc.lst l
  where
    l.cd_c=eCDC
    and l.cd_m=eCDM;
  RETURN(iRES);
END NDS_LST_SUM;

FUNCTION NDS_LST_SUMNDS(eCDC abc.doc.cd_c%TYPE,
                        eCDM abc.lst.cd_m%TYPE) RETURN number IS
iRES number:=null;
BEGIN --FUNCTION NDS_LST_SUMNDS
  select L.TRRPRICE
  into iRES
  from abc.lst l
  where
    l.cd_c=eCDC
    and l.cd_m=eCDM;
  RETURN(iRES);
END NDS_LST_SUMNDS;

FUNCTION CHK_DSIGN(eCDC abc.doc.cd_c%TYPE,
                   eN   number) RETURN number is
iRES number(1):=0;
BEGIN
  select mod(trunc(NVL(dsign,0)/POWER(2,eN-1)),2) into iRES
    from abc.pxdoc where cd_c=eCDC;
  RETURN(iRES);
END;

FUNCTION ADD_BANK_DAY(eD1 date, eBD number)
RETURN date is
Cursor cCalendar is
  select rownum rn, c.*
  from
  (select *
   from abc.calendar
   where
   dat between least(eD1,eD1+eBD*2) and greatest(eD1,eD1+eBD*2)
   and status=1
   Order by sign(eBD)*sysdt) c;

iResult date:=eD1;

BEGIN
  FOR R in cCalendar LOOP
    IF R.rn=sign(eBD)*eBD THEN
      iResult:=R.dat+(eD1-trunc(eD1));
      EXIT;
    END IF;
  END LOOP;
  Return(iResult);
END ADD_BANK_DAY;

FUNCTION ADD_CALENDAR_DAY(eD1 date, eKD number)
RETURN date is
Cursor cCalendar is
  select rownum rn, c.*
  from
  (select *
   from abc.calendar
   where
   dat between least(eD1,eD1+eKD+sign(eKD)*10) and greatest(eD1,eD1+eKD+sign(eKD)*10)
   Order by sign(eKD)*sysdt) c;

iResult date:=eD1;

BEGIN
  FOR R in cCalendar LOOP
    IF (R.rn>=sign(eKD)*eKD)AND(R.status=1) THEN
      iResult:=R.dat+(eD1-trunc(eD1));
      EXIT;
    END IF;
  END LOOP;
  Return(iResult);
END ADD_CALENDAR_DAY;

FUNCTION GET_DPO(eCDC abc.doc.cd_c%TYPE)
RETURN date is
iResult date;
iDate0 date;
iBD number:=GET_BD_REFNUM(eCDC);
iKD number:=GET_KD_REFNUM(eCDC);
BEGIN
  select date0 into iDate0 from abc.doc where cd_c=eCDC;
  IF iBD>0 THEN
    return(ADD_BANK_DAY(iDate0,iBD));
  ELSIF iKD>0 THEN
    return(ADD_CALENDAR_DAY(iDate0,iKD));
  ELSE
    return(iDate0);
  END IF;
END GET_DPO;

FUNCTION GET_NOTPAY_SUM(eCDC abc.doc.cd_c%TYPE,
                        eD1 date)
RETURN number is
iResult number:=0;
BEGIN
  select d.fprice-NVL(sum(l.fprice),0) into iResult
  from (select d.cd_c, d.fprice, eD1 dd, s.chg_dt
        from abc.doc d, abc.sp_doc s
        where
          d.cd_c=eCDC
          and d.shipped<=eD1
          and s.cd_c(+)=d.cd_c) d,
        (select * from abc.lpay where cd_c1=eCDC
         union all
         select *  from abc.lpay where cd_c2=eCDC) l
  where
  /*nvl(d.chg_dt,eD1)>eD1
  and*/ l.moddate(+)<=d.dd
  Group by d.fprice;
  return(iResult);
  EXCEPTION
    WHEN NO_DATA_FOUND THEN return(0);
END GET_NOTPAY_SUM;


FUNCTION GET_PREP_SEB(eCDC abc.doc.cd_c%TYPE,
                      eCDM abc.med.cd_m%TYPE)
RETURN number is
res NUMBER;
seb NUMBER;
seb1 NUMBER;
BEGIN
    --  препараты, у которых определено значение себестоимости
    select /*+ordered use_nl(d,l,s)*/sum(s.price_seb * l.amn1) Into Seb
      from abc.doc d, abc.lst l, rent.price_sebestoim s
     where l.cd_c = d.cd_c
       and l.cd_m=eCDM
       and d.fprice > 0
       and d.cd_a = (select cd_a from abc.doc where cd_c = eCDC)
       and d.sysyear = (select sysyear from abc.doc where cd_c = eCDC)
       and d.tp not in (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'RENT' and value = 'DOCTP_EXCL')
       and l.cd_m = s.cd_m;
    --  препараты, у которых не определено значение себестоимости
    select /*+ordered use_nl(d,l,p,s)*/sum(p.price * l.amn1)  Into Seb1
      from abc.doc d, abc.lst l, abc.pmed p
     where l.cd_c = d.cd_c
       and l.cd_m=eCDM
       and d.fprice > 0
       and d.cd_a = (select cd_a from abc.doc where cd_c = eCDC)
       and d.sysyear = (select sysyear from abc.doc where cd_c = eCDC)
       and d.tp not in (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'RENT' and value = 'DOCTP_EXCL')
       and l.cd_m = p.cd_m
       and p.cd_p = (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'PLIST' and value = 'BASE')
       and not exists (Select null From rent.price_sebestoim s Where s.cd_m=eCDM);
    res := nvl(SEB, 0) + nvl(SEB1, 0);
    RETURN(res);
END GET_PREP_SEB;


FUNCTION GET_R(eCDC abc.doc.cd_c%TYPE,
               eCDM abc.med.cd_m%TYPE)
RETURN number IS
res NUMBER;
BEGIN
    select nvl(round(sum(l.trrprice / (1+nvl(l.tp,0)/100) /
        abc.rat(d.cd_vr, d.datef, 2)), 2), 0) into res
      from abc.lst l, abc.doc d
     where l.cd_c=d.cd_c
       and l.cd_m=eCDM
       and d.fprice > 0
       and d.cd_a = (select cd_a from abc.doc where cd_c = eCDC)
       and d.sysyear = (select sysyear from abc.doc where cd_c = eCDC)
       and d.tp not in (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'RENT' and value = 'DOCTP_EXCL');
    RETURN(res);
END GET_R;

FUNCTION GET_DIFF_RENT(C1 NUMBER)
RETURN number as
  SEB           number;
  SEB1          number;
  R             number;
  R_MES         number;
  SEB_MES       number;
  K             number;
  KORR          number;
  RENT1         number;
  RENT_MES      number;
  Zu            number;
  PLAN_RENT     number;
  PLAN_RENT_CLI number;
  CDU           number;
  CALC_MONTH    number;
  FPR           number;
  DT0           date;
  RES           number;
  iDocAttr      abc.doc%ROWTYPE;
  --
  Cursor S_log(Cdm Number, Dat Date) Is
   select PRICE_SEB_OLD from Rent.Price_Sebestoim_Log
    where cd_m=Cdm
      and mod_dt <= dat
    Order By mod_dt desc;
  Vv S_log%rowtype;
  --
  Cursor S_Doc(Cdu Number) Is
    select d.date0, sum(l.amn1) samn, l.cd_m
      from abc.lst l, abc.doc d
     where l.cd_c = d.cd_c
       and d.fprice > 0
       and d.cd_u = CDU
       and d.date0 >= add_months(trunc(last_day(sysdate)), -2) + 1
       and d.date0 <  add_months(trunc(last_day(sysdate)), -1) + 1
     Group By l.cd_m, d.date0;
  --
  Cursor Doc_num(c1 number) Is
    select substr(d.cd_a||'/'||d.num,1,12) ndoc
      from abc.doc d
     where  d.cd_a = (select cd_a from abc.doc where cd_c = c1)
       and  d.sysyear = (select sysyear from abc.doc where cd_c = c1)
       and d.tp not in (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'RENT' and key = 'DOCTP_EXCL')
       and d.cd_l<>7;
  --
begin
  select * into iDocAttr from abc.doc where cd_c=C1;
  IF iDocAttr.cd_l in (7) THEN
    return(0);
  END IF;

    -- считаем рентабельность
    -- 1) сумма сделки в долларах без НДС
    select nvl(round(sum(l.trrprice / (1+nvl(l.tp,0)/100) /
        abc.rat(d.cd_vr, d.datef, 2)), 2), 0) into R
      from abc.lst l, abc.doc d
     where l.cd_c=d.cd_c
       and d.fprice > 0
       and d.cd_a = (select cd_a from abc.doc where cd_c = c1)
       and d.tp not in (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'RENT' and key = 'DOCTP_EXCL')
       and d.sysyear = (select sysyear from abc.doc where cd_c = c1)
       and d.cd_l<>7;
    -- 2) себестоимость
    --  препараты, у которых определено значение себестоимости
    select /*+ordered use_nl(d,l,s)*/sum(s.price_seb * l.amn1) Into Seb
      from abc.doc d, abc.lst l, rent.price_sebestoim s
     where l.cd_c = d.cd_c
       and d.fprice > 0
       and d.cd_a = (select cd_a from abc.doc where cd_c = c1)
       and d.sysyear = (select sysyear from abc.doc where cd_c = c1)
       and d.tp not in (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'RENT' and key = 'DOCTP_EXCL')
       and l.cd_m = s.cd_m
       and d.cd_l<>7;
    --  препараты, у которых не определено значение себестоимости
    select /*+ordered use_nl(d,l,p,s)*/sum(p.price * l.amn1)  Into Seb1
      from abc.doc d, abc.lst l, abc.pmed p
     where l.cd_c = d.cd_c
       and d.fprice > 0
       and d.cd_a = (select cd_a from abc.doc where cd_c = c1)
       and d.sysyear = (select sysyear from abc.doc where cd_c = c1)
       and d.tp not in (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'RENT' and key = 'DOCTP_EXCL')
       and l.cd_m = p.cd_m
       and p.cd_p = (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'PLIST' and key = 'BASE')
       and not exists (Select null From rent.price_sebestoim s Where s.cd_m=p.cd_m)
       and d.cd_l<>7;
    SEB := nvl(SEB, 0) + nvl(SEB1, 0);
    If SEB = 0 then
      return(0);
    end if;
    select cd_u, date0 into CDU, DT0 from abc.doc where cd_c = c1;
    -- 3) процент корректировки
    K := nvl(skidka.get_personal_params(cdu, 700006, dt0), 0);
    RENT1 := ((R * (1 - K / 100) - SEB) / SEB ) * 100;
    PLAN_RENT_CLI := skidka.get_personal_params(cdu, 700003, dt0);
    If PLAN_RENT_CLI is null then
      -- если нет плановой рентабельности у клиента, то берем общую для филиала
      select TO_NUMBER(value, '9.9') into PLAN_RENT from abc.universum where tp = 'RENT' and key = 'MIN_RENT';
      If PLAN_RENT > RENT1 then
        RES := round(PLAN_RENT - RENT1, 2);
        --RETURN(RES);
      else
        RES := round(PLAN_RENT - RENT1, 2);
      end if;
    else
      -- плановая рентабельность у клиента есть
      select value into KORR from abc.universum where tp = 'RENT' and key = 'KORR_RENT';
      select value into CALC_MONTH from abc.universum where tp = 'RENT' and key = 'CALC_MONTH';
      RES := round(PLAN_RENT_CLI * KORR - RENT1, 2);
      If PLAN_RENT_CLI * KORR > RENT1 then
        -- расчет рентабельности за последний месяц
        If CALC_MONTH = 1 then
          -- 1) сумма сделки в долларах без НДС
          select nvl(round(sum(l.trrprice / (1+nvl(l.tp,0)/100) /
             abc.rat(d.cd_vr, d.datef,2)), 2), 0) into R_MES
            from abc.lst l, abc.doc d
           where l.cd_c = d.cd_c
             and d.fprice > 0
             and d.cd_u = CDU
             and d.tp in (select cd_c from abc.doc2up where cd_up in (
                          select value from abc.universum where tp = 'REALIZATION'
                             and key = 'DOCTYPE' ) )
             and d.date0 >= add_months(trunc(last_day(sysdate)), -2) + 1
             and d.date0 <  add_months(trunc(last_day(sysdate)), -1) + 1;
       -- 2) себестоимость за месяц
          SEB_MES := 0;
          For v In S_Doc(CDU) Loop
            Open S_log(v.Cd_m, v.Date0);
            Fetch S_log Into vv;
            If nvl(vv.price_seb_old, 0) = 0 Then
              begin
                Select price_seb Into vv.price_seb_old
                  From Rent.Price_Sebestoim
                 Where cd_m = v.cd_m;
              exception
                when no_data_found then
                  vv.price_seb_old := 0;
              end;
            End If;
            If nvl(vv.price_seb_old, 0) = 0 Then
              -- если не определено значение себестоимости
--              select p.price Into vv.price_seb_old
--                from abc.pmed p
--               where p.cd_m = v.cd_m
--                 and p.cd_p = 1;
              vv.price_seb_old := 0;
            end if;
            SEB_MES := vv.price_seb_old * v.samn + SEB_MES;
            Close S_Log;
            vv.price_seb_old := null;
          End Loop;
          --
          If SEB_MES = 0 then
            RES := round(PLAN_RENT_CLI * KORR - RENT1, 2);
            --RETURN(RES);
          end if;
          RENT_MES := ((R_MES * (1 - K / 100) - SEB_MES) / SEB_MES ) * 100;
          If PLAN_RENT_CLI > RENT_MES then
            RES := round(PLAN_RENT_CLI * KORR - RENT1, 2);
          end if;
        else
          -- месячную не считаем, сразу сообщение
          RES := round(PLAN_RENT_CLI * KORR - RENT1, 2);
        end if; -- считать ли месячную рентабельность
      end if; -- превышает ли плановая рентабельность рент сделки
    end if; -- есть ли плановая рентабельность у клиента

  RETURN(RES);
-- raise_application_error(-20222, MESS||'  '||round(RENT1, 2)||' Себестоимость: '||SEB||
--  ' Себестоимость месячная: '||SEB_MES||' Сделка: '||R||' Сумма за месяц: '||R_MES||
--  ' Процент корректировки: '||K);
end GET_DIFF_RENT;


FUNCTION GET_DEAL_RENT(C1 NUMBER)
RETURN number as
  SEB           number;
  SEB1          number;
  R             number;
  K             number;
  RENT1         number;
  CDU           number;
  DT0           date;
  iDocAttr      abc.doc%ROWTYPE;
  RES           number;
begin
  select * into iDocAttr from abc.doc where cd_c=C1;
  IF iDocAttr.cd_l in (7) THEN
    RES := -10;
    return(RES);
  END IF;

    -- считаем рентабельность
    -- 1) сумма сделки в долларах без НДС
    select nvl(round(sum(l.trrprice / (1+nvl(l.tp,0)/100) /
        abc.rat(d.cd_vr, d.datef, 2)), 2), 0) into R
      from abc.lst l, abc.doc d
     where l.cd_c=d.cd_c
       and d.fprice > 0
       and d.cd_a = (select cd_a from abc.doc where cd_c = c1)
       and d.tp not in (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'RENT' and key = 'DOCTP_EXCL')
       and d.sysyear = (select sysyear from abc.doc where cd_c = c1)
       and d.cd_l not in (11,14,16,13);
    -- 2) себестоимость
    --  препараты, у которых определено значение себестоимости

    select /*+ordered use_nl(d,l,s)*/sum(p07.get_sebest(l.cd_m, d.datef) * l.amn1) Into Seb
     from abc.doc d, abc.lst l
     where l.cd_c = d.cd_c
       and d.fprice > 0
       and d.cd_a = (select cd_a from abc.doc where cd_c = c1)
       and d.sysyear = (select sysyear from abc.doc where cd_c = c1)
       and d.tp not in (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'RENT' and key = 'DOCTP_EXCL')
       and d.cd_l not in (11,14,16,13);

  --  select /*+ordered use_nl(d,l,s)*/sum(s.price_seb * l.amn1) Into Seb
  --    from abc.doc d, abc.lst l, rent.price_sebestoim s
  --   where l.cd_c = d.cd_c
  --     and d.fprice > 0
  --     and d.cd_a = (select cd_a from abc.doc where cd_c = c1)
  --     and d.sysyear = (select sysyear from abc.doc where cd_c = c1)
  --     and d.tp not in (SELECT TO_NUMBER(value) FROM
  --           abc.universum WHERE tp = 'RENT' and key = 'DOCTP_EXCL')
  --     and l.cd_m = s.cd_m
  --     and d.cd_l<>7;

    --  препараты, у которых не определено значение себестоимости
    select /*+ordered use_nl(d,l,p,s)*/sum(p.price * l.amn1)  Into Seb1
      from abc.doc d, abc.lst l, abc.pmed p
     where l.cd_c = d.cd_c
       and d.fprice > 0
       and d.cd_a = (select cd_a from abc.doc where cd_c = c1)
       and d.sysyear = (select sysyear from abc.doc where cd_c = c1)
       and d.tp not in (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'RENT' and key = 'DOCTP_EXCL')
       and l.cd_m = p.cd_m
       and p.cd_p = (SELECT TO_NUMBER(value) FROM
             abc.universum WHERE tp = 'PLIST' and key = 'BASE')
       and not exists (Select null From rent.price_sebestoim s Where s.cd_m=p.cd_m)
       and d.cd_l not in (11,14,16,13);
    SEB := nvl(SEB, 0) + nvl(SEB1, 0);
    If SEB = 0 then
       RES := -10;
       return(RES);
    end if;
    select cd_u, datef into CDU, DT0 from abc.doc where cd_c = c1;
    -- 3) процент корректировки
    K := nvl(skidka.get_personal_params(cdu, 700006, dt0), 0);
    RENT1 := ((R * (1 - K / 100) - SEB) / SEB ) * 100;
    RES := RENT1;
  RETURN(RES);

end GET_DEAL_RENT;


FUNCTION COUNT_DOC_PLACES(eCD_A abc.doc.cd_a%TYPE, eNUM abc.doc.num%TYPE) return number is
  iResult number;
  iK number;
  type iRecDocCollect is record (CD_A abc.doc.cd_a%TYPE,
                                 NUM abc.doc.num%TYPE);
  type iTableDocCollect is table of iRecDocCollect;
  iDC iTableDocCollect:=iTableDocCollect();
  Cursor P1 is select distinct M1 from pc_place where cd_a=eCD_A and num=eNUM;
  Cursor P2(icCDA pc_place.cd_a%TYPE, icNUM pc_place.num%TYPE, icPlace pc_place.m1%TYPE) is
     select * from pc_place where cd_a=icCDA and num=icNUM and m1=icPlace;

  procedure FIND_COMBINE(eCDA pc_doc.cd_a%TYPE,
                         eNUM pc_doc.num%TYPE) is
  iB boolean:=false;
  Cursor B is
    select cd_a,num from pc_doc where ccd_a=eCDA and cnum=eNUM;
  Cursor F is
    select --+ index(pc_doc pc_doc_pk)
      ccd_a cd_a, cnum num from pc_doc where cd_a=eCDA and num=eNUM and ccd_a is not null and cnum is not null;
  BEGIN
    FOR R in B LOOP
        FOR I in 1..iDC.Count LOOP
          IF (iDC(I).CD_A=R.cd_a) and (iDC(I).NUM=R.num) THEN
            iB:=true;
            Exit;
          END IF;
        END LOOP;
        IF not iB THEN
          iDC.Extend;
          iDC(iDC.Count).CD_A:=R.cd_a;
          iDC(iDC.Count).NUM:=R.num;
        FIND_COMBINE(R.cd_a,R.num);
        END IF;
    END LOOP;

    FOR R in F LOOP
        FOR I in 1..iDC.Count LOOP
          IF (iDC(I).CD_A=R.cd_a) and (iDC(I).NUM=R.num) THEN
            iB:=true;
            Exit;
          END IF;
        END LOOP;
        IF not iB THEN
          iDC.Extend;
          iDC(iDC.Count).CD_A:=R.cd_a;
          iDC(iDC.Count).NUM:=R.num;
        FIND_COMBINE(R.cd_a,R.num);
        END IF;
    END LOOP;
  END FIND_COMBINE;
begin
  iDC.Extend;
  iDC(1).CD_A:=eCD_A;
  iDC(1).NUM:=eNUM;
  FIND_COMBINE(eCD_A,eNUM);
  iResult:=0;
  FOR R1 in P1 LOOP
    iK:=1;
    FOR I in 2..iDC.Count LOOP
      select iK+count(M1) into iK from pc_place where cd_a=iDC(I).CD_A and num=iDC(I).NUM and m1=R1.m1 and rownum=1;
    END LOOP;
    iResult:=iResult+1/iK;
  END LOOP;
  return(iResult);
end count_doc_places;

FUNCTION GET_SUM_PROC_DISCOUNT(eCDC abc.ltax.cd_c%TYPE) return number is
  iResult number;
BEGIN
  select sum(l.proc)*100
  into iResult
  from abc.ltax l
  where
  l.cd_c=eCDC
  and l.op<0;
  return(iResult);
  Exception
    When NO_DATA_FOUND THEN
      return(0);
END;

FUNCTION DOC_LST_SUMNDS(eCDC abc.doc.cd_c%TYPE, NDS NUMBER) RETURN number IS
iRES number:=0;
BEGIN --FUNCTION DOC_LST_SUMNDS
  select sum(nds_lst_ndsamn(eCDC,l.cd_m))
  into iRES
  from abc.lst l
  where
    l.cd_c=eCDC
     and
    l.tp=NDS;
--    decode(NDS,10,P07.CP.check_ctg_on_day(l.cd_m,3,6,l.cd_c),20,P07.CP.check_ctg_on_day(l.cd_m,3,5,l.cd_c),0)=1;
  RETURN(iRES);
END DOC_LST_SUMNDS;

FUNCTION GET_LST_SERT(SERT# NUMBER, eCDM abc.med.cd_m%TYPE, delimeter varchar2 default ';')
RETURN varchar2 as
begin
-- return(translate(john.get_lst_seria_sst@OSERT(SERT#,eCDM,delimeter),';',','));
  null;
end GET_LST_SERT;

FUNCTION GET_CITO_STATUS(eCD_A abc.doc.cd_a%TYPE, eNUM abc.doc.num%TYPE)
RETURN number as
 iRES number:=0;
begin
 select count(*) into iRES from abc.doc d, abc.pxdoc p
 where d.cd_a=eCD_A and d.num=eNUM and p.cd_c=d.cd_c
 and ((upper(p.prim) like '%CITOАБ%')or(upper(p.prim) like '%CITOAB%'));
 if iRes>0 then iRes:=3;
 else
   select count(*) into iRES from abc.doc d, abc.pxdoc p
   where d.cd_a=eCD_A and d.num=eNUM and p.cd_c=d.cd_c
   and (upper(p.prim) like '%CITO%');
   if iRes>0 then iRes:=2;
   else
     select count(*) into iRES from abc.doc d, abc.pxdoc p
     where d.cd_a=eCD_A and d.num=eNUM and p.cd_c=d.cd_c
     and (upper(p.prim) like '%911%');
     if iRes>0 then iRes:=1;
     end if;
   end if;
 end if;
 return(iRES);
end;

FUNCTION GET_PRESENCE_MED(CDA abc.doc.cd_a%TYPE, NUM abc.doc.num%TYPE, CDM abc.med.cd_m%TYPE)
RETURN number as
 iRES number:=0;
begin
 select 1 into iRES from abc.doc d, abc.lst l
 where d.cd_a = CDA and d.num = NUM and d.cd_c = l.cd_c and l.cd_m = CDM;
 RETURN(1);
 EXCEPTION
   WHEN NO_DATA_FOUND THEN RETURN(0);
end;

/*1 если есть документ с СD_С в ABC.DOC, 0 если нету */
FUNCTION check_doc_existance(iCDC abc.doc.cd_c%TYPE)
RETURN number AS
iRes number := 0;
BEGIN
 select 1 into iRES from abc.doc d where d.cd_c = iCDC ;
 RETURN(1);
 EXCEPTION
   WHEN NO_DATA_FOUND THEN RETURN(0);
END;



END; -- Package Body DOC_UTL
/

SHOW ERRORS;


CREATE OR REPLACE PROCEDURE     CALC_MONTH_DEALS    (cd_qx number, cd_tx number)
IS
   dstart             DATE;
   dend               DATE;
   rtotal_cnt         NUMBER;
   rtotal_cash        NUMBER;
   rprc_less_3_cnt    NUMBER;
   rprc_less_3_cash   NUMBER;
   rprc_3_7_cnt       NUMBER;
   rprc_3_7_cash      NUMBER;
   rprc_more_7_cnt    NUMBER;
   rprc_more_7_cash   NUMBER;
   icnt               NUMBER;
   
   cursor C (ds date, de date) is
     SELECT  CD_A, SUM(FPRICE) FPRICE, RENT
       FROM
        (
         SELECT /* + ordered use(d)*/ d.cd_a, d.fprice / 
         p07.doc_utl.frate$(d.cd_c,d.datef) fprice, p07.doc_utl.get_deal_rent (d.cd_c) RENT
         FROM abc.doc d, abc.pxdoc p
         WHERE d.fprice > 0 
           AND d.cd_c=p.cd_c
           AND d.tp in ( 83, 101)
           AND p.date8 BETWEEN ds AND de
           AND d.cd_l not in (11,14,16,13)
        )
       GROUP BY CD_A, RENT; 
   
BEGIN
   SELECT TRUNC (dvalue1),   TRUNC (dvalue2)
                           + 1
                           - 1 / 24 / 60 / 60
     INTO dstart, dend
     FROM abc.qrunparam q
    WHERE q.cd_t = cd_tx AND q.cd_q = cd_qx;
   
   DELETE from p07.month_deals_tmp;
   
   COMMIT; 
   
   FOR R in C(dstart, dend)
   LOOP
    INSERT INTO p07.month_deals_tmp
               (cd_a, fprice, rent) 
        VALUES (R.CD_A, R.FPRICE, R.RENT);
    COMMIT;    
   END LOOP;
   

   SELECT COUNT (cd_a), SUM (fprice)
       INTO rtotal_cnt, rtotal_cash
       FROM p07.month_deals_tmp;

   SELECT COUNT (cd_a) * 100 / rtotal_cnt, SUM (fprice) * 100 / rtotal_cash
       INTO rprc_less_3_cnt, rprc_less_3_cash
       FROM p07.month_deals_tmp
      WHERE rent < 3;

   SELECT  COUNT (cd_a) * 100 / rtotal_cnt, SUM (fprice) * 100 / rtotal_cash
       INTO rprc_3_7_cnt, rprc_3_7_cash
       FROM p07.month_deals_tmp
      WHERE rent BETWEEN 3 AND 7;

   SELECT  COUNT (cd_a) * 100 / rtotal_cnt, SUM (fprice) * 100 / rtotal_cash
       INTO rprc_more_7_cnt, rprc_more_7_cash
       FROM p07.month_deals_tmp
      WHERE rent > 7;

   SELECT COUNT (*)
     INTO icnt
     FROM p07.month_deals_res r
    WHERE r.start_dt = dstart AND r.end_dt = dend;

   IF (icnt > 0)
   THEN
      UPDATE p07.month_deals_res r
         SET start_dt = dstart,
             end_dt = dend,
             total_cnt = rtotal_cnt,
             total_cash = rtotal_cash,
             prc_less_3_cnt = rprc_less_3_cnt,
             prc_less_3_cash = rprc_less_3_cash,
             prc_3_7_cnt = rprc_3_7_cnt,
             prc_3_7_cash = rprc_3_7_cash,
             prc_more_7_cnt = rprc_more_7_cnt,
             prc_more_7_cash = rprc_more_7_cash
       WHERE r.start_dt = dstart AND r.end_dt = dend;
   ELSE
      INSERT INTO p07.month_deals_res
                  (start_dt, end_dt, total_cnt, total_cash, prc_less_3_cnt,
                   prc_less_3_cash, prc_3_7_cnt, prc_3_7_cash,
                   prc_more_7_cnt, prc_more_7_cash)
           VALUES (dstart, dend, rtotal_cnt, rtotal_cash, rprc_less_3_cnt,
                   rprc_less_3_cash, rprc_3_7_cnt, rprc_3_7_cash,
                   rprc_more_7_cnt, rprc_more_7_cash);
   COMMIT;                
   END IF;
EXCEPTION WHEN OTHERS THEN
    NULL;   
END; -- Procedure
/

SHOW ERRORS;


CREATE OR REPLACE PROCEDURE     FORMA6 (cd_qx number, cd_tx number) as
m_cdu	number;
m_rur	number;
m_usd	number;
num     number;
curdate date;
cursor nepro(D$ DATE, D1$ DATE) is	-- непросроченная задолженность
select --+index(d doc_c)
		d.cd_u
	,	round(sum(d.fprice*(1-p07.GET_TAX_ON_DAY(D.CD_C,D$)/d.fprice)))	rur
	,	round(sum(d.fprice/p07.doc_utl.frate$(d.cd_c)*(1-p07.GET_TAX_ON_DAY(D.CD_C,D$)/d.fprice)))	usd
from
		abc.pxdoc	x,
		abc.doc		d
where
	x.dated >= trunc(D1$)
	and	d.cd_c=x.cd_c||''
	and	not exists (select null from abc.sp_doc s
                     where s.cd_c=x.cd_c
                       AND TRUNC(S.chg_dt)<D$+1/24/60/60)
	and	d.tp in (select cd_c from abc.doc2up where cd_up in
				(select to_number(value) from abc.universum
					where tp='REALIZATION' and key='DOCTYPE') or cd_up=337)
	and	d.date0 < trunc(D1$ + 1)
	and	p07.GET_TAX_ON_DAY(D.CD_C,D$)/(d.fprice+0.0000001) < 0.999
	and	d.fprice > 0
    and decode(d.tp,337,d.date0,x.date8) < trunc(D1$ + 1)
group by
		d.cd_u;

cursor pr_day(D$ DATE,D1$ DATE,ndays number) is	-- просроченная задолженность до "ndays" б.д.
select --+ index(d doc_c)
	d.cd_u
	,	round(sum(d.fprice*(1-p07.GET_TAX_ON_DAY(D.CD_C,D$)/d.fprice)))	rur
	,	round(sum(d.fprice/p07.doc_utl.frate$(d.cd_c)*(1-p07.GET_TAX_ON_DAY(D.CD_C,D$)/d.fprice)))	usd
from
		abc.doc		d
	,	abc.pxdoc	x
where
		d.tp in (select cd_c from abc.doc2up where cd_up in
				(select to_number(value) from abc.universum
					where tp='REALIZATION' and key='DOCTYPE') or cd_up=337)
	and	p07.GET_TAX_ON_DAY(D.CD_C,D$)/(d.fprice+0.0000001) < 0.999
	and	d.fprice > 0
	and	x.cd_c||'' = d.cd_c
	and	x.dated >= trunc(doc_utl.add_bank_day(D1$, ndays))
	and	x.dated < trunc(D1$)
    and decode(d.tp,337,d.date0,x.date8) < trunc(D1$ + 1)
	and	not exists (select null from abc.sp_doc s
                     where s.cd_c=x.cd_c
                       AND TRUNC(S.chg_dt)<D$+1/24/60/60)
group by
		d.cd_u;

cursor pr_months(D$ DATE, D1$ DATE,nmon1 number, nmon2 number) is	-- просроченная задолженность от "nmon1" до "nmon2" месяцев
select --+ index(d doc_c)
	d.cd_u
	,	round(sum(d.fprice*(1-p07.GET_TAX_ON_DAY(D.CD_C,D$)/d.fprice)))	rur
	,	round(sum(d.fprice/p07.doc_utl.frate$(d.cd_c)*(1-p07.GET_TAX_ON_DAY(D.CD_C,D$)/d.fprice)))	usd
from
		abc.doc		d
	,	abc.pxdoc	x
where
		d.tp in (select cd_c from abc.doc2up where cd_up in
				(select to_number(value) from abc.universum
					where tp='REALIZATION' and key='DOCTYPE') or cd_up=337)
	and	p07.GET_TAX_ON_DAY(D.CD_C,D$)/(d.fprice+0.0000001) < 0.999
	and	d.fprice > 0
	and	x.cd_c||'' = d.cd_c
	and	x.dated >= trunc(add_months(D1$, nmon1))
	and	x.dated < trunc(add_months(D1$, nmon2))
    and decode(d.tp,337,d.date0,x.date8) < trunc(D1$ + 1)
	and	not exists (select null from abc.sp_doc s
                     where s.cd_c=x.cd_c
                       AND TRUNC(S.chg_dt)<D$+1/24/60/60)
group by
		d.cd_u;

cursor pr_month(D$ DATE, D1$ DATE, nmon number) is	-- просроченная задолженность от "nmon" месяцев
select --+ index(d doc_c)
	d.cd_u
	,	round(sum(d.fprice*(1-p07.GET_TAX_ON_DAY(D.CD_C,D$)/d.fprice)))	rur
	,	round(sum(d.fprice/p07.doc_utl.frate$(d.cd_c)*(1-p07.GET_TAX_ON_DAY(D.CD_C,D$)/d.fprice)))	usd
from
		abc.doc		d
	,	abc.pxdoc	x
where
		d.tp in (select cd_c from abc.doc2up where cd_up in
				(select to_number(value) from abc.universum
					where tp='REALIZATION' and key='DOCTYPE') or cd_up=337)
	and	p07.GET_TAX_ON_DAY(D.CD_C,D$)/(d.fprice+0.0000001) < 0.999
	and	d.fprice > 0
	and	x.cd_c||'' = d.cd_c
	and	x.dated < trunc(add_months(D1$, nmon))
    and decode(d.tp,337,d.date0,x.date8) < trunc(D1$ + 1)
	and	not exists (select null from abc.sp_doc s
                     where s.cd_c=x.cd_c
                       AND TRUNC(S.chg_dt)<D$+1/24/60/60)
group by
		d.cd_u;

cursor spis(D$ DATE) is	-- задолженность к списанию
select
	d.cd_u
	,	round(sum(d.fprice*(1-p07.GET_TAX_ON_DAY(D.CD_C,D$)/d.fprice)))	rur
	,	round(sum(d.fprice/p07.doc_utl.frate$(d.cd_c)*(1-p07.GET_TAX_ON_DAY(D.CD_C,D$)/d.fprice)))	usd
from
		abc.doc	d, abc.sp_doc s
where
		d.tp in (select cd_c from abc.doc2up where cd_up in
				(select to_number(value) from abc.universum
					where tp='REALIZATION' and key='DOCTYPE') or cd_up=337)
	and	p07.GET_TAX_ON_DAY(D.CD_C,D$)/(d.fprice+0.0000001) < 0.999
	and	d.fprice > 0
  and s.cd_c=d.cd_c
  and TRUNC(S.chg_dt)<D$+1/24/60/60
group by
		d.cd_u;

cursor oborot(D$ DATE, mon number, nam number) is
select
		d.cd_u
	,	round(sum(d.fprice*abc.rat(1,d.datef,d.cd_vf,1))/nam)	rur
	,	round(sum(d.fprice*abc.rat(2,d.datef,d.cd_vf,1))/nam)	usd
from
		abc.doc		d
where
		d.tp in (select cd_c from abc.doc2up where cd_up in
				(select to_number(value) from abc.universum
					where tp='REALIZATION' and key='DOCTYPE'))
	and	d.fprice > 0
	and	D.date0 < trunc(D$)
	and	D.date0 >= trunc(add_months(D$, mon))
group by
		d.cd_u;

cursor oplata(D$ DATE, mon number, nam number) is
--Оплаты за период
select
		d.cd_u
	,	round(sum(d.fprice*abc.rat(1,d.datef,d.cd_vf,1))/nam)	rur
	,	round(sum(d.fprice*abc.rat(2,d.datef,d.cd_vf,1))/nam)	usd
from
		abc.doc		d
where
		d.tp in (331, 332, 333, 334, 336, 338)
	and	d.fprice > 0
	and	D.date0 < trunc(D$)
	and	D.date0 >= trunc(add_months(D$, mon))
group by
		d.cd_u;

CURSOR f6 IS
    SELECT cd_u, do_10d_rur, do_10d_usd, ot10d_do1_rur, ot10d_do1_usd,
           ot1_do2_rur, ot1_do2_usd, ot2_do3_rur, ot2_do3_usd, ot3_do4_rur,
           ot3_do4_usd, ot4_do5_rur, ot4_do5_usd, ot5_do6_rur, ot5_do6_usd,
           ot6_rur, ot6_usd, spis_rur, spis_usd, nepro_rur, nepro_usd,
           mes_rur, mes_usd, obsh_rur, obsh_usd, ot6_do12_rur, ot6_do12_usd,
           ot12_rur, ot12_usd, opl_m, avg_opl_3m
      FROM p07.form6;

HZ DATE;
HQ DATE;

begin
	delete from p07.form6;
	commit;
	insert into p07.form6 select cd_u,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 from abc.usr;

select max(dvalue1) into HZ
   from abc.qrunparam
where cd_t=cd_tx and cd_q=cd_qx;

select max(dvalue2) into HQ
   from abc.qrunparam
where cd_t=cd_tx and cd_q=cd_qx;

	for r in nepro(HZ,HQ)
	loop
		update p07.form6 set nepro_rur=r.rur, nepro_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

	for r in pr_day(HZ,HQ,-10)
	loop
		update p07.form6 set do_10d_rur=r.rur, do_10d_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

	for r in pr_months(HZ,HQ,-1, 0)
	loop
		update p07.form6 set ot10d_do1_rur=r.rur-do_10d_rur
			, ot10d_do1_usd=r.usd-do_10d_usd where cd_u=r.cd_u;
	end loop;
	commit;

	for r in pr_months(HZ,HQ,-2, -1)
	loop
		update p07.form6 set ot1_do2_rur=r.rur, ot1_do2_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;
	for r in pr_months(HZ,HQ,-3, -2)
	loop
		update p07.form6 set ot2_do3_rur=r.rur, ot2_do3_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

	for r in pr_months(HZ,HQ,-4, -3)
	loop
		update p07.form6 set ot3_do4_rur=r.rur, ot3_do4_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

	for r in pr_months(HZ,HQ,-5, -4)
	loop
		update p07.form6 set ot4_do5_rur=r.rur, ot4_do5_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

	for r in pr_months(HZ,HQ,-6, -5)
	loop
		update p07.form6 set ot5_do6_rur=r.rur, ot5_do6_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

	for r in pr_month(HZ,HQ,-6)
	loop
		update p07.form6 set ot6_rur=r.rur, ot6_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

    for r in pr_months(HZ,HQ,-12,-6)
	loop
		update p07.form6 set ot6_do12_rur=r.rur, ot6_do12_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

    for r in pr_month(HZ,HQ,-12)
	loop
		update p07.form6 set ot12_rur=r.rur, ot12_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

	for r in spis(HZ)
	loop
		update p07.form6 set spis_rur=r.rur, spis_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

	for r in oborot(HQ,-3, 3)	-- среднемесячный отгрузки за последние 3 месяца
	loop
		update p07.form6 set mes_rur=r.rur, mes_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

	for r in oborot(HQ,-999, 1)	-- сумма всех отгрузок клиента
	loop
		update p07.form6 set obsh_rur=r.rur, obsh_usd=r.usd where cd_u=r.cd_u;
	end loop;
	commit;

    FOR r in oplata(HQ, -1, 1)
    LOOP
        UPDATE p07.form6 SET opl_m = r.usd WHERE cd_u = r.cd_u;
     END LOOP;
    COMMIT;

    FOR r in oplata(HQ, -3, 3)
    LOOP
        UPDATE p07.form6 SET avg_opl_3m = r.usd WHERE cd_u = r.cd_u;
     END LOOP;
    COMMIT;

   COMMIT;
   SELECT trunc(SYSDATE) INTO curdate FROM dual;
   FOR R IN f6
   LOOP

     SELECT count(*) INTO num FROM abc.f6_auto  WHERE dt_o = curdate AND cd_u = r.cd_u;
     IF num > 0 THEN
           NULL;
     ELSE
       INSERT INTO abc.f6_auto
          (
             DT_O,
             FIL_CDU,
             CD_U,
             DZ_DO_10D,
             DZ_OT10_DO_MES,
             DZ_OT1_DO2,
             DZ_OT2_DO3,
             DZ_OT3_DO4,
             DZ_OT4_DO5,
             DZ_OT5_DO6,
             DZ_OT6,
             UTV_SPS_DZ,
             NPRO_DZ,
             K_DZ1,
             K_DZ3

          )
          VALUES
          (
          curdate,
          3434,
            r.CD_U,
            r.DO_10D_USD,
            r.OT10D_DO1_USD,
            r.OT1_DO2_USD,
            r.OT2_DO3_USD,
            r.OT3_DO4_USD,
            r.OT4_DO5_USD,
            r.OT5_DO6_USD,
            r.OT6_USD + r.OT6_DO12_USD + r.OT12_USD,
            r.NEPRO_USD,
            r.SPIS_USD,
            r.OPL_M,
            r.AVG_OPL_3M
          );
      END IF;

   END LOOP;
   COMMIT;
end;
/

SHOW ERRORS;


CREATE OR REPLACE FUNCTION get_sebest
  ( ecd_m IN number ,
    dt IN date)
  RETURN  number IS
cursor c1 (cdm number, dtc date) is select price_seb_old
             from rent.price_sebestoim_log
             where mod_dt > dtc
               and cd_m = cdm
             order by mod_dt desc;
 res number;
 CC c1%rowtype;
BEGIN
   open c1(ecd_m, dt);
   fetch c1 into CC;
   close c1;
   if (CC.price_seb_old  is not null) then
    res := CC.price_seb_old;
   else
      select nvl(price_seb,0)
      into res
      from rent.price_sebestoim
      where cd_m = ecd_m;
   end if;
   RETURN res;
END;
/

SHOW ERRORS;


CREATE OR REPLACE FUNCTION     GET_TAX_ON_DAY (CDC NUMBER,DAT DATE)
 RETURN NUMBER AS
-- Возвращает сумму проплат по документу CDC на день DAT
YFPR NUMBER;
OPL  NUMBER;
RES  NUMBER;
BEGIN
  SELECT NVL(Sum(FPRICE),0) INTO OPL
    FROM ABC.LPAY
    WHERE (CD_C1=CDC OR CD_C2=CDC)
    AND TRUNC(MODDATE)>=TRUNC(DAT);
  SELECT YFPRICE INTO YFPR FROM ABC.DOC WHERE CD_C=CDC;
  SELECT (YFPR-OPL) INTO RES FROM DUAL;
  RETURN (ROUND(RES,2));
END;
/

SHOW ERRORS;


CREATE OR REPLACE VIEW V$CHECK_BD_DELAY
AS 
select "CD_D","BD_MIN","BD_MAX","BD","PROC","STATUS","CD_U" from check_bd_delay where status=1;


CREATE OR REPLACE VIEW V$FORM6_USD
AS 
select cd_u,nm_u,uin,do_10d,ot10d_do1,ot1_do2,ot2_do3,ot3_do4,ot4_do5,ot5_do6,ot6,ot6_do12,ot12,
sum1,spis,nepro,sum2,mes,obsh,agent
from
(SELECT u.cd_u cd_u, ltrim(u.nm_u) nm_u,
 to_char(u.uin) uin, do_10d_usd do_10d,
 ot10d_do1_usd ot10d_do1, ot1_do2_usd ot1_do2,
 ot2_do3_usd ot2_do3, ot3_do4_usd ot3_do4,
 ot4_do5_usd ot4_do5, ot5_do6_usd ot5_do6,ot6_usd ot6,
 ot6_do12_usd ot6_do12, ot12_usd ot12,
do_10d_usd+ot10d_do1_usd+ot1_do2_usd+ot2_do3_usd+ot3_do4_usd+ot4_do5_usd+ ot5_do6_usd+ot6_do12_usd+ot12_usd sum1,
 nepro_usd nepro, spis_usd spis,
do_10d_usd+ot10d_do1_usd+ot1_do2_usd+ot2_do3_usd+ot3_do4_usd+ot4_do5_usd+ ot5_do6_usd+ot6_do12_usd+ot12_usd+spis_usd+nepro_usd sum2, mes_usd mes, obsh_usd obsh, substr(a.full_name,1,16) agent
from abc.ve$usr u,p07.form6 f,abc.agent a
WHERE u.cd_u=f.cd_u AND u.cd_a=a.cd_a
  AND do_10d_usd+ot10d_do1_usd+ot1_do2_usd+ot2_do3_usd+ot3_do4_usd+ot4_do5_usd+ ot5_do6_usd+ot6_usd+nepro_usd+spis_usd>0
union all
select 0, '!3. По текущему курсу',' ',
ROUND(sum(do_10d_rur)*abc.rat(2,sysdate,1,1)),
round(sum(ot10d_do1_rur)*abc.rat(2,sysdate,1,1)),
round(sum(ot1_do2_rur)*abc.rat(2,sysdate,1,1)),
round(sum(ot2_do3_rur)*abc.rat(2,sysdate,1,1)),
round(sum(ot3_do4_rur)*abc.rat(2,sysdate,1,1)),
round(sum(ot4_do5_rur)*abc.rat(2,sysdate,1,1)),
round(sum(ot5_do6_rur)*abc.rat(2,sysdate,1,1)),
round(sum(ot6_rur)*abc.rat(2,sysdate,1,1)),
round(sum(ot6_do12_rur)*abc.rat(2,sysdate,1,1)),
round(sum(ot12_rur)*abc.rat(2,sysdate,1,1)),
round(sum(do_10d_rur)*abc.rat(2,sysdate,1,1))+round(sum(ot10d_do1_rur)*abc.rat(2,sysdate,1,1))
+round(sum(ot1_do2_rur)*abc.rat(2,sysdate,1,1))+round(sum(ot2_do3_rur)*abc.rat(2,sysdate,1,1))
+round(sum(ot3_do4_rur)*abc.rat(2,sysdate,1,1))+round(sum(ot4_do5_rur)*abc.rat(2,sysdate,1,1))
+round(sum(ot5_do6_rur)*abc.rat(2,sysdate,1,1))+round(sum(ot6_rur)*abc.rat(2,sysdate,1,1)),
round(sum(nepro_rur)*abc.rat(2,sysdate,1,1)),round(sum(spis_rur)*abc.rat(2,sysdate,1,1)),
round(sum(do_10d_rur)*abc.rat(2,sysdate,1,1))+round(sum(ot10d_do1_rur)*abc.rat(2,sysdate,1,1))
+round(sum(ot1_do2_rur)*abc.rat(2,sysdate,1,1))+round(sum(ot2_do3_rur)*abc.rat(2,sysdate,1,1))
+round(sum(ot3_do4_rur)*abc.rat(2,sysdate,1,1))+round(sum(ot4_do5_rur)*abc.rat(2,sysdate,1,1))
+round(sum(ot5_do6_rur)*abc.rat(2,sysdate,1,1))+round(sum(ot6_do12_rur)*abc.rat(2,sysdate,1,1))
+round(sum(ot12_rur)*abc.rat(2,sysdate,1,1))+round(sum(spis_usd)*abc.rat(2,sysdate,1,1))+round(sum(nepro_rur)*abc.rat(2,sysdate,1,1)), 0,0,' '
FROM p07.form6
union all
SELECT 0,'!2. В рублях', ' ',
SUM(do_10d_rur), SUM(ot10d_do1_rur), SUM(ot1_do2_rur), SUM(ot2_do3_rur), SUM(ot3_do4_rur), SUM(ot4_do5_rur), SUM(ot5_do6_rur),SUM(ot6_rur), SUM(ot6_do12_rur), SUM(ot12_rur),
SUM(do_10d_rur)+SUM(ot10d_do1_rur)+SUM(ot1_do2_rur)+SUM(ot2_do3_rur)+SUM(ot3_do4_rur)+SUM(ot4_do5_rur)+ SUM(ot5_do6_rur)+SUM(ot6_rur), SUM(nepro_rur),SUM(spis_rur), SUM(do_10d_rur)+SUM(ot10d_do1_rur)+SUM(ot1_do2_rur)+SUM(ot2_do3_rur)+
SUM(ot3_do4_rur)+SUM(ot4_do5_rur)+SUM(ot5_do6_rur)+SUM(ot6_do12_rur)+SUM(ot12_rur)+sum(spis_rur)+SUM(nepro_rur), 0, 0, ' '
FROM p07.form6
union all
SELECT 0, '!1. По всем клиентам', ' ',
SUM(do_10d_usd),SUM(ot10d_do1_usd),SUM(ot1_do2_usd),SUM(ot2_do3_usd),SUM(ot3_do4_usd),
SUM(ot4_do5_usd),SUM(ot5_do6_usd),SUM(ot6_usd),SUM(ot6_do12_usd), SUM(ot12_usd),
SUM(do_10d_usd)+SUM(ot10d_do1_usd)+SUM(ot1_do2_usd)+SUM(ot2_do3_usd)+
SUM(ot3_do4_usd)+SUM(ot4_do5_usd)+SUM(ot5_do6_usd)+SUM(ot6_usd),
SUM(nepro_usd),SUM(spis_usd),SUM(do_10d_usd)+SUM(ot10d_do1_usd)+SUM(ot1_do2_usd)+
SUM(ot2_do3_usd)+SUM(ot3_do4_usd)+SUM(ot4_do5_usd)+SUM(ot5_do6_usd)+SUM(ot6_do12_usd)+
SUM(ot12_usd)+sum(spis_usd)+SUM(nepro_usd), 0, 0, ' '
FROM p07.form6);


CREATE OR REPLACE TRIGGER pc_doc_bi
AFTER INSERT
ON pc_doc
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
declare
  CDC abc.doc.cd_c%TYPE;
Begin
  select CD_C into CDC from ABC.DOC where CD_A=:NEW.CD_A and NUM=:NEW.NUM;
/*  update PC_LST L set L.AMN_DOC=(select AMN1
                                 from ABC.LST
                                 where CD_C=CDC);*/
  insert into PC_LST(CD_A,NUM,CD_M,AMN_DOC) select :NEW.CD_A, :NEW.NUM, CD_M, AMN1 from ABC.LST where CD_C=CDC;
End;
/
SHOW ERRORS;



CREATE OR REPLACE TRIGGER pc_doc_bu_status
BEFORE UPDATE
ON pc_doc
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
declare
  CDC abc.doc.cd_c%TYPE;
Begin
  IF UPDATING('STATUS') and :NEW.STATUS=0 THEN
    select CD_C into CDC from ABC.DOC where CD_A=:NEW.CD_A and NUM=:NEW.NUM;
--    update PC_LST L set L.AMN_DOC=(select AMN1 from ABC.LST where CD_C=CDC and CD_M=L.CD_M) where l.cd_a=:NEW.CD_A and l.num=:NEW.NUM;
--    insert into PC_LST(CD_A,NUM,CD_M,AMN_DOC)
--       select :NEW.CD_A, :NEW.NUM, CD_M, AMN1
--       from ABC.LST
--       where CD_C=CDC and CD_M not in (select CD_M from PC_LST where CD_A=:NEW.CD_A and NUM=:NEW.NUM);
  END IF;
  IF UPDATING('CS') THEN
    IF :NEW.CS=1 THEN
      update PC_LST L set L.CS=:NEW.CS where l.cd_a=:NEW.CD_A and l.num=:NEW.NUM and l.amn_doc=l.amn_pak-l.amn_del;
    ELSE
      update PC_LST L set L.CS=:NEW.CS where l.cd_a=:NEW.CD_A and l.num=:NEW.NUM;
    END IF;
  END IF;
End;
/
SHOW ERRORS;



ALTER TABLE PC_DOC ADD (
  CONSTRAINT PC_DOC_PK
 PRIMARY KEY
 (CD_A, NUM));

ALTER TABLE FORM6 ADD (
  CONSTRAINT FK_FORM6_CDU 
 FOREIGN KEY (CD_U) 
 REFERENCES ABC.USR (CD_U)
    ON DELETE CASCADE);

ALTER TABLE PC_LST ADD (
  CONSTRAINT PC_LST_FK 
 FOREIGN KEY (CD_A, NUM) 
 REFERENCES PC_DOC (CD_A,NUM)
    ON DELETE CASCADE DISABLE);

GRANT EXECUTE ON  CALC_MONTH_DEALS TO ABC;

GRANT SELECT ON  MONTH_DEALS_RES TO ABC_OPER;

GRANT SELECT ON  V$FORM6_USD TO ABC_OPER;

GRANT EXECUTE ON  CALC_MONTH_DEALS TO ABC_REPORT;

GRANT EXECUTE ON  DOC_UTL TO ABC_REPORT;

GRANT DELETE, INSERT, SELECT, UPDATE ON  FORM6 TO ABC_REPORT;

GRANT SELECT ON  V$FORM6_USD TO ABC_REPORT;

GRANT EXECUTE ON  FORMA6 TO ALENA;

GRANT SELECT ON  V$FORM6_USD TO ALENA;

GRANT EXECUTE ON  FORMA6 TO ALEX;

GRANT SELECT ON  V$FORM6_USD TO ALEX;

