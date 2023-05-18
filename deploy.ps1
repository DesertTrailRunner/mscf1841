Write-Host "Deploy to Firebase..."
remove-item -path ~/web/mscf/firebase-deploy/dist -recurse -force -erroraction ignore
copy-item -path dist -destination ~/web/mscf/firebase-deploy -recurse
cd ../firebase-deploy
firebase deploy