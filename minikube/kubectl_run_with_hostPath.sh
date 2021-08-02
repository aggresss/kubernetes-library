kubectl run myubuntu --image aggresss/elementary:xenial --rm -ti --restart=Never --overrides='
{
  "spec": {
      "containers": [
          {
              "stdin": true,
              "tty": true,
              "args": [ "bash" ],
              "name": "myubuntu",
              "image": "aggresss/elementary:xenial",
              "volumeMounts": [
                  {
                      "mountPath": "/home/store",
                      "name": "store"
                  }
              ]
          }
      ],
      "volumes": [
          {
              "name": "store",
              "hostPath": {
                "path": "/etc"
              }
          }
      ]
  }
}
'
