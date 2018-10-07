:: Not sure why this leaks to the build flags and break the build.
:: See https://github.com/conda-forge/r-maps-feedstock/issues/1
set TARGET_ARCH=

"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
