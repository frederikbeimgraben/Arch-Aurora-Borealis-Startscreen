CPD=cp -r
SDD=/usr/share/sddm/themes/
LAF=~/.local/share/plasma/look-and-feel/
SDNM=arch-aurora-sddm
SSTM=arch.aurora
AAIM=arch.aurora/contents/splash/images
SD=sudo
CPSDDM="SDDM Theme"
CPSST="Splash Screen"
ECHE=echo -e
C0=\x1B[0m
C31=\x1B[31m
C32=\x1B[32m
C33=\x1B[33m
C1=\x1B[1m
PS=bash
MSF=setmus.sh
SSF=settheme.sh
CCF=compress.sh
XCONF=/usr/share/sddm/scripts/Xsetup
SDDC=/etc/sddm.conf

std:
	@$(ECHE) "$(C32)Nothing to do!$(C0)"
install:
	@$(SD) $(PS) config.sh.pre
	@echo "" > $(SDNM)/music
	@rm -f $(SDNM)/background.png
	@rm -f $(AAIM)/background.png
	@cp background.png $(AAIM)/ 
	@cp background.png $(SDNM)/
	@$(SD) $(PS)  $(MSF)
	@$(ECHE) "$(C33)COPYING $(CPSDDM)$(C0)"
	$(SD) $(CPD) $(SDNM) $(SDD)
	@$(ECHE) "$(C32)COPIED $(CPSDDM)$(C0)"
	
	cd $(SDD)/$(SDNM)
	cat $(XCONF) > xconf.raw
	$(SD) sed -i '/screen -dmS ms.*/d' xconf.raw
	$(SD) sed -i '/cd.*/d' xconf.raw
	$(SD) echo "cd $(SDD)$(SDNM)" >> xconf.raw
	$(SD) echo "screen -dmS ms $(SDD)$(SDNM)/music" >> xconf.raw
	$(SD) cp xconf.raw $(XCONF)
	echo "" > xconf.raw
	@$(SD) $(PS) $(SSF) $(SDNM)
	rm -f $(SDNM)/background.png
	rm -f $(AAIM)/background.png
	@$(ECHE) "$(C32)$(C1)FINISHED!$(C0)"
	@$(SD) mkdir $(SDD)$(SDNM)/src > /dev/null || true
	@$(SD) $(CPD) ./ $(SDD)/$(SDNM)/src/
	@$(ECHE) "$(C32)Use the command 'reconaas' to reconfigure$(C0)"
	@$(SD) chmod +x reconaas
	@$(SD) cp  reconaas /bin/reconaas
zipup:
	cd ..
	$(PS) $(CCF)
check:
	@$(ECHE) "$(C32)Nothing to do!$(C0)"
