{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "ed7ab677-dd95-4bde-8815-9578e59e5656",
          "type": "basic.output",
          "data": {
            "name": "LEDs",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "102"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "99"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "98"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "97"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "96"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1120,
            "y": 104
          }
        },
        {
          "id": "78ca0f78-be1f-4448-8c8c-a8aa008f6404",
          "type": "basic.input",
          "data": {
            "name": "Pulsador",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 520,
            "y": 192
          }
        },
        {
          "id": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] do = 8'h00;\n\nalways @(posedge clk)\n    do <= di;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "di",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "do",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 800,
            "y": 200
          },
          "size": {
            "width": 208,
            "height": 96
          }
        },
        {
          "id": "1f0781ae-e5a6-412d-a605-9e50c0738cb7",
          "type": "0c78123922cfa7c522dfc3d29e3724f56f946c5c",
          "position": {
            "x": 520,
            "y": 288
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
            "port": "do"
          },
          "target": {
            "block": "ed7ab677-dd95-4bde-8815-9578e59e5656",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "78ca0f78-be1f-4448-8c8c-a8aa008f6404",
            "port": "out"
          },
          "target": {
            "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "1f0781ae-e5a6-412d-a605-9e50c0738cb7",
            "port": "32038fb9-c309-483d-a68c-de6fd7ab6a0f"
          },
          "target": {
            "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
            "port": "di"
          },
          "size": 8
        }
      ]
    },
    "state": {
      "pan": {
        "x": -406,
        "y": -16.5
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "0c78123922cfa7c522dfc3d29e3724f56f946c5c": {
      "package": {
        "name": "AA_8bits",
        "version": "0.0.1",
        "description": "Valor constante 0xAA para bus de 8 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2274.75%22%20height=%2240.155%22%20viewBox=%220%200%2070.078519%2037.645438%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2212.573%22%20y=%2222.271%22%20font-weight=%22400%22%20font-size=%2230.55%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2212.573%22%20y=%2222.271%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3EAA%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-1.463%22%20y=%2237.462%22%20font-weight=%22400%22%20font-size=%2212.972%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.463%22%20y=%2237.462%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E10101010%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "32038fb9-c309-483d-a68c-de6fd7ab6a0f",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 960,
                "y": 248
              }
            },
            {
              "id": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
              "type": "basic.code",
              "data": {
                "code": "assign k = 8'hAA;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 672,
                "y": 248
              },
              "size": {
                "width": 208,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "32038fb9-c309-483d-a68c-de6fd7ab6a0f",
                "port": "in"
              },
              "size": 8
            }
          ]
        },
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    }
  }
}