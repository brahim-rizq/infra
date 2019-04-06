 #!/bin/bash -ex

mongo <<EOF
  rs.initiate({'_id':'cluster',members:[{'_id':0,'host':'mongodb:27017'}]});
EOF