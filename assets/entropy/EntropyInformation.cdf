(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     44464,       1167]
NotebookOptionsPosition[     43531,       1111]
NotebookOutlinePosition[     44079,       1134]
CellTagsIndexPosition[     44036,       1131]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Visualizing Entropy and Mutual Information", "Section", "PluginEmbeddedContent"],

Cell["Joshua Weiner, July 20, 2016", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Shannon Entropy, H", "Subsection", "PluginEmbeddedContent"],

Cell["\<\
Calculate the entropy of a binomial distribution versus true probability of a \
positive P(X=+). The probability is normalized so that the probability of a \
negative P(X= - ) + P(X=+) = 1. 

Note that the entropy is highest when there is an even distribution, P(X= -) \
= P(X= +) = 0.5.\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"x", "*", 
     RowBox[{"Log", "[", 
      RowBox[{"2", ",", 
       RowBox[{"1", "/", "x"}]}], "]"}]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", "x"}], ")"}], "*", 
     RowBox[{"Log", "[", 
      RowBox[{"2", ",", 
       RowBox[{"1", "/", 
        RowBox[{"(", 
         RowBox[{"1", "-", "x"}], ")"}]}]}], "]"}]}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"FrameLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
     "\"\<Actual Probability of Positive, P(X=+)\>\"", ",", 
      "\"\<Entropy, H(X) [bits]\>\""}], "}"}]}], ",", 
   RowBox[{"Frame", "\[Rule]", "True"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], Opacity[
    1.], LineBox[CompressedData["
1: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
5f//n/sfXutXlA==
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{True, True}, {True, True}},
  FrameLabel->{{
     FormBox["\"Entropy, H(X) [bits]\"", TraditionalForm], None}, {
     FormBox["\"Actual Probability of Positive, P(X=+)\"", TraditionalForm], 
     None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImageSize->{594.24609375, Automatic},
  Method->{"DefaultBoundaryStyle" -> Automatic, "ScalingFunctions" -> None},
  PlotRange->{{0, 1}, {0., 0.9999999829172184}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Define a Confusion Matrix", "Subsection", "PluginEmbeddedContent"],

Cell[TextData[{
 "The confusion matrix is parametrized with three degrees of freedom (you \
only need three to specify every cell in the matrix. Why? What are our \
constraints?):\np, the actual probability of a positive (+) result\n",
 Cell[BoxData[
  FormBox[
   SubscriptBox["t", "p"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", the rate of true positives given p (or conditional probability P(Y = \
\[OpenCurlyDoubleQuote]Positive\[CloseCurlyDoubleQuote] | X = \
\[OpenCurlyDoubleQuote]+\[OpenCurlyDoubleQuote])). You can think of this as \
the \[OpenCurlyDoubleQuote]split\[CloseCurlyDoubleQuote] of the Test Results \
for a given input on the row, e.g., if P(X=\[CloseCurlyDoubleQuote]+\
\[OpenCurlyDoubleQuote]) = 0.2 and each element of the top row of the \
confusion matrix is 0.1, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["t", "p"], "=", "0.5"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " as we had in the example.\n",
 Cell[BoxData[
  FormBox[
   SubscriptBox["t", "n"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", the rate of true negatives given 1-p (conditional probability P(Y = \
\[OpenCurlyDoubleQuote]Negative\[CloseCurlyDoubleQuote] | X = \
\[OpenCurlyDoubleQuote]-\[OpenCurlyDoubleQuote])). This is the fractional \
\[OpenCurlyDoubleQuote]split\[CloseCurlyDoubleQuote] of the bottom row of the \
confusion matrix.\[LineSeparator] "
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"mut", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"p", "*", "tp"}], ",", 
       RowBox[{"p", "*", 
        RowBox[{"(", 
         RowBox[{"1", "-", "tp"}], ")"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "p"}], ")"}], "*", 
        RowBox[{"(", 
         RowBox[{"1", "-", "tn"}], ")"}]}], ",", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "p"}], ")"}], "*", "tn"}]}], "}"}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"mut", "//", "MatrixForm"}]}], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{"p", " ", "tp"}], 
      RowBox[{"p", " ", 
       RowBox[{"(", 
        RowBox[{"1", "-", "tp"}], ")"}]}]},
     {
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "-", "p"}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{"1", "-", "tn"}], ")"}]}], 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "-", "p"}], ")"}], " ", "tn"}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Define Entropy function and mutual information function", \
"Subsubsection", "PluginEmbeddedContent"],

Cell["I(X;Y) = H(X) + H(Y) - H(X,Y)", "Text", "PluginEmbeddedContent"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"entropy", "[", "p_", "]"}], ":=", 
   RowBox[{
    RowBox[{"-", "p"}], "*", 
    RowBox[{"Log", "[", 
     RowBox[{"2", ",", "p"}], "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"info", "[", "m_", "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"entropy", "[", 
       RowBox[{"Total", "[", 
        RowBox[{"m", "[", 
         RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}], "+", 
      RowBox[{"entropy", "[", 
       RowBox[{"Total", "[", 
        RowBox[{"m", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "]"}], "]"}]}], ")"}], "+", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"entropy", "[", 
       RowBox[{"Total", "[", " ", 
        RowBox[{"m", "[", 
         RowBox[{"[", 
          RowBox[{"All", ",", "1"}], "]"}], "]"}], "]"}], " ", "]"}], "+", 
      RowBox[{"entropy", "[", " ", 
       RowBox[{"Total", "[", 
        RowBox[{"m", "[", 
         RowBox[{"[", 
          RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}], " ", "]"}]}], ")"}],
     "-", 
    RowBox[{"Total", "[", 
     RowBox[{"Flatten", "[", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"entropy", "[", 
         RowBox[{"m", "[", 
          RowBox[{"[", 
           RowBox[{"i", ",", "j"}], "]"}], "]"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"i", ",", "1", ",", "2"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"j", ",", "1", ",", "2"}], "}"}]}], "]"}], "]"}], "]"}]}]}], 
  ";"}]}], "Input", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Plotting Mutual Information versus p, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["t", "p"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["t", "n"], TraditionalForm]],
  FormatType->"TraditionalForm"]
}], "Subsection", "PluginEmbeddedContent"],

Cell["\<\
First, plot the mutual information versus p, the actual probability of a + \
result. Note that in the quiz p was 0.2. Try changing the true positive rate \
and true negative rate and see what happens to the mutual information.

Things to think about for these plots: 
- When is the mutual information the lowest, highest?
- Does the mutual information depend strongly on the parameters? Which ones?
- For a given set of inputs, what would the confusion matrix look like? Does \
it make sense?\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"mut", "/.", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"tp", "\[Rule]", "tpn"}], ",", 
          RowBox[{"tn", "\[Rule]", "tnn"}]}], "}"}]}], "//", "TableForm"}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{"\"\<\\nI(X;Y) at p = 0.2 : \>\"", "<>", 
       RowBox[{"ToString", "[", 
        RowBox[{"Evaluate", "[", 
         RowBox[{
          RowBox[{"info", "[", "mut", "]"}], "/.", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"tp", "\[Rule]", "tpn"}], ",", 
            RowBox[{"tn", "\[Rule]", "tnn"}], ",", 
            RowBox[{"p", "\[Rule]", "0.2"}]}], "}"}]}], "]"}], "]"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Evaluate", "[", 
          RowBox[{"info", "[", "mut", "]"}], "]"}], "/.", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"tp", "\[Rule]", "tpn"}], ",", 
           RowBox[{"p", "\[Rule]", "pn"}], ",", 
           RowBox[{"tn", "\[Rule]", "tnn"}]}], "}"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"pn", ",", "0", ",", "1"}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", "\[IndentingNewLine]", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<P(X is +)\>\"", ",", 
           "\"\<Mutual Information, I(X;Y) [bits]\>\""}], "}"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", "\[IndentingNewLine]", 
        RowBox[{"GridLines", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", "0.2", "}"}], ",", 
           RowBox[{"{", "}"}]}], "}"}]}]}], "]"}]}], "}"}], "//", 
    "TableForm"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"tpn", ",", "0.5", ",", "\"\<True Positive Rate\>\""}], "}"}], 
     ",", "0", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"tnn", ",", "0.75", ",", " ", "\"\<True Negative Rate\>\""}], 
      "}"}], ",", "0", ",", "1"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"mut", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"p", "*", "tp"}], ",", 
           RowBox[{"p", "*", 
            RowBox[{"(", 
             RowBox[{"1", "-", "tp"}], ")"}]}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "p"}], ")"}], "*", 
            RowBox[{"(", 
             RowBox[{"1", "-", "tn"}], ")"}]}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "p"}], ")"}], "*", "tn"}]}], "}"}]}], "}"}]}], 
      ";", 
      RowBox[{
       RowBox[{"entropy", "[", "p_", "]"}], ":=", 
       RowBox[{
        RowBox[{"-", "p"}], "*", 
        RowBox[{"Log", "[", 
         RowBox[{"2", ",", "p"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"info", "[", "m_", "]"}], ":=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"entropy", "[", 
           RowBox[{"Total", "[", 
            RowBox[{"m", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}], "+", 
          RowBox[{"entropy", "[", 
           RowBox[{"Total", "[", 
            RowBox[{"m", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "]"}], "]"}]}], ")"}], "+", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"entropy", "[", 
           RowBox[{"Total", "[", " ", 
            RowBox[{"m", "[", 
             RowBox[{"[", 
              RowBox[{"All", ",", "1"}], "]"}], "]"}], "]"}], " ", "]"}], "+", 
          RowBox[{"entropy", "[", " ", 
           RowBox[{"Total", "[", 
            RowBox[{"m", "[", 
             RowBox[{"[", 
              RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}], " ", "]"}]}], 
         ")"}], "-", 
        RowBox[{"Total", "[", 
         RowBox[{"Flatten", "[", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"entropy", "[", 
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", "j"}], "]"}], "]"}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", "2"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"j", ",", "1", ",", "2"}], "}"}]}], "]"}], "]"}], 
         "]"}]}]}], ";"}], ")"}]}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`tnn$$ = 0.75, $CellContext`tpn$$ = 0.5, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`tpn$$], 0.5, "True Positive Rate"}, 0, 1}, {{
       Hold[$CellContext`tnn$$], 0.75, "True Negative Rate"}, 0, 1}}, 
    Typeset`size$$ = {576., {218.134033203125, 223.865966796875}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`tpn$98540$$ = 0, $CellContext`tnn$98541$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`tnn$$ = 0.75, $CellContext`tpn$$ = 0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`tpn$$, $CellContext`tpn$98540$$, 0], 
        Hold[$CellContext`tnn$$, $CellContext`tnn$98541$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> TableForm[{
         TableForm[
          
          ReplaceAll[$CellContext`mut, {$CellContext`tp -> \
$CellContext`tpn$$, $CellContext`tn -> $CellContext`tnn$$}]], 
         StringJoin["\nI(X;Y) at p = 0.2 : ", 
          ToString[
           Evaluate[
            ReplaceAll[
             $CellContext`info[$CellContext`mut], {$CellContext`tp -> \
$CellContext`tpn$$, $CellContext`tn -> $CellContext`tnn$$, $CellContext`p -> 
              0.2}]]]], 
         Plot[
          ReplaceAll[
           Evaluate[
            $CellContext`info[$CellContext`mut]], {$CellContext`tp -> \
$CellContext`tpn$$, $CellContext`p -> $CellContext`pn, $CellContext`tn -> \
$CellContext`tnn$$}], {$CellContext`pn, 0, 1}, Frame -> True, 
          FrameLabel -> {"P(X is +)", "Mutual Information, I(X;Y) [bits]"}, 
          PlotRange -> {{0, 1}, {0, 1}}, ImageSize -> Large, 
          GridLines -> {{0.2}, {}}]}], 
      "Specifications" :> {{{$CellContext`tpn$$, 0.5, "True Positive Rate"}, 
         0, 1}, {{$CellContext`tnn$$, 0.75, "True Negative Rate"}, 0, 1}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{621., {277., 282.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`mut = {{$CellContext`p $CellContext`tp, \
$CellContext`p (1 - $CellContext`tp)}, {(1 - $CellContext`p) (
           1 - $CellContext`tn), (
           1 - $CellContext`p) $CellContext`tn}}; $CellContext`entropy[
         Pattern[$CellContext`p, 
          Blank[]]] := (-$CellContext`p) 
        Log[2, $CellContext`p]; $CellContext`info[
         Pattern[$CellContext`m, 
          Blank[]]] := ($CellContext`entropy[
           Total[
            Part[$CellContext`m, 1]]] + $CellContext`entropy[
           Total[
            Part[$CellContext`m, 2]]]) + ($CellContext`entropy[
           Total[
            Part[$CellContext`m, All, 1]]] + $CellContext`entropy[
           Total[
            Part[$CellContext`m, All, 2]]]) - Total[
         Flatten[
          Table[
           $CellContext`entropy[
            
            Part[$CellContext`m, $CellContext`i, $CellContext`j]], \
{$CellContext`i, 1, 2}, {$CellContext`j, 1, 2}]]]; Null); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Plotting Versus the True Positive Rate, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["t", "p"], TraditionalForm]],
  FormatType->"TraditionalForm"]
}], "Subsubsection", "PluginEmbeddedContent"],

Cell[TextData[{
 "Now plot versus the true positive rate (conditional probability of Positive \
given X=\[CloseCurlyDoubleQuote]+\[OpenCurlyDoubleQuote]) assuming that p = \
0.2. The line at ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["t", "p"], "=", "0.5"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " indicates what we had in the quiz example to start."
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"mut", "/.", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"p", "\[Rule]", "0.2"}], ",", 
          RowBox[{"tp", "\[Rule]", "tpn"}], ",", 
          RowBox[{"tn", "\[Rule]", "tnn"}]}], "}"}]}], "//", "TableForm"}], 
      ",", 
      RowBox[{"\"\<\\nI(X;Y) at p = 0.2, tp = 0.5 : \>\"", "<>", 
       RowBox[{"ToString", "[", 
        RowBox[{"Evaluate", "[", 
         RowBox[{
          RowBox[{"info", "[", "mut", "]"}], "/.", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"tp", "\[Rule]", "0.5"}], ",", 
            RowBox[{"tn", "\[Rule]", "tnn"}], ",", 
            RowBox[{"p", "\[Rule]", "0.2"}]}], "}"}]}], "]"}], "]"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Evaluate", "[", 
          RowBox[{"info", "[", "mut", "]"}], "]"}], "/.", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"tp", "\[Rule]", "tpn"}], ",", 
           RowBox[{"p", "\[Rule]", "0.2"}], ",", 
           RowBox[{"tn", "\[Rule]", "tnn"}]}], "}"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"tpn", ",", "0", ",", "1"}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", "\[IndentingNewLine]", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<True Positive Rate, P(Positive | X=+)\>\"", ",", 
           "\"\<Mutual Information, I(X;Y) [bits]\>\""}], "}"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", "\[IndentingNewLine]", 
        RowBox[{"GridLines", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", "0.5", "}"}], ",", 
           RowBox[{"{", "}"}]}], "}"}]}]}], "]"}]}], "}"}], "//", 
    "TableForm"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"tnn", ",", "0.75", ",", "\"\<True Negative Rate\>\""}], "}"}], 
     ",", "0", ",", "1"}], "}"}], ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"mut", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"p", "*", "tp"}], ",", 
           RowBox[{"p", "*", 
            RowBox[{"(", 
             RowBox[{"1", "-", "tp"}], ")"}]}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "p"}], ")"}], "*", 
            RowBox[{"(", 
             RowBox[{"1", "-", "tn"}], ")"}]}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "p"}], ")"}], "*", "tn"}]}], "}"}]}], "}"}]}], 
      ";", 
      RowBox[{
       RowBox[{"entropy", "[", "p_", "]"}], ":=", 
       RowBox[{
        RowBox[{"-", "p"}], "*", 
        RowBox[{"Log", "[", 
         RowBox[{"2", ",", "p"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"info", "[", "m_", "]"}], ":=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"entropy", "[", 
           RowBox[{"Total", "[", 
            RowBox[{"m", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}], "+", 
          RowBox[{"entropy", "[", 
           RowBox[{"Total", "[", 
            RowBox[{"m", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "]"}], "]"}]}], ")"}], "+", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"entropy", "[", 
           RowBox[{"Total", "[", " ", 
            RowBox[{"m", "[", 
             RowBox[{"[", 
              RowBox[{"All", ",", "1"}], "]"}], "]"}], "]"}], " ", "]"}], "+", 
          RowBox[{"entropy", "[", " ", 
           RowBox[{"Total", "[", 
            RowBox[{"m", "[", 
             RowBox[{"[", 
              RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}], " ", "]"}]}], 
         ")"}], "-", 
        RowBox[{"Total", "[", 
         RowBox[{"Flatten", "[", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"entropy", "[", 
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", "j"}], "]"}], "]"}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", "2"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"j", ",", "1", ",", "2"}], "}"}]}], "]"}], "]"}], 
         "]"}]}]}], ";"}], ")"}]}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`tnn$$ = 0.75, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`tnn$$], 0.75, "True Negative Rate"}, 0, 1}}, 
    Typeset`size$$ = {576., {218.134033203125, 223.865966796875}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`tnn$98898$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`tnn$$ = 0.75}, 
      "ControllerVariables" :> {
        Hold[$CellContext`tnn$$, $CellContext`tnn$98898$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> TableForm[{
         TableForm[
          
          ReplaceAll[$CellContext`mut, {$CellContext`p -> 
            0.2, $CellContext`tp -> $CellContext`tpn, $CellContext`tn -> \
$CellContext`tnn$$}]], 
         StringJoin["\nI(X;Y) at p = 0.2, tp = 0.5 : ", 
          ToString[
           Evaluate[
            ReplaceAll[
             $CellContext`info[$CellContext`mut], {$CellContext`tp -> 
              0.5, $CellContext`tn -> $CellContext`tnn$$, $CellContext`p -> 
              0.2}]]]], 
         Plot[
          ReplaceAll[
           Evaluate[
            $CellContext`info[$CellContext`mut]], {$CellContext`tp -> \
$CellContext`tpn, $CellContext`p -> 
            0.2, $CellContext`tn -> $CellContext`tnn$$}], {$CellContext`tpn, 
           0, 1}, Frame -> True, 
          FrameLabel -> {
           "True Positive Rate, P(Positive | X=+)", 
            "Mutual Information, I(X;Y) [bits]"}, 
          PlotRange -> {{0, 1}, {0, 1}}, ImageSize -> Large, 
          GridLines -> {{0.5}, {}}]}], 
      "Specifications" :> {{{$CellContext`tnn$$, 0.75, "True Negative Rate"}, 
         0, 1}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{621., {263., 268.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`mut = {{$CellContext`p $CellContext`tp, \
$CellContext`p (1 - $CellContext`tp)}, {(1 - $CellContext`p) (
           1 - $CellContext`tn), (
           1 - $CellContext`p) $CellContext`tn}}; $CellContext`entropy[
         Pattern[$CellContext`p, 
          Blank[]]] := (-$CellContext`p) 
        Log[2, $CellContext`p]; $CellContext`info[
         Pattern[$CellContext`m, 
          Blank[]]] := ($CellContext`entropy[
           Total[
            Part[$CellContext`m, 1]]] + $CellContext`entropy[
           Total[
            Part[$CellContext`m, 2]]]) + ($CellContext`entropy[
           Total[
            Part[$CellContext`m, All, 1]]] + $CellContext`entropy[
           Total[
            Part[$CellContext`m, All, 2]]]) - Total[
         Flatten[
          Table[
           $CellContext`entropy[
            
            Part[$CellContext`m, $CellContext`i, $CellContext`j]], \
{$CellContext`i, 1, 2}, {$CellContext`j, 1, 2}]]]; Null); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Plotting Versus the True Negative Rate, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["t", "n"], TraditionalForm]],
  FormatType->"TraditionalForm"]
}], "Subsubsection", "PluginEmbeddedContent"],

Cell[TextData[{
 "Now plot versus the true positive rate (conditional probability of Negative \
given X=\[CloseCurlyDoubleQuote]-\[OpenCurlyDoubleQuote]) assuming that p = \
0.2. The line at ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["t", "n"], "=", "0.75"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " indicates what we had in the quiz example to start."
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"mut", "/.", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"p", "\[Rule]", "0.2"}], ",", 
          RowBox[{"tp", "\[Rule]", "tpn"}], ",", 
          RowBox[{"tn", "\[Rule]", "tnn"}]}], "}"}]}], "//", "TableForm"}], 
      ",", 
      RowBox[{"\"\<\\nI(X;Y) at p = 0.2, tn = 0.75 : \>\"", "<>", 
       RowBox[{"ToString", "[", 
        RowBox[{"Evaluate", "[", 
         RowBox[{
          RowBox[{"info", "[", "mut", "]"}], "/.", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"tp", "\[Rule]", "tpn"}], ",", 
            RowBox[{"tn", "\[Rule]", "0.75"}], ",", 
            RowBox[{"p", "\[Rule]", "0.2"}]}], "}"}]}], "]"}], "]"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Evaluate", "[", 
          RowBox[{"info", "[", "mut", "]"}], "]"}], "/.", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"tp", "\[Rule]", "tpn"}], ",", 
           RowBox[{"p", "\[Rule]", "0.2"}], ",", 
           RowBox[{"tn", "\[Rule]", "tnn"}]}], "}"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"tnn", ",", "0", ",", "1"}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", "\[IndentingNewLine]", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<True Negative Rate, P(Negative | X=-)\>\"", ",", 
           "\"\<Mutual Information, I(X;Y) [bits]\>\""}], "}"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", "\[IndentingNewLine]", 
        RowBox[{"GridLines", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", "0.75", "}"}], ",", 
           RowBox[{"{", "}"}]}], "}"}]}]}], "]"}]}], "}"}], "//", 
    "TableForm"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"tpn", ",", "0.5", ",", "\"\<True Positive Rate\>\""}], "}"}], 
     ",", "0", ",", "1"}], "}"}], ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"mut", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"p", "*", "tp"}], ",", 
           RowBox[{"p", "*", 
            RowBox[{"(", 
             RowBox[{"1", "-", "tp"}], ")"}]}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "p"}], ")"}], "*", 
            RowBox[{"(", 
             RowBox[{"1", "-", "tn"}], ")"}]}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "p"}], ")"}], "*", "tn"}]}], "}"}]}], "}"}]}], 
      ";", 
      RowBox[{
       RowBox[{"entropy", "[", "p_", "]"}], ":=", 
       RowBox[{
        RowBox[{"-", "p"}], "*", 
        RowBox[{"Log", "[", 
         RowBox[{"2", ",", "p"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"info", "[", "m_", "]"}], ":=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"entropy", "[", 
           RowBox[{"Total", "[", 
            RowBox[{"m", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}], "+", 
          RowBox[{"entropy", "[", 
           RowBox[{"Total", "[", 
            RowBox[{"m", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "]"}], "]"}]}], ")"}], "+", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"entropy", "[", 
           RowBox[{"Total", "[", " ", 
            RowBox[{"m", "[", 
             RowBox[{"[", 
              RowBox[{"All", ",", "1"}], "]"}], "]"}], "]"}], " ", "]"}], "+", 
          RowBox[{"entropy", "[", " ", 
           RowBox[{"Total", "[", 
            RowBox[{"m", "[", 
             RowBox[{"[", 
              RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}], " ", "]"}]}], 
         ")"}], "-", 
        RowBox[{"Total", "[", 
         RowBox[{"Flatten", "[", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"entropy", "[", 
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", "j"}], "]"}], "]"}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", "2"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"j", ",", "1", ",", "2"}], "}"}]}], "]"}], "]"}], 
         "]"}]}]}], ";"}], ")"}]}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`tpn$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`tpn$$], 0.5, "True Positive Rate"}, 0, 1}}, 
    Typeset`size$$ = {576., {218.134033203125, 223.865966796875}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`tpn$99167$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`tpn$$ = 0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`tpn$$, $CellContext`tpn$99167$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> TableForm[{
         TableForm[
          
          ReplaceAll[$CellContext`mut, {$CellContext`p -> 
            0.2, $CellContext`tp -> $CellContext`tpn$$, $CellContext`tn -> \
$CellContext`tnn}]], 
         StringJoin["\nI(X;Y) at p = 0.2, tn = 0.75 : ", 
          ToString[
           Evaluate[
            ReplaceAll[
             $CellContext`info[$CellContext`mut], {$CellContext`tp -> \
$CellContext`tpn$$, $CellContext`tn -> 0.75, $CellContext`p -> 0.2}]]]], 
         Plot[
          ReplaceAll[
           Evaluate[
            $CellContext`info[$CellContext`mut]], {$CellContext`tp -> \
$CellContext`tpn$$, $CellContext`p -> 
            0.2, $CellContext`tn -> $CellContext`tnn}], {$CellContext`tnn, 0, 
           1}, Frame -> True, 
          FrameLabel -> {
           "True Negative Rate, P(Negative | X=-)", 
            "Mutual Information, I(X;Y) [bits]"}, 
          PlotRange -> {{0, 1}, {0, 1}}, ImageSize -> Large, 
          GridLines -> {{0.75}, {}}]}], 
      "Specifications" :> {{{$CellContext`tpn$$, 0.5, "True Positive Rate"}, 
         0, 1}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{621., {263., 268.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`mut = {{$CellContext`p $CellContext`tp, \
$CellContext`p (1 - $CellContext`tp)}, {(1 - $CellContext`p) (
           1 - $CellContext`tn), (
           1 - $CellContext`p) $CellContext`tn}}; $CellContext`entropy[
         Pattern[$CellContext`p, 
          Blank[]]] := (-$CellContext`p) 
        Log[2, $CellContext`p]; $CellContext`info[
         Pattern[$CellContext`m, 
          Blank[]]] := ($CellContext`entropy[
           Total[
            Part[$CellContext`m, 1]]] + $CellContext`entropy[
           Total[
            Part[$CellContext`m, 2]]]) + ($CellContext`entropy[
           Total[
            Part[$CellContext`m, All, 1]]] + $CellContext`entropy[
           Total[
            Part[$CellContext`m, All, 2]]]) - Total[
         Flatten[
          Table[
           $CellContext`entropy[
            
            Part[$CellContext`m, $CellContext`i, $CellContext`j]], \
{$CellContext`i, 1, 2}, {$CellContext`j, 1, 2}]]]; Null); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{800.1166666666667, 3747.8099999999995`},
Visible->True,
AuthoredSize->{800, 3748},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (December 4, \
2014)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 86, 0, 38, "Section"],
Cell[1575, 37, 69, 0, 16, "Text"],
Cell[CellGroupData[{
Cell[1669, 41, 65, 0, 24, "Subsection"],
Cell[1737, 43, 336, 7, 73, "Text"],
Cell[CellGroupData[{
Cell[2098, 54, 783, 24, 48, "Input"],
Cell[2884, 80, 7413, 133, 381, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[10346, 219, 72, 0, 24, "Subsection"],
Cell[10421, 221, 1446, 30, 178, "Text"],
Cell[CellGroupData[{
Cell[11892, 255, 668, 22, 31, "Input"],
Cell[12563, 279, 950, 29, 32, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13550, 313, 107, 1, 23, "Subsubsection"],
Cell[13660, 316, 70, 0, 16, "Text"],
Cell[13733, 318, 1574, 48, 82, "Input"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[15356, 372, 323, 11, 29, "Subsection"],
Cell[15682, 385, 541, 10, 130, "Text"],
Cell[CellGroupData[{
Cell[16248, 399, 4999, 138, 269, "Input"],
Cell[21250, 539, 3825, 80, 561, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[25112, 624, 211, 6, 27, "Subsubsection"],
Cell[25326, 632, 419, 10, 39, "Text"],
Cell[CellGroupData[{
Cell[25770, 646, 4869, 134, 269, "Input"],
Cell[30642, 782, 3642, 80, 533, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[34333, 868, 211, 6, 23, "Subsubsection"],
Cell[34547, 876, 420, 10, 39, "Text"],
Cell[CellGroupData[{
Cell[34992, 890, 4871, 134, 286, "Input"],
Cell[39866, 1026, 3613, 79, 533, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Hv05GUdxK5jZQDw9BJZxGv6k *)
