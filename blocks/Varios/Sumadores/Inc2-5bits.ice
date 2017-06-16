{
  "version": "1.1",
  "package": {
    "name": "Sum-2-5bits",
    "version": "0.0.1",
    "description": "Sumar 2 al bus de 5 bits",
    "author": "Juan Gonzalez-Gomez (Obijuan)",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22100.466%22%20height=%2255.611%22%20viewBox=%220%200%2094.187617%2052.135877%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-7.443%22%20y=%2252.136%22%20font-weight=%22400%22%20font-size=%2270.246%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-7.443%22%20y=%2252.136%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%3E+2%3C/tspan%3E%3C/text%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "93c0a547-1c3e-4239-9c6d-60b084e45526",
          "type": "basic.input",
          "data": {
            "name": "i",
            "range": "[4:0]",
            "pins": [
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 304,
            "y": 312
          }
        },
        {
          "id": "c2f82d94-82aa-476f-b40f-f87a1023cc5e",
          "type": "basic.output",
          "data": {
            "name": "o",
            "range": "[4:0]",
            "pins": [
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 872,
            "y": 312
          }
        },
        {
          "id": "13977eee-1f76-43f5-91a2-68d11428a18c",
          "type": "basic.code",
          "data": {
            "code": "//-- Incrementar la entrada\n//-- en dos unidades\nassign o = i + 2;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "i",
                  "range": "[4:0]",
                  "size": 5
                }
              ],
              "out": [
                {
                  "name": "o",
                  "range": "[4:0]",
                  "size": 5
                }
              ]
            }
          },
          "position": {
            "x": 480,
            "y": 296
          },
          "size": {
            "width": 304,
            "height": 96
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "93c0a547-1c3e-4239-9c6d-60b084e45526",
            "port": "out"
          },
          "target": {
            "block": "13977eee-1f76-43f5-91a2-68d11428a18c",
            "port": "i"
          },
          "size": 5
        },
        {
          "source": {
            "block": "13977eee-1f76-43f5-91a2-68d11428a18c",
            "port": "o"
          },
          "target": {
            "block": "c2f82d94-82aa-476f-b40f-f87a1023cc5e",
            "port": "in"
          },
          "size": 5
        }
      ]
    },
    "state": {
      "pan": {
        "x": -186,
        "y": -80.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}