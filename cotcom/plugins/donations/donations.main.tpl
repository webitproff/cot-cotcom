<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.plugins_dir}/donations/tpl/donations.header.tpl"}
<!-- BEGIN: DONATIONS_BODY -->
		<div>
			{PHP.L.donations_donation_message}
			<br />
			<br />
			<!-- BEGIN: GUEST -->
			<span style="color:#CC1212;">{PHP.L.donations_donation_message_guest}</span>
			<!-- END: GUEST -->
			<!-- BEGIN: MEMBER -->
			<span style="color:#CC1212;">{PHP.L.donations_donation_message_member}</span>
			<!-- END: MEMBER -->
			<div>{DONATIONS_BUTTON}</div>
			<br /><br />
			<p>
			{PHP.L.donations_donation_message_ikassa}<br />
			{PHP|cot_get_easypay('donation')}
			</p>
			<hr />
			{PHP.L.donations_donation_message_webmoney}
			<p>
				<a href="http://www.megastock.ru/" target="_blank"><img src="thms/cotcom/img/acc_blue_on_white_ru.png" alt="www.megastock.ru" border="0"></a>
				<a href="https://passport.webmoney.ru/asp/certview.asp?wmid=209172694276" target="_blank"><img src="thms/cotcom/img/v_blue_on_white_ru.png" alt="Здесь находится аттестат нашего WM идентификатора 209172694276 " border="0" /></a>
			</p>
			<br />
		</div>
		<hr>
		<table width="100%">
			<tr>
				<td style="padding-left:20px;">
					<!-- BEGIN: RECENT -->
					<table class="cells" style="width:225px;">
						<tr>
							<td class="coltop" colspan="3">
								<h4>{PHP.L.donations_recent_donations}</h4>
							</td>
						</tr>
					<!-- BEGIN: LOOP -->
						<tr>
							<td>{DONATIONS_RECENT_DATE}</td>
							<td>{DONATIONS_RECENT_USER}</td>
							<td>{DONATIONS_RECENT_AMOUNT}</td>
						</tr>
					<!-- END: LOOP -->
					</table>
					<!-- END: RECENT -->
				</td>
				<td style="padding-left:20px;">
					<!-- BEGIN: TOP_DONATION -->
					<table class="cells" style="width:225px;">
						<tr>
							<td class="coltop" colspan="3">
								<h4>{PHP.L.donations_top_donations}</h4>
							</td>
						</tr>
					<!-- BEGIN: LOOP -->
						<tr>
							<td>{DONATIONS_TOP_DATE}</td>
							<td>{DONATIONS_TOP_USER}</td>
							<td>{DONATIONS_TOP_AMOUNT}</td>
						</tr>
					<!-- END: LOOP -->
					</table>
					<!-- END: TOP_DONATION -->
				</td>
				<td style="padding-left:20px;">
					<!-- BEGIN: TOP_TOTAL -->
					<table class="cells" style="width:225px;">
						<tr>
							<td class="coltop" colspan="2">
								<h4>{PHP.L.donations_top_total_donations}</h4>
							</td>
						</tr>
					<!-- BEGIN: LOOP -->
						<tr>
							<td>{DONATIONS_TOP_USER}</td>
							<td>{DONATIONS_TOP_AMOUNT}</td>
						</tr>
					<!-- END: LOOP -->
					</table>
					<!-- END: TOP_TOTAL -->
				</td>
			</tr>
			<tr>
				<td class="coltop centerall" colspan="3">
					<h4>{PHP.L.donations_all_donators}</h4>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					{DONATIONS_ALL_DONATORS}
				</td>
			</tr>
		</table>
<!-- END: DONATIONS_BODY -->
{FILE "{PHP.cfg.plugins_dir}/donations/tpl/donations.footer.tpl"}
<!-- END: MAIN -->
