program MathUtilsMacOsTests;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}{$STRONGLINKTYPES ON}
uses
  System.SysUtils,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ENDIF }
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  DUnitX.TestFramework,
  BaseMatrixTestCase in 'BaseMatrixTestCase.pas',
  TestAVX in 'TestAVX.pas',
  TestCCA in 'TestCCA.pas',
  TestCorr in 'TestCorr.pas',
  TestDist in 'TestDist.pas',
  TestEigensystems in 'TestEigensystems.pas',
  TestEM in 'TestEM.pas',
  TestFMA in 'TestFMA.pas',
  TestICA in 'TestICA.pas',
  TestLineEquations in 'TestLineEquations.pas',
  TestMatrixClass in 'TestMatrixClass.pas',
  TestNMF in 'TestNMF.pas',
  TestNonLinFit in 'TestNonLinFit.pas',
  TestPCA in 'TestPCA.pas',
  TestRandom in 'TestRandom.pas',
  TestRBSpline in 'TestRBSpline.pas',
  TestSimpleMatrixOperations in 'TestSimpleMatrixOperations.pas',
  ASMMatrixAbsOperations in '..\ASMMatrixAbsOperations.pas',
  ASMMatrixAbsOperationsx64 in '..\ASMMatrixAbsOperationsx64.pas',
  ASMMatrixAddSubOperations in '..\ASMMatrixAddSubOperations.pas',
  ASMMatrixAddSubOperationsx64 in '..\ASMMatrixAddSubOperationsx64.pas',
  ASMMatrixCumSumDiffOperations in '..\ASMMatrixCumSumDiffOperations.pas',
  ASMMatrixCumSumDiffOperationsx64 in '..\ASMMatrixCumSumDiffOperationsx64.pas',
  ASMMatrixElementwiseMultOperations in '..\ASMMatrixElementwiseMultOperations.pas',
  ASMMatrixElementwiseMultOperationsx64 in '..\ASMMatrixElementwiseMultOperationsx64.pas',
  ASMMatrixMeanOperations in '..\ASMMatrixMeanOperations.pas',
  ASMMatrixMeanOperationsx64 in '..\ASMMatrixMeanOperationsx64.pas',
  ASMMatrixMinMaxOperations in '..\ASMMatrixMinMaxOperations.pas',
  ASMMatrixMinMaxOperationsx64 in '..\ASMMatrixMinMaxOperationsx64.pas',
  ASMMatrixMultOperations in '..\ASMMatrixMultOperations.pas',
  ASMMatrixMultOperationsx64 in '..\ASMMatrixMultOperationsx64.pas',
  ASMMatrixMultTransposedOperations in '..\ASMMatrixMultTransposedOperations.pas',
  ASMMatrixMultTransposedOperationsx64 in '..\ASMMatrixMultTransposedOperationsx64.pas',
  ASMMatrixNormOperations in '..\ASMMatrixNormOperations.pas',
  ASMMatrixNormOperationsx64 in '..\ASMMatrixNormOperationsx64.pas',
  ASMMatrixOperations in '..\ASMMatrixOperations.pas',
  ASMMatrixRotations in '..\ASMMatrixRotations.pas',
  ASMMatrixRotationsx64 in '..\ASMMatrixRotationsx64.pas',
  ASMMatrixScaleOperations in '..\ASMMatrixScaleOperations.pas',
  ASMMatrixScaleOperationsx64 in '..\ASMMatrixScaleOperationsx64.pas',
  ASMMatrixSqrtOperations in '..\ASMMatrixSqrtOperations.pas',
  ASMMatrixSqrtOperationsx64 in '..\ASMMatrixSqrtOperationsx64.pas',
  ASMMatrixSumOperations in '..\ASMMatrixSumOperations.pas',
  ASMMatrixSumOperationsx64 in '..\ASMMatrixSumOperationsx64.pas',
  ASMMatrixTransposeOperations in '..\ASMMatrixTransposeOperations.pas',
  ASMMatrixTransposeOperationsx64 in '..\ASMMatrixTransposeOperationsx64.pas',
  ASMMatrixVectorMultOperations in '..\ASMMatrixVectorMultOperations.pas',
  ASMMatrixVectorMultOperationsx64 in '..\ASMMatrixVectorMultOperationsx64.pas',
  ASMMoveOperations in '..\ASMMoveOperations.pas',
  ASMMoveOperationsx64 in '..\ASMMoveOperationsx64.pas',
  AVXMatrixAbsOperations in '..\AVXMatrixAbsOperations.pas',
  AVXMatrixAbsOperationsx64 in '..\AVXMatrixAbsOperationsx64.pas',
  AVXMatrixAddSubOperations in '..\AVXMatrixAddSubOperations.pas',
  AVXMatrixAddSubOperationsx64 in '..\AVXMatrixAddSubOperationsx64.pas',
  AVXMatrixCumSumDiffOperations in '..\AVXMatrixCumSumDiffOperations.pas',
  AVXMatrixCumSumDiffOperationsx64 in '..\AVXMatrixCumSumDiffOperationsx64.pas',
  AVXMatrixElementwiseMultOperations in '..\AVXMatrixElementwiseMultOperations.pas',
  AVXMatrixElementwiseMultOperationsx64 in '..\AVXMatrixElementwiseMultOperationsx64.pas',
  AVXMatrixMeanOperations in '..\AVXMatrixMeanOperations.pas',
  AVXMatrixMeanOperationsx64 in '..\AVXMatrixMeanOperationsx64.pas',
  AVXMatrixMinMaxOperations in '..\AVXMatrixMinMaxOperations.pas',
  AVXMatrixMinMaxOperationsx64 in '..\AVXMatrixMinMaxOperationsx64.pas',
  AVXMatrixMultOperations in '..\AVXMatrixMultOperations.pas',
  AVXMatrixMultOperationsx64 in '..\AVXMatrixMultOperationsx64.pas',
  AVXMatrixMultTransposedOperations in '..\AVXMatrixMultTransposedOperations.pas',
  AVXMatrixMultTransposedOperationsx64 in '..\AVXMatrixMultTransposedOperationsx64.pas',
  AVXMatrixNormOperations in '..\AVXMatrixNormOperations.pas',
  AVXMatrixNormOperationsx64 in '..\AVXMatrixNormOperationsx64.pas',
  AVXMatrixOperations in '..\AVXMatrixOperations.pas',
  AVXMatrixRotations in '..\AVXMatrixRotations.pas',
  AVXMatrixRotationsx64 in '..\AVXMatrixRotationsx64.pas',
  AVXMatrixScaleOperations in '..\AVXMatrixScaleOperations.pas',
  AVXMatrixScaleOperationsx64 in '..\AVXMatrixScaleOperationsx64.pas',
  AVXMatrixSqrtOperations in '..\AVXMatrixSqrtOperations.pas',
  AVXMatrixSqrtOperationsx64 in '..\AVXMatrixSqrtOperationsx64.pas',
  AVXMatrixSumOperations in '..\AVXMatrixSumOperations.pas',
  AVXMatrixSumOperationsx64 in '..\AVXMatrixSumOperationsx64.pas',
  AVXMatrixTransposeOperations in '..\AVXMatrixTransposeOperations.pas',
  AVXMatrixTransposeOperationsx64 in '..\AVXMatrixTransposeOperationsx64.pas',
  AVXMatrixVectorMultOperations in '..\AVXMatrixVectorMultOperations.pas',
  AVXMatrixVectorMultOperationsx64 in '..\AVXMatrixVectorMultOperationsx64.pas',
  AVXMoveOperations in '..\AVXMoveOperations.pas',
  AVXMoveOperationsx64 in '..\AVXMoveOperationsx64.pas',
  BaseMathPersistence in '..\BaseMathPersistence.pas',
  BinaryReaderWriter in '..\BinaryReaderWriter.pas',
  BlockedMult in '..\BlockedMult.pas',
  BlockSizeSetup in '..\BlockSizeSetup.pas',
  BufferedStream in '..\BufferedStream.pas',
  CCA in '..\CCA.pas',
  Corr in '..\Corr.pas',
  CPUFeatures in '..\CPUFeatures.pas',
  Dist in '..\Dist.pas',
  Eigensystems in '..\Eigensystems.pas',
  EM in '..\EM.pas',
  FMAMatrixMultOperations in '..\FMAMatrixMultOperations.pas',
  FMAMatrixMultOperationsx64 in '..\FMAMatrixMultOperationsx64.pas',
  FMAMatrixMultTransposedOperations in '..\FMAMatrixMultTransposedOperations.pas',
  FMAMatrixMultTransposedOperationsx64 in '..\FMAMatrixMultTransposedOperationsx64.pas',
  FMAMatrixOperations in '..\FMAMatrixOperations.pas',
  FMAMatrixVectorMultOperations in '..\FMAMatrixVectorMultOperations.pas',
  FMAMatrixVectorMultOperationsx64 in '..\FMAMatrixVectorMultOperationsx64.pas',
  HouseholderReflectors in '..\HouseholderReflectors.pas',
  ICA in '..\ICA.pas',
  IncrementalPCA in '..\IncrementalPCA.pas',
  JSONReaderWriter in '..\JSONReaderWriter.pas',
  LinAlgCholesky in '..\LinAlgCholesky.pas',
  LinAlgLU in '..\LinAlgLU.pas',
  LinAlgQR in '..\LinAlgQR.pas',
  LinAlgSVD in '..\LinAlgSVD.pas',
  LinearAlgebraicEquations in '..\LinearAlgebraicEquations.pas',
  MathUtilFunc in '..\MathUtilFunc.pas',
  Matrix in '..\Matrix.pas',
  MatrixConst in '..\MatrixConst.pas',
  MatrixRotations in '..\MatrixRotations.pas',
  MtxThreadPool in '..\MtxThreadPool.pas',
  MtxTimer in '..\MtxTimer.pas',
  NNMF in '..\NNMF.pas',
  NonLinearFit in '..\NonLinearFit.pas',
  OptimizedFuncs in '..\OptimizedFuncs.pas',
  PCA in '..\PCA.pas',
  PLS in '..\PLS.pas',
  RandomEng in '..\RandomEng.pas',
  RBSplines in '..\RBSplines.pas',
  SimpleMatrixOperations in '..\SimpleMatrixOperations.pas',
  ThreadedMatrix in '..\ThreadedMatrix.pas',
  ThreadedMatrixOperations in '..\ThreadedMatrixOperations.pas',
  SimpleWinThreadPool in '..\win\SimpleWinThreadPool.pas',
  winCPUInfo in '..\win\winCPUInfo.pas',
  winRandomGen in '..\win\winRandomGen.pas',
  WinThreadPool in '..\win\WinThreadPool.pas',
  GCDDispatch in '..\mac\GCDDispatch.pas',
  linuxthrpool in '..\mac\linuxthrpool.pas',
  MacOsRandomGen in '..\mac\MacOsRandomGen.pas',
  MacOsThreadPool in '..\mac\MacOsThreadPool.pas',
  ASMVecConvolve in '..\ASMVecConvolve.pas',
  ASMVecConvolvex64 in '..\ASMVecConvolvex64.pas',
  AVXVecConvolve in '..\AVXVecConvolve.pas',
  AVXVecConvolvex64 in '..\AVXVecConvolvex64.pas',
  FMAVecConvolve in '..\FMAVecConvolve.pas',
  FMAVecConvolvex64 in '..\FMAVecConvolvex64.pas';

var
  runner : ITestRunner;
  results : IRunResults;
  logger : ITestLogger;
  nunitLogger : ITestLogger;
begin
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
  exit;
{$ENDIF}
  try
    //Check command line options, will exit if invalid
    TDUnitX.CheckCommandLine;
    //Create the test runner
    runner := TDUnitX.CreateRunner;
    //Tell the runner to use RTTI to find Fixtures
    runner.UseRTTI := True;
    //tell the runner how we will log things
    //Log to the console window
    logger := TDUnitXConsoleLogger.Create(true);
    runner.AddLogger(logger);
    //Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(GetCurrentDir + '\output.xml'); //TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);
    runner.FailsOnNoAsserts := False; //When true, Assertions must be made during tests;

    //Run tests
    results := runner.Execute;
    if not results.AllPassed then
      System.ExitCode := EXIT_ERRORS;

    {$IFNDEF CI}
    //We don't want this happening when running under CI.
    if TDUnitX.Options.ExitBehavior = TDUnitXExitBehavior.Pause then
    begin
      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;
    end;
    {$ENDIF}
  except
    on E: Exception do
      System.Writeln(E.ClassName, ': ', E.Message);
  end;
end.