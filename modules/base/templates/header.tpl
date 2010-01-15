<div id="owa_header">
	<table width="100%" cellpadding="0" cellspacing="0">
		<TR>
			<TD class="owa_logo"><img src="<?php echo $this->makeImageLink('base/i/owa_logo_150w.jpg'); ?>" alt="Open Web Analytics"></TD>
			<TD>
				<div style="float:right;">
				<div class="owa_navigation">
					<UL>
						<LI><a href="<?php echo $this->makeLink(array('do' => 'base.reportDashboard'));?>">Reports</a></LI>
						<LI><a href="<?php echo $this->makeLink(array('do' => 'base.optionsGeneral'));?>">Settings</a></LI>
						<LI><a href="http://wiki.openwebanalytics.com">Help</a></LI>
						<LI><a href="http://trac.openwebanalytics.com">Report a Bug</a></LI>
						<?php if ($this->config['is_embedded'] == false):?>
						<LI>
							<?php if (owa_coreAPI::isCurrentUserAuthenticated()):?>
							<a href="<?php echo $this->makeLink(array('do' => 'base.logout'), false);?>">Logout</a>
							<?php else:?>
							<a href="<?php echo $this->makeLink(array('do' => 'base.loginForm'), false);?>">Login</a>
							<?php endif;?>
						</LI>
						<?php endif;?>
					</UL>
				</div>
				</div>
				<div class="post-nav"></div>
				<?php if (!empty($service_msg)): ?>
				<div class="owa_headerServiceMsg"><?php echo $service_msg; ?></div>
				<?php endif;?>
	
			</TD>
		</TR>
	</table>
	
	<?php $this->headerActions(); ?>
	
</div>