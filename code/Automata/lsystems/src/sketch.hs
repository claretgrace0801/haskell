import Lsystem
import System.Random

render' :: String -> System -> IO ()
render' = renderSystem (mkStdGen 42) (400, 400)

-- -- This example is taken from ABOP pp. 25
-- n=5 d=25.7
-- F -> F[+F]F[-F]F

b1 =
  System
    { systemBasis = [NodeDraw [] 1], -- F
      systemRules =
        [ -- F[+F]F[-F]F
          DeterministicRule
            { ruleContext = ignoreContext,
              ruleCondition = unconditional,
              ruleMatch = matchF,
              ruleReplacement =
                constantReplacement
                  [ NodeDraw [] 1, ------------------ F
                    NodeBranch
                      [ [ ------------------ [+F]
                          NodeRotate [] (-25.7) 0 0,
                          NodeDraw [] 1
                        ]
                      ],
                    NodeDraw [] 1, ------------------ F
                    NodeBranch
                      [ [ ------------------ [-F]
                          NodeRotate [] 25.7 0 0,
                          NodeDraw [] 1
                        ]
                      ],
                    NodeDraw [] 1 ------------------ F
                  ]
            }
        ],
      systemSteps = 5
    }

main :: IO ()
main = do
  render' "b1.svg" b1