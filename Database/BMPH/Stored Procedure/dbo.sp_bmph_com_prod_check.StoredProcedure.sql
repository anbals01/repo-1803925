USE [BMPH]਍䜀伀ഀഀ
/****** Object:  StoredProcedure [dbo].[sp_bmph_com_prod_check]    Script Date: 3/24/2022 10:23:10 PM ******/਍匀䔀吀 䄀一匀䤀开一唀䰀䰀匀 伀一ഀഀ
GO਍匀䔀吀 儀唀伀吀䔀䐀开䤀䐀䔀一吀䤀䘀䤀䔀刀 伀一ഀഀ
GO਍ഀഀ
਍ഀഀ
਍ഀഀ
CREATE Procedure [dbo].[sp_bmph_com_prod_check]਍愀猀ഀഀ
begin਍ऀऀഀഀ
declare @eMail varchar(max),@icount int	=0਍ഀഀ
/*select @icount=count(p.dbid)਍ऀऀ昀爀漀洀 䈀䴀倀䠀⸀搀戀漀⸀戀洀瀀栀开挀漀洀开瀀爀漀搀ऀ瀀ഀഀ
		join bmph_app_sales s on s.prod_id_dbid=p.dbid and (getdate()-s.trans_date) < 1005 ਍ऀऀ樀漀椀渀 戀洀瀀栀开愀瀀瀀开琀愀爀最攀琀开搀攀琀愀椀氀开琀攀洀瀀 琀 漀渀 琀⸀洀瀀最开椀搀开搀戀椀搀㴀瀀⸀洀瀀最开椀搀开搀戀椀搀ഀഀ
		join bmph_app_target ta on ta.dbid=t.target_dbid and ta.state=3 ਍ऀऀ愀渀搀 琀愀⸀礀攀愀爀㴀⠀猀攀氀攀挀琀 洀愀砀⠀礀攀愀爀⤀ 昀爀漀洀 戀洀瀀栀开愀瀀瀀开琀愀爀最攀琀 眀栀攀爀攀 猀琀愀琀攀㴀㌀⤀ഀഀ
		where (isnull(p.prod_form,'')='' ) or (isnull(prod_strength,'')='') or (isnull(prod_packed,'')='')	*/	਍ഀഀ
਍ഀഀ
਍ऀ猀攀氀攀挀琀 䀀椀挀漀甀渀琀㴀挀漀甀渀琀⠀戀⸀瀀爀漀搀开椀搀⤀ഀഀ
	from 	(	select distinct prod_id,prod_ename਍ऀऀऀऀ昀爀漀洀 ⠀  猀攀氀攀挀琀 ⨀ഀഀ
						from BMPH.dbo.bmph_com_prod p਍ऀऀऀऀऀऀऀ樀漀椀渀 ⠀猀攀氀攀挀琀 搀椀猀琀椀渀挀琀 瀀爀漀搀开椀搀开搀戀椀搀 昀爀漀洀 䈀䴀倀䠀⸀搀戀漀⸀戀洀瀀栀开愀瀀瀀开攀砀瀀昀椀稀攀爀开猀愀氀攀猀 眀栀攀爀攀 琀爀愀渀猀开礀攀愀爀 㸀㴀 ⠀猀攀氀攀挀琀 洀愀砀⠀琀爀愀渀猀开礀攀愀爀⤀ 昀爀漀洀 䈀䴀倀䠀⸀搀戀漀⸀戀洀瀀栀开愀瀀瀀开攀砀瀀昀椀稀攀爀开猀愀氀攀猀⤀ⴀ ㈀⤀ 猀 漀渀 猀⸀瀀爀漀搀开椀搀开搀戀椀搀㴀瀀⸀搀戀椀搀ഀഀ
						where (isnull(p.prod_form,'')=''  or isnull(prod_strength,'')='' or isnull(prod_packed,'')='') and division='01' and prod_id like 'F%'਍ഀഀ
						union all਍ഀഀ
						select *  ਍ऀऀऀऀऀऀ昀爀漀洀 䈀䴀倀䠀⸀搀戀漀⸀戀洀瀀栀开挀漀洀开瀀爀漀搀 瀀ഀഀ
							join (select distinct prod_id_dbid from BMPH.dbo.bmph_app_expfizer_budget_detail where  year = (select max(year) from BMPH.dbo.bmph_app_expfizer_budget_detail)) ta on ta.prod_id_dbid=p.dbid਍ऀऀऀऀऀऀ眀栀攀爀攀 ⠀椀猀渀甀氀氀⠀瀀⸀瀀爀漀搀开昀漀爀洀Ⰰ✀✀⤀㴀✀✀  漀爀 椀猀渀甀氀氀⠀瀀爀漀搀开猀琀爀攀渀最琀栀Ⰰ✀✀⤀㴀✀✀ 漀爀 椀猀渀甀氀氀⠀瀀爀漀搀开瀀愀挀欀攀搀Ⰰ✀✀⤀㴀✀✀⤀ 愀渀搀 搀椀瘀椀猀椀漀渀㴀✀　㄀✀ 愀渀搀 瀀爀漀搀开椀搀 氀椀欀攀 ✀䘀─✀⤀ 愀⤀ 戀ഀഀ
਍ഀഀ
਍ऀऀഀഀ
print(convert(varchar,@icount))਍椀昀 䀀椀挀漀甀渀琀 㸀 　ഀഀ
begin਍ऀ搀攀挀氀愀爀攀 洀愀椀氀䌀甀爀猀漀爀 挀甀爀猀漀爀 昀漀爀ऀऀഀഀ
	select mail_address from DBADM.dbo.dba_dbm_user ਍ऀऀ眀栀攀爀攀 最爀漀甀瀀开椀搀㴀✀瀀爀漀搀✀ 漀爀搀攀爀 戀礀 椀琀攀洀开椀搀ഀഀ
	open mailCursor;਍ഀഀ
	FETCH NEXT FROM mailCursor into @eMail਍ഀഀ
	while @@FETCH_STATUS=0਍ऀ戀攀最椀渀ऀऀഀഀ
਍ऀ䔀堀䔀䌀 洀猀搀戀⸀搀戀漀⸀猀瀀开猀攀渀搀开搀戀洀愀椀氀ഀഀ
		   --@profile_name = 'Adventure Works Administrator',਍ऀऀऀ䀀爀攀挀椀瀀椀攀渀琀猀 㴀 䀀攀䴀愀椀氀Ⰰഀഀ
			/*@query = 'select p.prod_id,p.prod_ename,p.prod_form਍ऀऀऀ昀爀漀洀 䈀䴀倀䠀⸀搀戀漀⸀戀洀瀀栀开挀漀洀开瀀爀漀搀ऀ瀀ഀഀ
			join bmph_app_sales s on s.prod_id_dbid=p.dbid and (getdate()-s.trans_date) < 1005 ਍ऀऀऀ樀漀椀渀 戀洀瀀栀开愀瀀瀀开琀愀爀最攀琀开搀攀琀愀椀氀开琀攀洀瀀 琀 漀渀 琀⸀洀瀀最开椀搀开搀戀椀搀㴀瀀⸀洀瀀最开椀搀开搀戀椀搀ഀഀ
			join bmph_app_target ta on ta.dbid=t.target_dbid and ta.state=3 ਍ऀऀऀ愀渀搀 琀愀⸀礀攀愀爀㴀⠀猀攀氀攀挀琀 洀愀砀⠀礀攀愀爀⤀ 昀爀漀洀 戀洀瀀栀开愀瀀瀀开琀愀爀最攀琀 眀栀攀爀攀 猀琀愀琀攀㴀㌀⤀ഀഀ
			where (isnull(p.prod_form,'''')='''' ) or (isnull(prod_strength,'''')='''')਍ऀऀऀ漀爀 ⠀椀猀渀甀氀氀⠀瀀爀漀搀开瀀愀挀欀攀搀Ⰰ✀✀✀✀⤀㴀✀✀✀✀ ⤀ഀഀ
			order by p.prod_id',*/਍ऀऀऀ䀀焀甀攀爀礀 㴀 一✀ऀ猀攀氀攀挀琀 搀椀猀琀椀渀挀琀 瀀爀漀搀开椀搀Ⰰ瀀爀漀搀开攀渀愀洀攀ഀഀ
						from (  select *਍ऀऀऀऀऀऀऀऀ昀爀漀洀 䈀䴀倀䠀⸀搀戀漀⸀戀洀瀀栀开挀漀洀开瀀爀漀搀 瀀ഀഀ
									 join (select distinct prod_id_dbid from BMPH.dbo.bmph_app_expfizer_sales where trans_year >= (select max(trans_year) from BMPH.dbo.bmph_app_expfizer_sales)- 2) s on s.prod_id_dbid=p.dbid਍ऀऀऀऀऀऀऀऀ眀栀攀爀攀 ⠀椀猀渀甀氀氀⠀瀀⸀瀀爀漀搀开昀漀爀洀Ⰰ✀✀✀✀⤀㴀✀✀✀✀  漀爀 椀猀渀甀氀氀⠀瀀爀漀搀开猀琀爀攀渀最琀栀Ⰰ✀✀✀✀⤀㴀✀✀✀✀ 漀爀 椀猀渀甀氀氀⠀瀀爀漀搀开瀀愀挀欀攀搀Ⰰ✀✀✀✀⤀㴀✀✀✀✀⤀ 愀渀搀 搀椀瘀椀猀椀漀渀㴀✀✀　㄀✀✀ 愀渀搀 瀀爀漀搀开椀搀 氀椀欀攀 ✀✀䘀─✀✀ഀഀ
਍ऀऀऀऀऀऀऀऀ甀渀椀漀渀 愀氀氀ഀഀ
਍ऀऀऀऀऀऀऀऀ猀攀氀攀挀琀 ⨀  ഀഀ
								from BMPH.dbo.bmph_com_prod p਍ऀऀऀऀऀऀऀऀऀ樀漀椀渀 ⠀猀攀氀攀挀琀 搀椀猀琀椀渀挀琀 瀀爀漀搀开椀搀开搀戀椀搀 昀爀漀洀 䈀䴀倀䠀⸀搀戀漀⸀戀洀瀀栀开愀瀀瀀开攀砀瀀昀椀稀攀爀开戀甀搀最攀琀开搀攀琀愀椀氀 眀栀攀爀攀  礀攀愀爀 㴀 ⠀猀攀氀攀挀琀 洀愀砀⠀礀攀愀爀⤀ 昀爀漀洀 䈀䴀倀䠀⸀搀戀漀⸀戀洀瀀栀开愀瀀瀀开攀砀瀀昀椀稀攀爀开戀甀搀最攀琀开搀攀琀愀椀氀⤀⤀ 琀愀 漀渀 琀愀⸀瀀爀漀搀开椀搀开搀戀椀搀㴀瀀⸀搀戀椀搀ഀഀ
								where (isnull(p.prod_form,'''')=''''  or isnull(prod_strength,'''')='''' or isnull(prod_packed,'''')='''') and division=''01'' and prod_id like ''F%'') a',਍ऀऀऀ䀀猀甀戀樀攀挀琀 㴀 ✀吀栀攀 匀琀爀攀渀最琀栀⼀䘀漀爀洀⼀倀愀挀欀攀搀 漀昀 瀀爀漀搀甀挀琀猀 愀爀攀 戀氀愀渀欀✀Ⰰഀഀ
			@attach_query_result_as_file = 1,਍ऀऀऀ䀀焀甀攀爀礀开爀攀猀甀氀琀开栀攀愀搀攀爀 㴀 ㄀Ⰰഀഀ
			@query_no_truncate = 1਍ऀऀऀഀഀ
਍ऀऀऀഀഀ
		/*਍ऀऀ䔀堀䔀䌀 洀猀搀戀⸀搀戀漀⸀猀瀀开猀攀渀搀开搀戀洀愀椀氀ഀഀ
		   --@profile_name = 'Adventure Works Administrators',਍ऀऀऀ䀀爀攀挀椀瀀椀攀渀琀猀 㴀 䀀攀䴀愀椀氀Ⰰഀഀ
			@query = 'select prod_id,prod_ename਍ऀऀ昀爀漀洀 䈀䴀倀䠀⸀搀戀漀⸀戀洀瀀栀开挀漀洀开瀀爀漀搀ऀഀഀ
		where (isnull(prod_form,'''')='''' ) and division=''01'' order by prod_id' ,਍ऀऀऀ䀀猀甀戀樀攀挀琀 㴀 ✀瀀爀漀搀 瀀爀漀搀开昀漀爀洀 椀猀 渀甀氀氀✀Ⰰഀഀ
			@attach_query_result_as_file = 1 ਍ऀऀऀഀഀ
			select * from bmph_com_prod਍ऀऀऀഀഀ
		exec sp_bmph_com_prod_check		਍ऀऀ⨀⼀ऀഀഀ
		FETCH NEXT FROM mailCursor into @eMail਍ऀ攀渀搀ऀऀഀഀ
	close mailCursor਍ऀ搀攀愀氀氀漀挀愀琀攀 洀愀椀氀䌀甀爀猀漀爀ഀഀ
end	਍攀渀搀ऀഀഀ
		਍ഀഀ
਍ഀഀ
਍ഀഀ
਍䜀伀ഀഀ
