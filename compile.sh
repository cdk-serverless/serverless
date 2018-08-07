echo ""
echo "Compiling..."
echo ""
# time curl -H 'Content-Type: application/json' 'http://hydra-services.dit-cfi-pdx.cdk.com/hydra-style/route/compile' -d @payload.json > compiled.css
time curl -H 'Content-Type: application/json' 'http://localhost:9889/route/compile' -d @payload.json > compiled.css
echo ""
echo "Compiled into ./compiled.css"
echo ""
