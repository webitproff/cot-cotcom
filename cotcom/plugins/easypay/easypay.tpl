<!-- BEGIN: MAIN -->
<div class="col100 top bottom">

	<h2>{PHP.L.easypay_buy_title} "{EASYPAY_FORM_NAME}"</h2>

	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form action="{EASYPAY_FORM_ACTION}" method="post">
		<table class="cells">
			<tr>
				<td width="220">{PHP.L.easypay_cost}:</td>
				<td>{EASYPAY_FORM_COST} {PHP.cfg.payments.valuta}</td>
			</tr>
			<!-- IF {PHP.usr.id} == 0 -->
			<tr>
				<td width="220">{PHP.L.easypay_email}:</td>
				<td>{EASYPAY_FORM_EMAIL}</td>
			</tr>
			<!-- ENDIF -->
			<tr>
				<td></td>
				<td><button class="btn btn-success">{PHP.L.easypay_buy}</button></td>
			</tr>
		</table>
	</form>
</div>
<!-- END: MAIN -->
