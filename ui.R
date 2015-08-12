library(shiny)
library(shinyAce)


shinyUI(bootstrapPage(

    headerPanel("Structural Equation Modeling (SEM)"),

    mainPanel(
        tabsetPanel(

        tabPanel("Main",

            p('Estimation may take a few seconds to minutes depending on the dataset.'),

            h3("Data"),
            p('Input values must be separated by tabs. Copy and paste from Excel/Numbers.'),
            p(HTML("<b><div style='background-color:#FADDF2;border:1px solid black;'>Please make sure that your data includes the header (variable names) in the first row.</div></b>")),

            aceEditor("text", value="Midterm\tFinal\tQuiz\tExam1\tExam2\tExam3\n68\t32\t39\t47\t22\t37\n50\t18\t28\t27\t17\t32\n55\t32\t39\t40\t50\t42\n86\t73\t94\t87\t100\t89\n95\t95\t100\t87\t100\t84\n59\t36\t67\t27\t50\t16\n91\t91\t100\t100\t100\t95\n45\t36\t39\t40\t33\t32\n59\t27\t17\t27\t17\t26\n59\t32\t67\t47\t50\t47\n64\t45\t61\t13\t33\t37\n77\t55\t67\t47\t44\t37\n59\t45\t67\t33\t39\t42\n59\t45\t61\t40\t39\t16\n55\t50\t67\t27\t28\t37\n73\t50\t44\t53\t44\t32\n59\t45\t44\t33\t33\t37\n55\t36\t61\t40\t28\t26\n64\t45\t39\t40\t33\t37\n50\t50\t67\t60\t56\t63\n41\t36\t39\t53\t33\t26\n59\t23\t72\t47\t44\t26\n59\t32\t61\t27\t39\t37\n64\t36\t72\t53\t44\t42\n64\t23\t33\t33\t22\t47\n73\t32\t39\t47\t44\t47\n68\t55\t67\t40\t44\t42\n45\t36\t61\t47\t22\t32\n64\t41\t94\t67\t44\t58\n59\t41\t50\t27\t39\t47\n36\t23\t39\t27\t28\t16\n73\t27\t67\t27\t56\t16\n64\t41\t50\t13\t56\t26\n50\t55\t22\t40\t28\t42\n68\t59\t61\t47\t33\t47\n59\t45\t72\t33\t33\t42\n59\t41\t50\t47\t33\t26\n55\t41\t33\t20\t44\t37\n41\t45\t67\t20\t56\t47\n41\t36\t61\t27\t61\t32\n50\t45\t67\t53\t61\t42\n59\t41\t50\t73\t61\t32\n73\t32\t61\t53\t39\t26\n36\t55\t61\t53\t50\t32\n50\t41\t78\t60\t39\t47\n64\t50\t67\t53\t56\t37\n73\t59\t78\t67\t67\t58\n77\t82\t83\t87\t89\t79\n36\t36\t33\t60\t44\t37\n45\t18\t39\t33\t11\t21\n64\t27\t44\t33\t39\t26\n91\t91\t100\t100\t89\t89\n64\t41\t72\t40\t56\t68\n59\t27\t67\t27\t28\t21\n68\t36\t56\t20\t11\t16\n55\t23\t67\t33\t61\t11\n68\t23\t61\t40\t61\t32\n68\t45\t72\t60\t61\t58\n50\t32\t61\t27\t33\t32\n59\t36\t50\t40\t50\t32\n73\t64\t78\t80\t78\t68\n91\t64\t83\t93\t78\t47\n55\t32\t56\t40\t33\t11\n64\t55\t61\t40\t28\t47\n68\t64\t78\t67\t72\t63\n91\t86\t100\t93\t100\t100\n55\t50\t72\t67\t44\t42\n68\t41\t44\t53\t50\t42\n64\t41\t56\t40\t39\t21\n86\t55\t89\t53\t50\t42\n64\t55\t61\t47\t50\t26\n64\t55\t72\t40\t22\t32\n64\t64\t72\t27\t44\t53\n59\t50\t56\t40\t28\t26\n59\t32\t33\t33\t22\t5\n64\t50\t50\t47\t44\t32\n82\t68\t89\t73\t89\t58\n77\t73\t72\t60\t83\t63\n73\t41\t44\t27\t44\t42\n68\t50\t67\t47\t33\t21\n68\t45\t67\t60\t50\t37\n41\t41\t44\t40\t50\t37\n73\t73\t72\t60\t61\t21\n73\t45\t44\t40\t50\t42\n59\t50\t83\t53\t61\t74\n55\t45\t44\t47\t22\t37\n64\t41\t44\t40\t28\t32\n77\t59\t67\t87\t67\t58\n68\t23\t56\t53\t44\t26\n59\t45\t39\t27\t33\t16\n86\t55\t83\t53\t89\t37\n55\t41\t33\t20\t11\t5\n64\t32\t56\t53\t56\t37\n73\t41\t72\t33\t61\t47\n73\t59\t39\t47\t56\t42\n59\t41\t72\t20\t44\t32\n45\t23\t50\t27\t28\t37\n45\t41\t61\t33\t44\t11\n68\t50\t61\t60\t44\t37\n95\t95\t100\t100\t100\t100\n68\t41\t39\t27\t28\t21\n86\t86\t100\t100\t100\t89\n77\t23\t50\t20\t22\t26\n45\t23\t22\t27\t44\t26\n68\t32\t33\t20\t17\t26\n64\t55\t67\t33\t72\t37\n55\t41\t78\t27\t56\t37\n82\t55\t72\t40\t44\t21\n45\t32\t50\t20\t28\t32\n59\t41\t72\t40\t44\t37\n68\t36\t67\t40\t28\t42\n55\t32\t67\t40\t11\t37\n68\t64\t72\t33\t11\t26\n50\t36\t50\t33\t22\t21\n50\t23\t44\t20\t17\t16\n64\t36\t50\t13\t44\t32\n59\t41\t50\t33\t22\t26\n64\t32\t61\t47\t33\t26\n68\t64\t72\t80\t61\t63\n59\t41\t50\t13\t39\t26\n50\t36\t72\t53\t44\t37\n59\t50\t67\t47\t33\t32\n68\t45\t56\t53\t61\t42\n73\t36\t22\t40\t22\t26\n73\t45\t39\t47\t39\t32\n64\t36\t67\t53\t39\t32\n45\t36\t67\t33\t61\t47\n64\t32\t78\t0\t28\t26\n68\t18\t44\t40\t39\t11\n64\t32\t39\t33\t17\t37\n64\t55\t61\t40\t56\t26\n55\t45\t44\t20\t28\t37\n55\t27\t61\t13\t17\t26\n50\t23\t61\t47\t39\t21\n55\t36\t33\t13\t28\t16\n64\t36\t44\t33\t28\t11\n64\t27\t72\t40\t22\t21\n77\t59\t56\t47\t72\t53\n64\t18\t28\t13\t22\t21\n64\t45\t67\t33\t56\t26\n68\t50\t78\t40\t44\t53\n59\t50\t67\t40\t72\t42\n55\t55\t56\t40\t33\t32\n64\t9\t39\t13\t33\t26\n55\t36\t61\t33\t50\t26\n55\t27\t56\t33\t22\t37\n50\t27\t67\t53\t56\t42\n59\t59\t67\t53\t22\t47\n73\t50\t44\t33\t44\t42\n68\t45\t50\t47\t61\t26\n55\t27\t56\t47\t44\t42\n59\t27\t56\t33\t39\t26\n73\t50\t78\t47\t50\t47\n68\t41\t72\t67\t89\t58\n59\t23\t44\t33\t6\t26\n82\t59\t78\t73\t83\t53\n59\t59\t67\t40\t67\t53\n73\t32\t61\t47\t11\t42\n59\t45\t67\t67\t50\t58\n73\t32\t67\t33\t28\t26\n55\t50\t39\t20\t44\t42\n59\t27\t61\t40\t44\t58\n73\t68\t89\t53\t61\t58\n73\t36\t61\t53\t72\t42\n68\t59\t89\t40\t33\t42\n64\t41\t61\t47\t33\t42\n77\t50\t61\t60\t56\t47\n55\t55\t56\t40\t44\t53\n50\t36\t56\t40\t56\t26\n64\t18\t78\t40\t33\t16\n59\t36\t67\t53\t72\t37\n64\t36\t61\t40\t44\t37\n59\t41\t56\t27\t39\t37\n68\t45\t56\t53\t50\t37\n77\t36\t44\t60\t33\t21\n59\t23\t50\t33\t17\t42\n55\t36\t56\t40\t33\t42\n82\t59\t67\t53\t61\t63\n55\t9\t39\t33\t22\t21\n77\t36\t72\t47\t44\t26\n55\t18\t39\t60\t39\t16\n55\t45\t56\t40\t28\t32\n59\t36\t67\t20\t28\t26\n64\t45\t67\t73\t33\t26\n59\t45\t28\t40\t39\t21\n50\t41\t78\t47\t56\t37\n77\t32\t72\t47\t67\t47\n64\t36\t61\t7\t33\t37\n64\t41\t44\t60\t39\t32\n45\t36\t67\t40\t50\t21\n68\t55\t61\t20\t17\t26\n64\t41\t67\t47\t44\t32\n59\t32\t39\t27\t39\t37\n27\t18\t22\t40\t39\t16\n55\t41\t44\t20\t28\t26\n68\t32\t61\t33\t39\t42\n45\t32\t33\t27\t44\t21\n68\t45\t67\t60\t89\t42\n59\t5\t50\t13\t22\t21\n77\t32\t56\t40\t39\t37\n86\t55\t72\t53\t72\t63\n55\t18\t61\t33\t33\t32\n50\t45\t72\t53\t33\t32\n59\t27\t56\t13\t33\t16\n59\t18\t67\t13\t22\t11\n68\t55\t56\t67\t44\t63\n77\t27\t61\t53\t56\t37\n68\t32\t61\t27\t39\t53\n41\t23\t56\t7\t44\t11\n64\t50\t61\t33\t28\t21\n41\t14\t33\t20\t28\t26\n64\t23\t33\t20\t28\t37\n59\t27\t56\t20\t22\t26\n64\t41\t56\t53\t44\t37\n59\t45\t61\t33\t56\t47\n50\t45\t61\t40\t22\t37\n50\t32\t56\t20\t22\t32\n55\t41\t50\t20\t28\t16\n64\t41\t44\t27\t39\t37\n45\t36\t22\t27\t28\t21\n68\t32\t44\t53\t50\t42\n55\t23\t61\t33\t28\t37\n55\t18\t67\t33\t44\t42\n55\t23\t39\t33\t33\t21\n55\t36\t72\t47\t50\t37\n55\t36\t44\t13\t17\t21\n50\t41\t72\t53\t39\t42\n68\t55\t56\t40\t44\t21\n55\t41\t67\t47\t61\t32\n64\t41\t61\t33\t33\t37\n41\t41\t33\t53\t56\t26\n59\t55\t72\t80\t72\t53\n64\t77\t67\t20\t50\t47\n73\t45\t67\t67\t72\t58\n64\t59\t83\t73\t78\t37\n59\t55\t67\t67\t44\t42\n55\t45\t72\t80\t83\t53\n73\t36\t61\t47\t50\t42\n77\t59\t83\t67\t78\t47\n45\t36\t50\t47\t28\t47\n68\t68\t83\t67\t67\t68\n73\t23\t56\t47\t56\t42\n82\t73\t67\t80\t72\t58\n64\t32\t67\t20\t22\t32\n64\t45\t83\t73\t78\t63\n73\t73\t72\t100\t94\t84\n86\t73\t83\t60\t72\t68\n82\t73\t89\t80\t83\t58\n73\t55\t72\t67\t72\t74\n77\t59\t67\t87\t61\t63\n64\t45\t56\t33\t33\t32\n86\t77\t78\t73\t56\t42\n55\t50\t67\t53\t67\t42\n59\t41\t50\t67\t56\t58\n68\t27\t61\t53\t39\t42\n50\t36\t72\t53\t56\t26\n59\t36\t72\t67\t50\t37\n64\t50\t72\t40\t50\t32\n41\t32\t61\t40\t50\t53\n64\t50\t78\t33\t33\t37\n77\t64\t72\t67\t67\t68\n64\t27\t61\t40\t56\t26\n55\t55\t44\t47\t50\t37\n64\t41\t50\t60\t33\t58\n64\t32\t61\t40\t56\t58\n55\t27\t72\t47\t22\t32\n50\t32\t61\t60\t44\t37\n68\t59\t78\t80\t72\t79\n55\t41\t67\t53\t61\t58\n59\t41\t50\t60\t89\t68\n86\t86\t94\t93\t83\t84\n68\t41\t39\t27\t22\t42\n73\t36\t28\t33\t39\t32\n64\t32\t67\t60\t33\t42\n55\t41\t44\t47\t44\t16\n68\t36\t67\t47\t56\t37\n73\t55\t61\t47\t39\t26\n77\t64\t78\t53\t67\t58\n59\t23\t39\t47\t0\t32\n95\t95\t100\t100\t94\t100\n95\t95\t100\t100\t100\t100\n82\t82\t83\t93\t94\t89\n45\t18\t22\t7\t17\t26\n95\t86\t94\t100\t100\t95",
                mode="r", theme="terminal"),

            br(),

            h3("Specifying the model"),
            p('See',
            a("lavaan", href="http://lavaan.ugent.be/", target="_blank"),
            'for the syntax.'),

            aceEditor("spec", mode="r", value="# latent variables\nAchievement =~ Midterm + Final + Quiz\nProficiency =~ Exam1 + Exam2 + Exam3\n# regression\nProficiency ~ Achievement\n"),

            br(),

            h3("Basic statistics"),
            verbatimTextOutput("textarea.out"),

            br(),

            h3("Correlation"),
            verbatimTextOutput("correl.out"),

            br(),

            strong("Scatter plot matrices"),
            br(),

            plotOutput("corPlot"),

            br(),

            h3("SEM result"),

            verbatimTextOutput("result.out"),

            br(),

            h3("Path diagram (Unstandardized estimates)"),

            plotOutput("sPlot1"),

            br(),

            h3("Path diagram (Standardized estimates)"),

            plotOutput("sPlot2"),

            br(),
            br(),

            strong('R session info'),
            verbatimTextOutput("info.out")

            ),


        tabPanel("About",

            strong('Note'),
            p('This web application is developed with',
            a("Shiny.", href="http://www.rstudio.com/shiny/", target="_blank"),
            ''),

            br(),

            strong('List of Packages Used'), br(),
            code('library(shiny)'),br(),
            code('library(shinyAce)'),br(),
            code('library(psych)'),br(),
            code('library(lavaan)'),br(),
            code('library(semPlot)'),br(),

            br(),

            strong('Code'),
            p('Source code for this application is based on',
            a('"The handbook of Research in Foreign Language Learning and Teaching" (Takeuchi & Mizumoto, 2012).', href='http://mizumot.com/handbook/', target="_blank")),

            p('The code for this web application is available at',
            a('GitHub.', href='https://github.com/mizumot/sem', target="_blank")),

            p('If you want to run this code on your computer (in a local R session), run the code below:',
            br(),
            code('library(shiny)'),br(),
            code('runGitHub("sem","mizumot")')
            ),

            br(),

            strong('Recommended'),
            p('To learn more about R, I suggest this excellent and free e-book (pdf),',
            a("A Guide to Doing Statistics in Second Language Research Using R,", href="http://cw.routledge.com/textbooks/9780805861853/guide-to-R.asp", target="_blank"),
            'written by Dr. Jenifer Larson-Hall.'),

            p('Also, if you are a cool Mac user and want to use R with GUI,',
            a("MacR", href="http://www.urano-ken.com/blog/2013/02/25/installing-and-using-macr/", target="_blank"),
            'is defenitely the way to go!'),

            br(),

            strong('Author'),
            p(a("Atsushi MIZUMOTO,", href="http://mizumot.com", target="_blank"),' Ph.D.',br(),
            'Associate Professor of Applied Linguistics',br(),
            'Faculty of Foreign Language Studies /',br(),
            'Graduate School of Foreign Language Education and Research,',br(),
            'Kansai University, Osaka, Japan'),

            br(),

            a(img(src="http://i.creativecommons.org/p/mark/1.0/80x15.png"), target="_blank", href="http://creativecommons.org/publicdomain/mark/1.0/"),

            p(br())

            )

))
))