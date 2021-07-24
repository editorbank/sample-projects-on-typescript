@echo Build ...

(
  pushd sysGroup
  call npm install
  call npm run build
  popd
) && (
  pushd sysObjects
  call npm install
  call npm run build
  popd
) && (
  call npm install
  call npm run build
)
