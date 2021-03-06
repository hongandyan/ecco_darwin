#include "GCHEM_OPTIONS.h"

C !INTERFACE: ==========================================================
      SUBROUTINE DIC_DIAGNOSTICS_INIT(myThid )

C !DESCRIPTION:
C define diagnostics for dic package
C experiment

C !USES: ===============================================================
      IMPLICIT NONE
#include "SIZE.h"
#include "EEPARAMS.h"

C !INPUT PARAMETERS: ===================================================
C  myThid               :: thread number
      INTEGER myThid
CEOP

#ifdef ALLOW_DIAGNOSTICS

C     !LOCAL VARIABLES:
      INTEGER       diagNum
      CHARACTER*8   diagName
      CHARACTER*16  diagCode
      CHARACTER*16  diagUnits
      CHARACTER*(80) diagTitle

C---+----1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|
C     Define diagnostics Names :

      diagName  = 'DICBIOA '
      diagTitle = 'Biological Productivity (mol/m3/s)'
      diagUnits = 'mol/m3/sec      '
      diagCode  = 'SMRP    MR      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DICCARB '
      diagTitle = 'Carbonate chg-biol prod and remin (mol eq/m3/s)'
      diagUnits = 'mol eq/m3/sec   '
      diagCode  = 'SMRP    MR      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DICTFLX '
      diagTitle = 'Tendency of DIC due to air-sea exch (mol/m3/s)'
      diagUnits = 'mol/m3/sec      '
      diagCode  = 'SM P    L1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DICOFLX '
      diagTitle = 'Tendency of O2 due to air-sea exch (mol/m3/s)'
      diagUnits = 'mol/m3/sec      '
      diagCode  = 'SM P    L1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DICCFLX '
      diagTitle = 'Flux of CO2 - air-sea exch (mol/m2/s)'
      diagUnits = 'mol/m2/sec      '
      diagCode  = 'SM P    L1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DICFGCO2 '
      diagTitle = 'Fugacity of CO2 (atm)'
      diagUnits = 'atm             '
      diagCode  = 'SM P    L1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DICPCO2 '
      diagTitle = 'Partial Pressure of CO2 (atm)'
      diagUnits = 'atm             '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DICPHAV '
      diagTitle = 'pH (dimensionless)'
      diagUnits = 'dimensionless   '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DICSFLX '
      diagTitle = 'DIC flux from sediments (mol/m2/s)'
      diagUnits = 'mol/m2/sec      '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'ALKSFLX '
      diagTitle = 'ALK flux from sediments (mol/m2/s)'
      diagUnits = 'mol/m2/sec      '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'CO3SW   '
      diagTitle = 'CO3 at seafloor (mol/m3)'
      diagUnits = 'mol/m3          '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'CO3SED   '
      diagTitle = 'CO3 in sediment (mol/m3)'
      diagUnits = 'mol/m3          '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'OMEGAC  '
      diagTitle = 'calcite saturation state (dimensionless)'
      diagUnits = 'dimensionless   '
      diagCode  = 'SM P    MR      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DCO2FLX '
      diagTitle = 'delta flux of CO2 - air-sea exch (mol/m2/s)'
      diagUnits = 'mol/m2/s        '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DCO2FLXP'
      diagTitle = 'delta CO2 flux due to piston velocity (mol/m2/s)'
      diagUnits = 'mol/m2/s        '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DCO2FLXT'
      diagTitle = 'delta CO2 flux due to temperature (mol/m2/s)'
      diagUnits = 'mol/m2/s        '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DCO2FLXS'
      diagTitle = 'delta CO2 flux due to salinity (mol/m2/s)'
      diagUnits = 'mol/m2/s        '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DCO2FLXA'
      diagTitle = 'delta CO2 flux due to alkalinity (mol/m2/s)'
      diagUnits = 'mol/m2/s        '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DCO2FLXD'
      diagTitle = 'delta CO2 flux due to DIC (mol/m2/s)'
      diagUnits = 'mol/m2/s        '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'DCO2SF  '
      diagTitle = 'CO2 flux budget scaling factor (dimensionless)'
      diagUnits = 'dimensionless   '
      diagCode  = 'SM P    M1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I       diagName, diagCode, diagUnits, diagTitle, 0, myThid )

C---1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|

#endif /* ALLOW_DIAGNOSTICS */

      RETURN
      END
