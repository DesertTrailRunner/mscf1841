Write-Host "Copy static site to firebase-deploy..."
remove-item -path ~/web/mscf/firebase-deploy/dist -recurse -force -erroraction ignore
copy-item -path dist -destination ~/web/mscf/firebase-deploy -recurse
copy-item -path redirects/membership -destination ~/web/mscf/firebase-deploy/dist -recurse
Write-Host "Deploy to Firebase..."
cd ../firebase-deploy
firebase deploy
cd ../source
Write-Host "...Site has been deployed."