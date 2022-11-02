; ModuleID = 'combined_ace_arbiter.bc'
source_filename = "combined_ace_arbiter.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Heufhaf\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @serves(i32 %0) #0 !dbg !16 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !23
  %5 = load i32, i32* %3, align 4, !dbg !24
  %6 = add nsw i32 %5, 1, !dbg !25
  %7 = srem i32 %6, 4, !dbg !26
  store i32 %7, i32* %4, align 4, !dbg !23
  %8 = load i32, i32* %4, align 4, !dbg !27
  %9 = icmp eq i32 %8, 0, !dbg !29
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 1
  %or.cond = select i1 %9, i1 true, i1 %11, !dbg !30
  br i1 %or.cond, label %12, label %13, !dbg !30

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !31
  br label %14, !dbg !31

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !32
  br label %14, !dbg !32

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %2, align 4, !dbg !33
  ret i32 %15, !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @same_player(i32 %0, i32 %1) #0 !dbg !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !39, metadata !DIExpression()), !dbg !40
  %5 = load i32, i32* %3, align 4, !dbg !41
  %6 = call i32 @serves(i32 %5), !dbg !42
  %7 = load i32, i32* %4, align 4, !dbg !43
  %8 = call i32 @serves(i32 %7), !dbg !44
  %9 = icmp eq i32 %6, %8, !dbg !45
  %10 = zext i1 %9 to i32, !dbg !45
  ret i32 %10, !dbg !46
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @legal(i32 %0, i32* %1, i32* %2) #0 !dbg !47 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !51, metadata !DIExpression()), !dbg !52
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !53, metadata !DIExpression()), !dbg !54
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %7, metadata !57, metadata !DIExpression()), !dbg !59
  %12 = load i32*, i32** %5, align 8, !dbg !60
  %13 = load i32, i32* %4, align 4, !dbg !61
  %14 = sext i32 %13 to i64, !dbg !60
  %15 = getelementptr inbounds i32, i32* %12, i64 %14, !dbg !60
  %16 = load i32, i32* %15, align 4, !dbg !60
  store i32 %16, i32* %7, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %8, metadata !62, metadata !DIExpression()), !dbg !63
  %17 = load i32*, i32** %6, align 8, !dbg !64
  %18 = load i32, i32* %4, align 4, !dbg !65
  %19 = sext i32 %18 to i64, !dbg !64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19, !dbg !64
  %21 = load i32, i32* %20, align 4, !dbg !64
  store i32 %21, i32* %8, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %9, metadata !66, metadata !DIExpression()), !dbg !67
  %22 = load i32*, i32** %5, align 8, !dbg !68
  %23 = load i32, i32* %4, align 4, !dbg !69
  %24 = add nsw i32 %23, 1, !dbg !70
  %25 = sext i32 %24 to i64, !dbg !68
  %26 = getelementptr inbounds i32, i32* %22, i64 %25, !dbg !68
  %27 = load i32, i32* %26, align 4, !dbg !68
  store i32 %27, i32* %9, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %10, metadata !71, metadata !DIExpression()), !dbg !72
  %28 = load i32*, i32** %6, align 8, !dbg !73
  %29 = load i32, i32* %4, align 4, !dbg !74
  %30 = add nsw i32 %29, 1, !dbg !75
  %31 = sext i32 %30 to i64, !dbg !73
  %32 = getelementptr inbounds i32, i32* %28, i64 %31, !dbg !73
  %33 = load i32, i32* %32, align 4, !dbg !73
  store i32 %33, i32* %10, align 4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %11, metadata !76, metadata !DIExpression()), !dbg !77
  %34 = load i32, i32* %7, align 4, !dbg !78
  %35 = load i32, i32* %8, align 4, !dbg !79
  %36 = add nsw i32 %34, %35, !dbg !80
  %37 = load i32, i32* %9, align 4, !dbg !81
  %38 = load i32, i32* %10, align 4, !dbg !82
  %39 = add nsw i32 %37, %38, !dbg !83
  %40 = call i32 @same_player(i32 %36, i32 %39), !dbg !84
  store i32 %40, i32* %11, align 4, !dbg !77
  %41 = load i32, i32* %7, align 4, !dbg !85
  %42 = load i32, i32* %8, align 4, !dbg !86
  %43 = add nsw i32 %41, %42, !dbg !87
  %44 = load i32, i32* %9, align 4, !dbg !88
  %45 = load i32, i32* %10, align 4, !dbg !89
  %46 = add nsw i32 %44, %45, !dbg !90
  %47 = icmp sle i32 %43, %46, !dbg !91
  br i1 %47, label %48, label %116, !dbg !92

48:                                               ; preds = %3
  %49 = load i32, i32* %7, align 4, !dbg !93
  %50 = icmp ne i32 %49, 11, !dbg !94
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 11
  %or.cond = select i1 %50, i1 true, i1 %52, !dbg !95
  br i1 %or.cond, label %53, label %116, !dbg !95

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4, !dbg !96
  %55 = icmp ne i32 %54, 11, !dbg !97
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 11
  %or.cond3 = select i1 %55, i1 true, i1 %57, !dbg !98
  br i1 %or.cond3, label %58, label %116, !dbg !98

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4, !dbg !99
  %60 = icmp ne i32 %59, 0, !dbg !99
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 11
  %or.cond5 = select i1 %60, i1 %62, i1 false, !dbg !100
  br i1 %or.cond5, label %63, label %67, !dbg !100

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4, !dbg !101
  %65 = load i32, i32* %10, align 4, !dbg !102
  %66 = icmp eq i32 %64, %65, !dbg !103
  br i1 %66, label %67, label %116, !dbg !104

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %11, align 4, !dbg !105
  %69 = icmp ne i32 %68, 0, !dbg !105
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 11
  %or.cond7 = select i1 %69, i1 %71, i1 false, !dbg !106
  br i1 %or.cond7, label %72, label %76, !dbg !106

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4, !dbg !107
  %74 = load i32, i32* %9, align 4, !dbg !108
  %75 = icmp eq i32 %73, %74, !dbg !109
  br i1 %75, label %76, label %116, !dbg !110

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %11, align 4, !dbg !111
  %78 = icmp eq i32 %77, 0, !dbg !111
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 11
  %or.cond9 = select i1 %78, i1 %80, i1 false, !dbg !112
  br i1 %or.cond9, label %81, label %85, !dbg !112

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4, !dbg !113
  %83 = load i32, i32* %9, align 4, !dbg !114
  %84 = icmp eq i32 %82, %83, !dbg !115
  br i1 %84, label %85, label %116, !dbg !116

85:                                               ; preds = %81, %76
  %86 = load i32, i32* %11, align 4, !dbg !117
  %87 = icmp eq i32 %86, 0, !dbg !117
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 11
  %or.cond11 = select i1 %87, i1 %89, i1 false, !dbg !118
  br i1 %or.cond11, label %90, label %94, !dbg !118

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4, !dbg !119
  %92 = load i32, i32* %10, align 4, !dbg !120
  %93 = icmp eq i32 %91, %92, !dbg !121
  br i1 %93, label %94, label %116, !dbg !122

94:                                               ; preds = %90, %85
  %95 = load i32, i32* %11, align 4, !dbg !123
  %96 = icmp ne i32 %95, 0, !dbg !123
  br i1 %96, label %97, label %105, !dbg !124

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4, !dbg !125
  %99 = load i32, i32* %7, align 4, !dbg !126
  %100 = icmp sge i32 %98, %99, !dbg !127
  br i1 %100, label %101, label %116, !dbg !128

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4, !dbg !129
  %103 = load i32, i32* %8, align 4, !dbg !130
  %104 = icmp sge i32 %102, %103, !dbg !131
  br i1 %104, label %105, label %116, !dbg !132

105:                                              ; preds = %101, %94
  %106 = load i32, i32* %11, align 4, !dbg !133
  %107 = icmp ne i32 %106, 0, !dbg !133
  br i1 %107, label %116, label %108, !dbg !134

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4, !dbg !135
  %110 = load i32, i32* %8, align 4, !dbg !136
  %111 = icmp sge i32 %109, %110, !dbg !137
  %112 = load i32, i32* %10, align 4, !dbg !138
  %113 = load i32, i32* %7, align 4, !dbg !138
  %114 = icmp sge i32 %112, %113, !dbg !138
  %115 = select i1 %111, i1 %114, i1 false, !dbg !138
  br label %116, !dbg !138

116:                                              ; preds = %105, %108, %53, %48, %101, %97, %90, %81, %72, %63, %3
  %117 = phi i1 [ false, %101 ], [ false, %97 ], [ false, %90 ], [ false, %81 ], [ false, %72 ], [ false, %63 ], [ false, %3 ], [ false, %48 ], [ false, %53 ], [ true, %105 ], [ %115, %108 ], !dbg !139
  %118 = zext i1 %117 to i32, !dbg !132
  ret i32 %118, !dbg !140
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ace_arbiter_1(i32 %0, i32* %1, i32* %2) #0 !dbg !141 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !142, metadata !DIExpression()), !dbg !143
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !144, metadata !DIExpression()), !dbg !145
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %8, metadata !148, metadata !DIExpression()), !dbg !150
  %10 = load i32, i32* %5, align 4, !dbg !151
  store i32 %10, i32* %8, align 4, !dbg !150
  br label %11, !dbg !152

11:                                               ; preds = %14, %3
  %12 = load i32, i32* %8, align 4, !dbg !153
  %13 = icmp sgt i32 %12, 0, !dbg !155
  br i1 %13, label %14, label %37, !dbg !156

14:                                               ; preds = %11
  %15 = load i32*, i32** %6, align 8, !dbg !157
  %16 = load i32, i32* %8, align 4, !dbg !159
  %17 = sub nsw i32 %16, 1, !dbg !160
  %18 = sext i32 %17 to i64, !dbg !157
  %19 = getelementptr inbounds i32, i32* %15, i64 %18, !dbg !157
  %20 = load i32, i32* %19, align 4, !dbg !157
  %21 = load i32*, i32** %6, align 8, !dbg !161
  %22 = load i32, i32* %8, align 4, !dbg !162
  %23 = sext i32 %22 to i64, !dbg !161
  %24 = getelementptr inbounds i32, i32* %21, i64 %23, !dbg !161
  store i32 %20, i32* %24, align 4, !dbg !163
  %25 = load i32*, i32** %7, align 8, !dbg !164
  %26 = load i32, i32* %8, align 4, !dbg !165
  %27 = sub nsw i32 %26, 1, !dbg !166
  %28 = sext i32 %27 to i64, !dbg !164
  %29 = getelementptr inbounds i32, i32* %25, i64 %28, !dbg !164
  %30 = load i32, i32* %29, align 4, !dbg !164
  %31 = load i32*, i32** %7, align 8, !dbg !167
  %32 = load i32, i32* %8, align 4, !dbg !168
  %33 = sext i32 %32 to i64, !dbg !167
  %34 = getelementptr inbounds i32, i32* %31, i64 %33, !dbg !167
  store i32 %30, i32* %34, align 4, !dbg !169
  %35 = load i32, i32* %8, align 4, !dbg !170
  %36 = add nsw i32 %35, -1, !dbg !170
  store i32 %36, i32* %8, align 4, !dbg !170
  br label %11, !dbg !171, !llvm.loop !172

37:                                               ; preds = %11
  %38 = load i32*, i32** %7, align 8, !dbg !175
  %39 = getelementptr inbounds i32, i32* %38, i64 0, !dbg !175
  store i32 0, i32* %39, align 4, !dbg !176
  %40 = load i32*, i32** %6, align 8, !dbg !177
  %41 = getelementptr inbounds i32, i32* %40, i64 0, !dbg !177
  store i32 0, i32* %41, align 4, !dbg !178
  call void @llvm.dbg.declare(metadata i32* %9, metadata !179, metadata !DIExpression()), !dbg !181
  store i32 0, i32* %9, align 4, !dbg !181
  br label %42, !dbg !182

42:                                               ; preds = %56, %37
  %43 = load i32, i32* %9, align 4, !dbg !183
  %44 = load i32, i32* %5, align 4, !dbg !185
  %45 = sub nsw i32 %44, 1, !dbg !186
  %46 = icmp sle i32 %43, %45, !dbg !187
  br i1 %46, label %47, label %59, !dbg !188

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4, !dbg !189
  %49 = load i32*, i32** %6, align 8, !dbg !191
  %50 = load i32*, i32** %7, align 8, !dbg !192
  %51 = call i32 @legal(i32 %48, i32* %49, i32* %50), !dbg !193
  %52 = icmp ne i32 %51, 0, !dbg !193
  br i1 %52, label %56, label %53, !dbg !194

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4, !dbg !195
  %55 = add nsw i32 %54, 1, !dbg !196
  store i32 %55, i32* %4, align 4, !dbg !197
  br label %60, !dbg !197

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4, !dbg !198
  %58 = add nsw i32 %57, 1, !dbg !198
  store i32 %58, i32* %9, align 4, !dbg !198
  br label %42, !dbg !199, !llvm.loop !200

59:                                               ; preds = %42
  store i32 0, i32* %4, align 4, !dbg !202
  br label %60, !dbg !202

60:                                               ; preds = %59, %53
  %61 = load i32, i32* %4, align 4, !dbg !203
  ret i32 %61, !dbg !203
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @playerTurn(i32 %0, i32 %1) #0 !dbg !204 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !205, metadata !DIExpression()), !dbg !206
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %5, metadata !209, metadata !DIExpression()), !dbg !210
  %6 = load i32, i32* %3, align 4, !dbg !211
  %7 = load i32, i32* %4, align 4, !dbg !212
  %8 = srem i32 %7, 4, !dbg !213
  %9 = add nsw i32 %6, %8, !dbg !214
  store i32 %9, i32* %5, align 4, !dbg !210
  %10 = load i32, i32* %5, align 4, !dbg !215
  %11 = icmp eq i32 %10, 3, !dbg !216
  %12 = load i32, i32* %5, align 4, !dbg !217
  %13 = icmp eq i32 %12, 0, !dbg !217
  %14 = select i1 %11, i1 true, i1 %13, !dbg !217
  %15 = zext i1 %14 to i32, !dbg !217
  ret i32 %15, !dbg !218
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @run(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 !dbg !219 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !222, metadata !DIExpression()), !dbg !223
  store i32 %1, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !224, metadata !DIExpression()), !dbg !225
  store i32 %2, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !226, metadata !DIExpression()), !dbg !227
  store i32 %3, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !228, metadata !DIExpression()), !dbg !229
  store i32 %4, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !230, metadata !DIExpression()), !dbg !231
  store i32 %5, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !232, metadata !DIExpression()), !dbg !233
  store i32* %6, i32** %16, align 8
  call void @llvm.dbg.declare(metadata i32** %16, metadata !234, metadata !DIExpression()), !dbg !235
  store i32* %7, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !236, metadata !DIExpression()), !dbg !237
  %19 = load i32, i32* %14, align 4, !dbg !238
  %20 = load i32, i32* %15, align 4, !dbg !240
  %21 = icmp eq i32 %19, %20, !dbg !241
  br i1 %21, label %22, label %23, !dbg !242

22:                                               ; preds = %8
  store i32 0, i32* %9, align 4, !dbg !243
  br label %185, !dbg !243

23:                                               ; preds = %8
  %24 = load i32*, i32** %16, align 8, !dbg !244
  %25 = load i32, i32* %14, align 4, !dbg !246
  %26 = sext i32 %25 to i64, !dbg !244
  %27 = getelementptr inbounds i32, i32* %24, i64 %26, !dbg !244
  %28 = load i32, i32* %27, align 4, !dbg !244
  %29 = icmp eq i32 %28, 11, !dbg !247
  br i1 %29, label %30, label %39, !dbg !248

30:                                               ; preds = %23
  %31 = load i32*, i32** %17, align 8, !dbg !249
  %32 = load i32, i32* %14, align 4, !dbg !250
  %33 = sext i32 %32 to i64, !dbg !249
  %34 = getelementptr inbounds i32, i32* %31, i64 %33, !dbg !249
  %35 = load i32, i32* %34, align 4, !dbg !249
  %36 = icmp eq i32 %35, 11, !dbg !251
  br i1 %36, label %37, label %39, !dbg !252

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4, !dbg !253
  store i32 %38, i32* %9, align 4, !dbg !254
  br label %185, !dbg !254

39:                                               ; preds = %30, %23
  %40 = load i32, i32* %10, align 4, !dbg !255
  %41 = load i32*, i32** %16, align 8, !dbg !257
  %42 = load i32, i32* %14, align 4, !dbg !258
  %43 = sext i32 %42 to i64, !dbg !257
  %44 = getelementptr inbounds i32, i32* %41, i64 %43, !dbg !257
  %45 = load i32, i32* %44, align 4, !dbg !257
  %46 = icmp eq i32 %40, %45, !dbg !259
  br i1 %46, label %47, label %67, !dbg !260

47:                                               ; preds = %39
  %48 = load i32, i32* %11, align 4, !dbg !261
  %49 = load i32*, i32** %17, align 8, !dbg !262
  %50 = load i32, i32* %14, align 4, !dbg !263
  %51 = sext i32 %50 to i64, !dbg !262
  %52 = getelementptr inbounds i32, i32* %49, i64 %51, !dbg !262
  %53 = load i32, i32* %52, align 4, !dbg !262
  %54 = icmp eq i32 %48, %53, !dbg !264
  br i1 %54, label %55, label %67, !dbg !265

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4, !dbg !266
  %57 = load i32, i32* %11, align 4, !dbg !267
  %58 = load i32, i32* %12, align 4, !dbg !268
  %59 = add nsw i32 %58, 1, !dbg !269
  %60 = load i32, i32* %13, align 4, !dbg !270
  %61 = load i32, i32* %14, align 4, !dbg !271
  %62 = add nsw i32 %61, 1, !dbg !272
  %63 = load i32, i32* %15, align 4, !dbg !273
  %64 = load i32*, i32** %16, align 8, !dbg !274
  %65 = load i32*, i32** %17, align 8, !dbg !275
  %66 = call i32 @run(i32 %56, i32 %57, i32 %59, i32 %60, i32 %62, i32 %63, i32* %64, i32* %65), !dbg !276
  store i32 %66, i32* %9, align 4, !dbg !277
  br label %185, !dbg !277

67:                                               ; preds = %47, %39
  %68 = load i32*, i32** %16, align 8, !dbg !278
  %69 = load i32, i32* %14, align 4, !dbg !280
  %70 = sext i32 %69 to i64, !dbg !278
  %71 = getelementptr inbounds i32, i32* %68, i64 %70, !dbg !278
  %72 = load i32, i32* %71, align 4, !dbg !278
  %73 = load i32*, i32** %17, align 8, !dbg !281
  %74 = load i32, i32* %14, align 4, !dbg !282
  %75 = sext i32 %74 to i64, !dbg !281
  %76 = getelementptr inbounds i32, i32* %73, i64 %75, !dbg !281
  %77 = load i32, i32* %76, align 4, !dbg !281
  %78 = add nsw i32 %72, %77, !dbg !283
  %79 = load i32, i32* %10, align 4, !dbg !284
  %80 = load i32, i32* %11, align 4, !dbg !285
  %81 = add nsw i32 %79, %80, !dbg !286
  %82 = icmp sle i32 %78, %81, !dbg !287
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  %or.cond = select i1 %82, i1 true, i1 %84, !dbg !288
  br i1 %or.cond, label %85, label %87, !dbg !288

85:                                               ; preds = %67
  %86 = load i32, i32* %12, align 4, !dbg !289
  store i32 %86, i32* %9, align 4, !dbg !290
  br label %185, !dbg !290

87:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata i32* %18, metadata !291, metadata !DIExpression()), !dbg !292
  %88 = load i32, i32* %10, align 4, !dbg !293
  %89 = load i32, i32* %11, align 4, !dbg !294
  %90 = call i32 @playerTurn(i32 %88, i32 %89), !dbg !295
  %91 = load i32*, i32** %16, align 8, !dbg !296
  %92 = load i32, i32* %14, align 4, !dbg !297
  %93 = sext i32 %92 to i64, !dbg !296
  %94 = getelementptr inbounds i32, i32* %91, i64 %93, !dbg !296
  %95 = load i32, i32* %94, align 4, !dbg !296
  %96 = load i32*, i32** %17, align 8, !dbg !298
  %97 = load i32, i32* %14, align 4, !dbg !299
  %98 = sext i32 %97 to i64, !dbg !298
  %99 = getelementptr inbounds i32, i32* %96, i64 %98, !dbg !298
  %100 = load i32, i32* %99, align 4, !dbg !298
  %101 = call i32 @playerTurn(i32 %95, i32 %100), !dbg !300
  %102 = icmp eq i32 %90, %101, !dbg !301
  br i1 %102, label %103, label %122, !dbg !302

103:                                              ; preds = %87
  %104 = load i32, i32* %10, align 4, !dbg !303
  %105 = load i32*, i32** %16, align 8, !dbg !304
  %106 = load i32, i32* %14, align 4, !dbg !305
  %107 = sext i32 %106 to i64, !dbg !304
  %108 = getelementptr inbounds i32, i32* %105, i64 %107, !dbg !304
  %109 = load i32, i32* %108, align 4, !dbg !304
  %110 = icmp sle i32 %104, %109, !dbg !306
  br i1 %110, label %111, label %119, !dbg !307

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4, !dbg !308
  %113 = load i32*, i32** %17, align 8, !dbg !309
  %114 = load i32, i32* %14, align 4, !dbg !310
  %115 = sext i32 %114 to i64, !dbg !309
  %116 = getelementptr inbounds i32, i32* %113, i64 %115, !dbg !309
  %117 = load i32, i32* %116, align 4, !dbg !309
  %118 = icmp sle i32 %112, %117, !dbg !311
  br label %119

119:                                              ; preds = %111, %103
  %120 = phi i1 [ false, %103 ], [ %118, %111 ], !dbg !312
  %121 = zext i1 %120 to i32, !dbg !307
  br label %141, !dbg !302

122:                                              ; preds = %87
  %123 = load i32, i32* %10, align 4, !dbg !313
  %124 = load i32*, i32** %17, align 8, !dbg !314
  %125 = load i32, i32* %14, align 4, !dbg !315
  %126 = sext i32 %125 to i64, !dbg !314
  %127 = getelementptr inbounds i32, i32* %124, i64 %126, !dbg !314
  %128 = load i32, i32* %127, align 4, !dbg !314
  %129 = icmp sle i32 %123, %128, !dbg !316
  br i1 %129, label %130, label %138, !dbg !317

130:                                              ; preds = %122
  %131 = load i32, i32* %11, align 4, !dbg !318
  %132 = load i32*, i32** %16, align 8, !dbg !319
  %133 = load i32, i32* %14, align 4, !dbg !320
  %134 = sext i32 %133 to i64, !dbg !319
  %135 = getelementptr inbounds i32, i32* %132, i64 %134, !dbg !319
  %136 = load i32, i32* %135, align 4, !dbg !319
  %137 = icmp sle i32 %131, %136, !dbg !321
  br label %138

138:                                              ; preds = %130, %122
  %139 = phi i1 [ false, %122 ], [ %137, %130 ], !dbg !312
  %140 = zext i1 %139 to i32, !dbg !317
  br label %141, !dbg !302

141:                                              ; preds = %138, %119
  %142 = phi i32 [ %121, %119 ], [ %140, %138 ], !dbg !302
  store i32 %142, i32* %18, align 4, !dbg !292
  %143 = load i32, i32* %18, align 4, !dbg !322
  %144 = icmp ne i32 %143, 0, !dbg !322
  br i1 %144, label %145, label %183, !dbg !324

145:                                              ; preds = %141
  %146 = load i32*, i32** %16, align 8, !dbg !325
  %147 = load i32, i32* %14, align 4, !dbg !326
  %148 = sext i32 %147 to i64, !dbg !325
  %149 = getelementptr inbounds i32, i32* %146, i64 %148, !dbg !325
  %150 = load i32, i32* %149, align 4, !dbg !325
  %151 = load i32*, i32** %17, align 8, !dbg !327
  %152 = load i32, i32* %14, align 4, !dbg !328
  %153 = sext i32 %152 to i64, !dbg !327
  %154 = getelementptr inbounds i32, i32* %151, i64 %153, !dbg !327
  %155 = load i32, i32* %154, align 4, !dbg !327
  %156 = load i32, i32* %12, align 4, !dbg !329
  %157 = add nsw i32 %156, 1, !dbg !330
  %158 = load i32, i32* %13, align 4, !dbg !331
  %159 = icmp ne i32 %158, 0, !dbg !331
  br i1 %159, label %174, label %160, !dbg !332

160:                                              ; preds = %145
  %161 = load i32*, i32** %16, align 8, !dbg !333
  %162 = load i32, i32* %14, align 4, !dbg !334
  %163 = sext i32 %162 to i64, !dbg !333
  %164 = getelementptr inbounds i32, i32* %161, i64 %163, !dbg !333
  %165 = load i32, i32* %164, align 4, !dbg !333
  %166 = icmp eq i32 %165, 11, !dbg !335
  br i1 %166, label %174, label %167, !dbg !336

167:                                              ; preds = %160
  %168 = load i32*, i32** %17, align 8, !dbg !337
  %169 = load i32, i32* %14, align 4, !dbg !338
  %170 = sext i32 %169 to i64, !dbg !337
  %171 = getelementptr inbounds i32, i32* %168, i64 %170, !dbg !337
  %172 = load i32, i32* %171, align 4, !dbg !337
  %173 = icmp eq i32 %172, 11, !dbg !339
  br label %174, !dbg !336

174:                                              ; preds = %167, %160, %145
  %175 = phi i1 [ true, %160 ], [ true, %145 ], [ %173, %167 ]
  %176 = zext i1 %175 to i32, !dbg !336
  %177 = load i32, i32* %14, align 4, !dbg !340
  %178 = add nsw i32 %177, 1, !dbg !341
  %179 = load i32, i32* %15, align 4, !dbg !342
  %180 = load i32*, i32** %16, align 8, !dbg !343
  %181 = load i32*, i32** %17, align 8, !dbg !344
  %182 = call i32 @run(i32 %150, i32 %155, i32 %157, i32 %176, i32 %178, i32 %179, i32* %180, i32* %181), !dbg !345
  store i32 %182, i32* %9, align 4, !dbg !346
  br label %185, !dbg !346

183:                                              ; preds = %141
  %184 = load i32, i32* %12, align 4, !dbg !347
  store i32 %184, i32* %9, align 4, !dbg !348
  br label %185, !dbg !348

185:                                              ; preds = %183, %174, %85, %55, %37, %22
  %186 = load i32, i32* %9, align 4, !dbg !349
  ret i32 %186, !dbg !349
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ace_arbiter_2(i32 %0, i32* %1, i32* %2) #0 !dbg !350 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !351, metadata !DIExpression()), !dbg !352
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !353, metadata !DIExpression()), !dbg !354
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !355, metadata !DIExpression()), !dbg !356
  %7 = load i32, i32* %4, align 4, !dbg !357
  %8 = load i32*, i32** %5, align 8, !dbg !358
  %9 = load i32*, i32** %6, align 8, !dbg !359
  %10 = call i32 @run(i32 0, i32 0, i32 1, i32 0, i32 0, i32 %7, i32* %8, i32* %9), !dbg !360
  ret i32 %10, !dbg !361
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @who_serves(i32 %0) #0 !dbg !362 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !363, metadata !DIExpression()), !dbg !364
  %4 = load i32, i32* %2, align 4, !dbg !365
  %5 = add nsw i32 %4, 1, !dbg !366
  store i32 %5, i32* %2, align 4, !dbg !367
  call void @llvm.dbg.declare(metadata i32* %3, metadata !368, metadata !DIExpression()), !dbg !369
  %6 = load i32, i32* %2, align 4, !dbg !370
  %7 = srem i32 %6, 4, !dbg !372
  %8 = icmp eq i32 %7, 0, !dbg !373
  br i1 %8, label %13, label %9, !dbg !374

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4, !dbg !375
  %11 = srem i32 %10, 4, !dbg !376
  %12 = icmp eq i32 %11, 1, !dbg !377
  br i1 %12, label %13, label %14, !dbg !378

13:                                               ; preds = %9, %1
  store i32 0, i32* %3, align 4, !dbg !379
  br label %14, !dbg !380

14:                                               ; preds = %13, %9
  %15 = load i32, i32* %2, align 4, !dbg !381
  %16 = srem i32 %15, 4, !dbg !383
  %17 = icmp eq i32 %16, 2, !dbg !384
  br i1 %17, label %22, label %18, !dbg !385

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4, !dbg !386
  %20 = srem i32 %19, 4, !dbg !387
  %21 = icmp eq i32 %20, 3, !dbg !388
  br i1 %21, label %22, label %23, !dbg !389

22:                                               ; preds = %18, %14
  store i32 1, i32* %3, align 4, !dbg !390
  br label %23, !dbg !391

23:                                               ; preds = %22, %18
  %24 = load i32, i32* %3, align 4, !dbg !392
  ret i32 %24, !dbg !393
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ace_arbiter_3(i32 %0, i32* %1, i32* %2) #0 !dbg !394 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !395, metadata !DIExpression()), !dbg !396
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !397, metadata !DIExpression()), !dbg !398
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata i32* %8, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %9, metadata !403, metadata !DIExpression()), !dbg !405
  %21 = load i32, i32* %5, align 4, !dbg !406
  store i32 %21, i32* %9, align 4, !dbg !405
  br label %22, !dbg !407

22:                                               ; preds = %25, %3
  %23 = load i32, i32* %9, align 4, !dbg !408
  %24 = icmp sgt i32 %23, 0, !dbg !410
  br i1 %24, label %25, label %48, !dbg !411

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8, !dbg !412
  %27 = load i32, i32* %9, align 4, !dbg !414
  %28 = sub nsw i32 %27, 1, !dbg !415
  %29 = sext i32 %28 to i64, !dbg !412
  %30 = getelementptr inbounds i32, i32* %26, i64 %29, !dbg !412
  %31 = load i32, i32* %30, align 4, !dbg !412
  %32 = load i32*, i32** %6, align 8, !dbg !416
  %33 = load i32, i32* %9, align 4, !dbg !417
  %34 = sext i32 %33 to i64, !dbg !416
  %35 = getelementptr inbounds i32, i32* %32, i64 %34, !dbg !416
  store i32 %31, i32* %35, align 4, !dbg !418
  %36 = load i32*, i32** %7, align 8, !dbg !419
  %37 = load i32, i32* %9, align 4, !dbg !420
  %38 = sub nsw i32 %37, 1, !dbg !421
  %39 = sext i32 %38 to i64, !dbg !419
  %40 = getelementptr inbounds i32, i32* %36, i64 %39, !dbg !419
  %41 = load i32, i32* %40, align 4, !dbg !419
  %42 = load i32*, i32** %7, align 8, !dbg !422
  %43 = load i32, i32* %9, align 4, !dbg !423
  %44 = sext i32 %43 to i64, !dbg !422
  %45 = getelementptr inbounds i32, i32* %42, i64 %44, !dbg !422
  store i32 %41, i32* %45, align 4, !dbg !424
  %46 = load i32, i32* %9, align 4, !dbg !425
  %47 = add nsw i32 %46, -1, !dbg !425
  store i32 %47, i32* %9, align 4, !dbg !425
  br label %22, !dbg !426, !llvm.loop !427

48:                                               ; preds = %22
  %49 = load i32*, i32** %7, align 8, !dbg !429
  %50 = getelementptr inbounds i32, i32* %49, i64 0, !dbg !429
  store i32 0, i32* %50, align 4, !dbg !430
  %51 = load i32*, i32** %6, align 8, !dbg !431
  %52 = getelementptr inbounds i32, i32* %51, i64 0, !dbg !431
  store i32 0, i32* %52, align 4, !dbg !432
  %53 = load i32, i32* %5, align 4, !dbg !433
  %54 = add nsw i32 %53, 1, !dbg !434
  store i32 %54, i32* %5, align 4, !dbg !435
  call void @llvm.dbg.declare(metadata i32* %10, metadata !436, metadata !DIExpression()), !dbg !437
  store i32 0, i32* %10, align 4, !dbg !437
  call void @llvm.dbg.declare(metadata i32* %11, metadata !438, metadata !DIExpression()), !dbg !439
  store i32 0, i32* %11, align 4, !dbg !439
  call void @llvm.dbg.declare(metadata i32* %12, metadata !440, metadata !DIExpression()), !dbg !442
  store i32 0, i32* %12, align 4, !dbg !442
  br label %55, !dbg !443

55:                                               ; preds = %193, %48
  %56 = load i32, i32* %12, align 4, !dbg !444
  %57 = load i32, i32* %5, align 4, !dbg !446
  %58 = sub nsw i32 %57, 1, !dbg !447
  %59 = icmp slt i32 %56, %58, !dbg !448
  br i1 %59, label %60, label %196, !dbg !449

60:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata i32* %13, metadata !450, metadata !DIExpression()), !dbg !452
  %61 = load i32*, i32** %6, align 8, !dbg !453
  %62 = load i32, i32* %12, align 4, !dbg !454
  %63 = sext i32 %62 to i64, !dbg !453
  %64 = getelementptr inbounds i32, i32* %61, i64 %63, !dbg !453
  %65 = load i32, i32* %64, align 4, !dbg !453
  store i32 %65, i32* %13, align 4, !dbg !452
  call void @llvm.dbg.declare(metadata i32* %14, metadata !455, metadata !DIExpression()), !dbg !456
  %66 = load i32*, i32** %7, align 8, !dbg !457
  %67 = load i32, i32* %12, align 4, !dbg !458
  %68 = sext i32 %67 to i64, !dbg !457
  %69 = getelementptr inbounds i32, i32* %66, i64 %68, !dbg !457
  %70 = load i32, i32* %69, align 4, !dbg !457
  store i32 %70, i32* %14, align 4, !dbg !456
  call void @llvm.dbg.declare(metadata i32* %15, metadata !459, metadata !DIExpression()), !dbg !460
  %71 = load i32*, i32** %6, align 8, !dbg !461
  %72 = load i32, i32* %12, align 4, !dbg !462
  %73 = add nsw i32 %72, 1, !dbg !463
  %74 = sext i32 %73 to i64, !dbg !461
  %75 = getelementptr inbounds i32, i32* %71, i64 %74, !dbg !461
  %76 = load i32, i32* %75, align 4, !dbg !461
  store i32 %76, i32* %15, align 4, !dbg !460
  call void @llvm.dbg.declare(metadata i32* %16, metadata !464, metadata !DIExpression()), !dbg !465
  %77 = load i32*, i32** %7, align 8, !dbg !466
  %78 = load i32, i32* %12, align 4, !dbg !467
  %79 = add nsw i32 %78, 1, !dbg !468
  %80 = sext i32 %79 to i64, !dbg !466
  %81 = getelementptr inbounds i32, i32* %77, i64 %80, !dbg !466
  %82 = load i32, i32* %81, align 4, !dbg !466
  store i32 %82, i32* %16, align 4, !dbg !465
  call void @llvm.dbg.declare(metadata i32* %17, metadata !469, metadata !DIExpression()), !dbg !470
  %83 = load i32, i32* %13, align 4, !dbg !471
  %84 = load i32, i32* %14, align 4, !dbg !472
  %85 = add nsw i32 %83, %84, !dbg !473
  store i32 %85, i32* %17, align 4, !dbg !470
  call void @llvm.dbg.declare(metadata i32* %18, metadata !474, metadata !DIExpression()), !dbg !475
  %86 = load i32, i32* %15, align 4, !dbg !476
  %87 = load i32, i32* %16, align 4, !dbg !477
  %88 = add nsw i32 %86, %87, !dbg !478
  store i32 %88, i32* %18, align 4, !dbg !475
  call void @llvm.dbg.declare(metadata i32* %19, metadata !479, metadata !DIExpression()), !dbg !480
  %89 = load i32, i32* %17, align 4, !dbg !481
  %90 = call i32 @who_serves(i32 %89), !dbg !482
  store i32 %90, i32* %19, align 4, !dbg !480
  call void @llvm.dbg.declare(metadata i32* %20, metadata !483, metadata !DIExpression()), !dbg !484
  %91 = load i32, i32* %18, align 4, !dbg !485
  %92 = call i32 @who_serves(i32 %91), !dbg !486
  store i32 %92, i32* %20, align 4, !dbg !484
  %93 = load i32, i32* %19, align 4, !dbg !487
  %94 = load i32, i32* %20, align 4, !dbg !488
  %95 = icmp eq i32 %93, %94, !dbg !489
  %96 = zext i1 %95 to i32, !dbg !489
  store i32 %96, i32* %8, align 4, !dbg !490
  %97 = load i32, i32* %13, align 4, !dbg !491
  %98 = icmp sgt i32 %97, 11, !dbg !493
  %99 = load i32, i32* %14, align 4
  %100 = icmp sgt i32 %99, 11
  %or.cond = select i1 %98, i1 true, i1 %100, !dbg !494
  br i1 %or.cond, label %106, label %101, !dbg !494

101:                                              ; preds = %60
  %102 = load i32, i32* %13, align 4, !dbg !495
  %103 = icmp eq i32 %102, 11, !dbg !496
  %104 = load i32, i32* %14, align 4
  %105 = icmp eq i32 %104, 11
  %or.cond3 = select i1 %103, i1 %105, i1 false, !dbg !497
  br i1 %or.cond3, label %106, label %108, !dbg !497

106:                                              ; preds = %101, %60
  store i32 1, i32* %10, align 4, !dbg !498
  %107 = load i32, i32* %12, align 4, !dbg !500
  store i32 %107, i32* %11, align 4, !dbg !501
  br label %196, !dbg !502

108:                                              ; preds = %101
  %109 = load i32, i32* %15, align 4, !dbg !503
  %110 = icmp sgt i32 %109, 11, !dbg !505
  %111 = load i32, i32* %16, align 4
  %112 = icmp sgt i32 %111, 11
  %or.cond5 = select i1 %110, i1 true, i1 %112, !dbg !506
  br i1 %or.cond5, label %118, label %113, !dbg !506

113:                                              ; preds = %108
  %114 = load i32, i32* %15, align 4, !dbg !507
  %115 = icmp eq i32 %114, 11, !dbg !508
  %116 = load i32, i32* %16, align 4
  %117 = icmp eq i32 %116, 11
  %or.cond7 = select i1 %115, i1 %117, i1 false, !dbg !509
  br i1 %or.cond7, label %118, label %121, !dbg !509

118:                                              ; preds = %113, %108
  store i32 1, i32* %10, align 4, !dbg !510
  %119 = load i32, i32* %12, align 4, !dbg !512
  %120 = add nsw i32 %119, 1, !dbg !513
  store i32 %120, i32* %11, align 4, !dbg !514
  br label %196, !dbg !515

121:                                              ; preds = %113
  %122 = load i32, i32* %8, align 4, !dbg !516
  %123 = icmp ne i32 %122, 0, !dbg !516
  br i1 %123, label %141, label %124, !dbg !518

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4, !dbg !519
  %126 = icmp eq i32 %125, 11, !dbg !521
  br i1 %126, label %127, label %131, !dbg !522

127:                                              ; preds = %124
  %128 = load i32, i32* %14, align 4, !dbg !523
  %129 = load i32, i32* %15, align 4, !dbg !524
  %130 = icmp ne i32 %128, %129, !dbg !525
  br i1 %130, label %138, label %131, !dbg !526

131:                                              ; preds = %127, %124
  %132 = load i32, i32* %14, align 4, !dbg !527
  %133 = icmp eq i32 %132, 11, !dbg !528
  br i1 %133, label %134, label %141, !dbg !529

134:                                              ; preds = %131
  %135 = load i32, i32* %13, align 4, !dbg !530
  %136 = load i32, i32* %16, align 4, !dbg !531
  %137 = icmp ne i32 %135, %136, !dbg !532
  br i1 %137, label %138, label %141, !dbg !533

138:                                              ; preds = %134, %127
  store i32 1, i32* %10, align 4, !dbg !534
  %139 = load i32, i32* %12, align 4, !dbg !536
  %140 = add nsw i32 %139, 1, !dbg !537
  store i32 %140, i32* %11, align 4, !dbg !538
  br label %196, !dbg !539

141:                                              ; preds = %131, %134, %121
  %142 = load i32, i32* %8, align 4, !dbg !540
  %143 = icmp ne i32 %142, 0, !dbg !540
  br i1 %143, label %144, label %161, !dbg !542

144:                                              ; preds = %141
  %145 = load i32, i32* %13, align 4, !dbg !543
  %146 = icmp eq i32 %145, 11, !dbg !545
  br i1 %146, label %147, label %151, !dbg !546

147:                                              ; preds = %144
  %148 = load i32, i32* %14, align 4, !dbg !547
  %149 = load i32, i32* %16, align 4, !dbg !548
  %150 = icmp ne i32 %148, %149, !dbg !549
  br i1 %150, label %158, label %151, !dbg !550

151:                                              ; preds = %147, %144
  %152 = load i32, i32* %14, align 4, !dbg !551
  %153 = icmp eq i32 %152, 11, !dbg !552
  br i1 %153, label %154, label %161, !dbg !553

154:                                              ; preds = %151
  %155 = load i32, i32* %13, align 4, !dbg !554
  %156 = load i32, i32* %15, align 4, !dbg !555
  %157 = icmp ne i32 %155, %156, !dbg !556
  br i1 %157, label %158, label %161, !dbg !557

158:                                              ; preds = %154, %147
  store i32 1, i32* %10, align 4, !dbg !558
  %159 = load i32, i32* %12, align 4, !dbg !560
  %160 = add nsw i32 %159, 1, !dbg !561
  store i32 %160, i32* %11, align 4, !dbg !562
  br label %196, !dbg !563

161:                                              ; preds = %151, %154, %141
  %162 = load i32, i32* %18, align 4, !dbg !564
  %163 = load i32, i32* %17, align 4, !dbg !566
  %164 = icmp slt i32 %162, %163, !dbg !567
  br i1 %164, label %165, label %168, !dbg !568

165:                                              ; preds = %161
  %166 = load i32, i32* %12, align 4, !dbg !569
  %167 = add nsw i32 %166, 1, !dbg !571
  store i32 %167, i32* %11, align 4, !dbg !572
  store i32 1, i32* %10, align 4, !dbg !573
  br label %196, !dbg !574

168:                                              ; preds = %161
  %169 = load i32, i32* %8, align 4, !dbg !575
  %170 = icmp ne i32 %169, 0, !dbg !575
  br i1 %170, label %171, label %182, !dbg !577

171:                                              ; preds = %168
  %172 = load i32, i32* %15, align 4, !dbg !578
  %173 = load i32, i32* %13, align 4, !dbg !581
  %174 = icmp slt i32 %172, %173, !dbg !582
  br i1 %174, label %179, label %175, !dbg !583

175:                                              ; preds = %171
  %176 = load i32, i32* %16, align 4, !dbg !584
  %177 = load i32, i32* %14, align 4, !dbg !585
  %178 = icmp slt i32 %176, %177, !dbg !586
  br i1 %178, label %179, label %193, !dbg !587

179:                                              ; preds = %175, %171
  %180 = load i32, i32* %12, align 4, !dbg !588
  %181 = add nsw i32 %180, 1, !dbg !590
  store i32 %181, i32* %11, align 4, !dbg !591
  store i32 1, i32* %10, align 4, !dbg !592
  br label %196, !dbg !593

182:                                              ; preds = %168
  %183 = load i32, i32* %15, align 4, !dbg !594
  %184 = load i32, i32* %14, align 4, !dbg !597
  %185 = icmp slt i32 %183, %184, !dbg !598
  br i1 %185, label %190, label %186, !dbg !599

186:                                              ; preds = %182
  %187 = load i32, i32* %16, align 4, !dbg !600
  %188 = load i32, i32* %13, align 4, !dbg !601
  %189 = icmp slt i32 %187, %188, !dbg !602
  br i1 %189, label %190, label %193, !dbg !603

190:                                              ; preds = %186, %182
  %191 = load i32, i32* %12, align 4, !dbg !604
  %192 = add nsw i32 %191, 1, !dbg !606
  store i32 %192, i32* %11, align 4, !dbg !607
  store i32 1, i32* %10, align 4, !dbg !608
  br label %196, !dbg !609

193:                                              ; preds = %175, %186
  %194 = load i32, i32* %12, align 4, !dbg !610
  %195 = add nsw i32 %194, 1, !dbg !610
  store i32 %195, i32* %12, align 4, !dbg !610
  br label %55, !dbg !611, !llvm.loop !612

196:                                              ; preds = %190, %179, %165, %158, %138, %118, %106, %55
  %197 = load i32, i32* %10, align 4, !dbg !614
  %198 = icmp ne i32 %197, 0, !dbg !614
  br i1 %198, label %199, label %201, !dbg !616

199:                                              ; preds = %196
  %200 = load i32, i32* %11, align 4, !dbg !617
  store i32 %200, i32* %4, align 4, !dbg !618
  br label %202, !dbg !618

201:                                              ; preds = %196
  store i32 0, i32* %4, align 4, !dbg !619
  br label %202, !dbg !619

202:                                              ; preds = %201, %199
  %203 = load i32, i32* %4, align 4, !dbg !620
  ret i32 %203, !dbg !620
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !621 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [100 x i32], align 4
  %4 = alloca [100 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca [100 x i32], align 4
  %7 = alloca [100 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !624, metadata !DIExpression()), !dbg !625
  %10 = bitcast i32* %2 to i8*, !dbg !626
  call void @klee_make_symbolic(i8* %10, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !627
  %11 = load i32, i32* %2, align 4, !dbg !628
  %12 = icmp sle i32 1, %11, !dbg !629
  %13 = load i32, i32* %2, align 4, !dbg !630
  %14 = icmp sle i32 %13, 100, !dbg !630
  %15 = select i1 %12, i1 %14, i1 false, !dbg !630
  %16 = zext i1 %15 to i32, !dbg !630
  %17 = sext i32 %16 to i64, !dbg !631
  call void @klee_assume(i64 %17), !dbg !632
  call void @llvm.dbg.declare(metadata [100 x i32]* %3, metadata !633, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.declare(metadata [100 x i32]* %4, metadata !638, metadata !DIExpression()), !dbg !639
  %18 = bitcast [100 x i32]* %3 to i8*, !dbg !640
  call void @klee_make_symbolic(i8* %18, i64 400, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !641
  %19 = bitcast [100 x i32]* %4 to i8*, !dbg !642
  call void @klee_make_symbolic(i8* %19, i64 400, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !643
  call void @llvm.dbg.declare(metadata i32* %5, metadata !644, metadata !DIExpression()), !dbg !646
  store i32 0, i32* %5, align 4, !dbg !646
  br label %20, !dbg !647

20:                                               ; preds = %24, %0
  %21 = load i32, i32* %5, align 4, !dbg !648
  %22 = load i32, i32* %2, align 4, !dbg !650
  %23 = icmp slt i32 %21, %22, !dbg !651
  br i1 %23, label %24, label %41, !dbg !652

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4, !dbg !653
  %26 = sext i32 %25 to i64, !dbg !655
  %27 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %26, !dbg !655
  %28 = load i32, i32* %27, align 4, !dbg !655
  %29 = icmp sge i32 %28, 0, !dbg !656
  %30 = zext i1 %29 to i32, !dbg !656
  %31 = sext i32 %30 to i64, !dbg !655
  call void @klee_assume(i64 %31), !dbg !657
  %32 = load i32, i32* %5, align 4, !dbg !658
  %33 = sext i32 %32 to i64, !dbg !659
  %34 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %33, !dbg !659
  %35 = load i32, i32* %34, align 4, !dbg !659
  %36 = icmp sle i32 %35, 11, !dbg !660
  %37 = zext i1 %36 to i32, !dbg !660
  %38 = sext i32 %37 to i64, !dbg !659
  call void @klee_assume(i64 %38), !dbg !661
  %39 = load i32, i32* %5, align 4, !dbg !662
  %40 = add nsw i32 %39, 1, !dbg !662
  store i32 %40, i32* %5, align 4, !dbg !662
  br label %20, !dbg !663, !llvm.loop !664

41:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata [100 x i32]* %6, metadata !666, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.declare(metadata [100 x i32]* %7, metadata !668, metadata !DIExpression()), !dbg !669
  %42 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 0, !dbg !670
  %43 = bitcast i32* %42 to i8*, !dbg !670
  %44 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 0, !dbg !670
  %45 = bitcast i32* %44 to i8*, !dbg !670
  %46 = call i8* @memcpy(i8* %43, i8* %45, i64 400), !dbg !670
  %47 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0, !dbg !671
  %48 = bitcast i32* %47 to i8*, !dbg !671
  %49 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0, !dbg !671
  %50 = bitcast i32* %49 to i8*, !dbg !671
  %51 = call i8* @memcpy(i8* %48, i8* %50, i64 400), !dbg !671
  call void @llvm.dbg.declare(metadata i32* %8, metadata !672, metadata !DIExpression()), !dbg !673
  %52 = load i32, i32* %2, align 4, !dbg !674
  %53 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 0, !dbg !675
  %54 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0, !dbg !676
  %55 = call i32 @ace_arbiter_1(i32 %52, i32* %53, i32* %54), !dbg !677
  store i32 %55, i32* %8, align 4, !dbg !673
  call void @llvm.dbg.declare(metadata i32* %9, metadata !678, metadata !DIExpression()), !dbg !679
  %56 = load i32, i32* %2, align 4, !dbg !680
  %57 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 0, !dbg !681
  %58 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0, !dbg !682
  %59 = call i32 @ace_arbiter_2(i32 %56, i32* %57, i32* %58), !dbg !683
  store i32 %59, i32* %9, align 4, !dbg !679
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !684
  %61 = load i32, i32* %8, align 4, !dbg !685
  %62 = load i32, i32* %9, align 4, !dbg !686
  %63 = icmp eq i32 %61, %62, !dbg !687
  %64 = zext i1 %63 to i32, !dbg !687
  %65 = sext i32 %64 to i64, !dbg !685
  call void @klee_assume(i64 %65), !dbg !688
  ret i32 0, !dbg !689
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_assume(i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @printf(i8*, ...) #2

; Function Attrs: nofree norecurse nosync nounwind ssp uwtable
define i8* @memcpy(i8* returned %0, i8* nocapture readonly %1, i64 %2) #4 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %69, label %5

5:                                                ; preds = %3
  %6 = icmp ult i64 %2, 8
  br i1 %6, label %56, label %7

7:                                                ; preds = %5
  %8 = getelementptr i8, i8* %0, i64 %2
  %9 = getelementptr i8, i8* %1, i64 %2
  %10 = icmp ugt i8* %9, %0
  %11 = icmp ugt i8* %8, %1
  %12 = and i1 %10, %11
  br i1 %12, label %56, label %13

13:                                               ; preds = %7
  %14 = icmp ult i64 %2, 32
  br i1 %14, label %39, label %15

15:                                               ; preds = %13
  %16 = and i64 %2, -32
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %29, %17 ]
  %19 = getelementptr i8, i8* %1, i64 %18
  %20 = getelementptr i8, i8* %0, i64 %18
  %21 = bitcast i8* %19 to <16 x i8>*
  %22 = load <16 x i8>, <16 x i8>* %21, align 1, !tbaa !690, !alias.scope !693
  %23 = getelementptr i8, i8* %19, i64 16
  %24 = bitcast i8* %23 to <16 x i8>*
  %25 = load <16 x i8>, <16 x i8>* %24, align 1, !tbaa !690, !alias.scope !693
  %26 = bitcast i8* %20 to <16 x i8>*
  store <16 x i8> %22, <16 x i8>* %26, align 1, !tbaa !690, !alias.scope !696, !noalias !693
  %27 = getelementptr i8, i8* %20, i64 16
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> %25, <16 x i8>* %28, align 1, !tbaa !690, !alias.scope !696, !noalias !693
  %29 = add nuw i64 %18, 32
  %30 = icmp eq i64 %29, %16
  br i1 %30, label %31, label %17, !llvm.loop !698

31:                                               ; preds = %17
  %32 = icmp eq i64 %16, %2
  br i1 %32, label %69, label %33

33:                                               ; preds = %31
  %34 = and i64 %2, 31
  %35 = getelementptr i8, i8* %0, i64 %16
  %36 = getelementptr i8, i8* %1, i64 %16
  %37 = and i64 %2, 24
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %13, %33
  %40 = phi i64 [ %16, %33 ], [ 0, %13 ]
  %41 = and i64 %2, -8
  %42 = getelementptr i8, i8* %1, i64 %41
  %43 = getelementptr i8, i8* %0, i64 %41
  %44 = and i64 %2, 7
  br label %45

45:                                               ; preds = %45, %39
  %46 = phi i64 [ %40, %39 ], [ %52, %45 ]
  %47 = getelementptr i8, i8* %1, i64 %46
  %48 = getelementptr i8, i8* %0, i64 %46
  %49 = bitcast i8* %47 to <8 x i8>*
  %50 = load <8 x i8>, <8 x i8>* %49, align 1, !tbaa !690
  %51 = bitcast i8* %48 to <8 x i8>*
  store <8 x i8> %50, <8 x i8>* %51, align 1, !tbaa !690
  %52 = add nuw i64 %46, 8
  %53 = icmp eq i64 %52, %41
  br i1 %53, label %54, label %45, !llvm.loop !700

54:                                               ; preds = %45
  %55 = icmp eq i64 %41, %2
  br i1 %55, label %69, label %56

56:                                               ; preds = %7, %5, %33, %54
  %57 = phi i8* [ %1, %5 ], [ %1, %7 ], [ %36, %33 ], [ %42, %54 ]
  %58 = phi i8* [ %0, %5 ], [ %0, %7 ], [ %35, %33 ], [ %43, %54 ]
  %59 = phi i64 [ %2, %5 ], [ %2, %7 ], [ %34, %33 ], [ %44, %54 ]
  br label %60

60:                                               ; preds = %56, %60
  %61 = phi i8* [ %65, %60 ], [ %57, %56 ]
  %62 = phi i8* [ %67, %60 ], [ %58, %56 ]
  %63 = phi i64 [ %64, %60 ], [ %59, %56 ]
  %64 = add i64 %63, -1
  %65 = getelementptr inbounds i8, i8* %61, i64 1
  %66 = load i8, i8* %61, align 1, !tbaa !690
  %67 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 %66, i8* %62, align 1, !tbaa !690
  %68 = icmp eq i64 %64, 0
  br i1 %68, label %69, label %60, !llvm.loop !701

69:                                               ; preds = %60, %31, %54, %3
  ret i8* %0
}

attributes #0 = { noinline nounwind ssp uwtable "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.dbg.cu = !{!11}
!llvm.ident = !{!14, !15}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 1]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 1, !"branch-target-enforcement", i32 0}
!5 = !{i32 1, !"sign-return-address", i32 0}
!6 = !{i32 1, !"sign-return-address-all", i32 0}
!7 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 1}
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Apple clang version 13.0.0 (clang-1300.0.29.30)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!12 = !DIFile(filename: "combined_ace_arbiter.c", directory: "/Users/holgerchristensen/Downloads/equivalence")
!13 = !{}
!14 = !{!"Apple clang version 13.0.0 (clang-1300.0.29.30)"}
!15 = !{!"Homebrew clang version 13.0.1"}
!16 = distinct !DISubprogram(name: "serves", scope: !12, file: !12, line: 18, type: !17, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DILocalVariable(name: "sum", arg: 1, scope: !16, file: !12, line: 18, type: !19)
!21 = !DILocation(line: 18, column: 17, scope: !16)
!22 = !DILocalVariable(name: "r", scope: !16, file: !12, line: 20, type: !19)
!23 = !DILocation(line: 20, column: 9, scope: !16)
!24 = !DILocation(line: 20, column: 14, scope: !16)
!25 = !DILocation(line: 20, column: 17, scope: !16)
!26 = !DILocation(line: 20, column: 21, scope: !16)
!27 = !DILocation(line: 21, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !16, file: !12, line: 21, column: 9)
!29 = !DILocation(line: 21, column: 11, scope: !28)
!30 = !DILocation(line: 21, column: 16, scope: !28)
!31 = !DILocation(line: 22, column: 9, scope: !28)
!32 = !DILocation(line: 23, column: 10, scope: !28)
!33 = !DILocation(line: 24, column: 1, scope: !16)
!34 = distinct !DISubprogram(name: "same_player", scope: !12, file: !12, line: 27, type: !35, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!35 = !DISubroutineType(types: !36)
!36 = !{!19, !19, !19}
!37 = !DILocalVariable(name: "sum1", arg: 1, scope: !34, file: !12, line: 27, type: !19)
!38 = !DILocation(line: 27, column: 22, scope: !34)
!39 = !DILocalVariable(name: "sum2", arg: 2, scope: !34, file: !12, line: 27, type: !19)
!40 = !DILocation(line: 27, column: 32, scope: !34)
!41 = !DILocation(line: 29, column: 19, scope: !34)
!42 = !DILocation(line: 29, column: 12, scope: !34)
!43 = !DILocation(line: 29, column: 35, scope: !34)
!44 = !DILocation(line: 29, column: 28, scope: !34)
!45 = !DILocation(line: 29, column: 25, scope: !34)
!46 = !DILocation(line: 29, column: 5, scope: !34)
!47 = distinct !DISubprogram(name: "legal", scope: !12, file: !12, line: 32, type: !48, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!48 = !DISubroutineType(types: !49)
!49 = !{!19, !19, !50, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!51 = !DILocalVariable(name: "i", arg: 1, scope: !47, file: !12, line: 32, type: !19)
!52 = !DILocation(line: 32, column: 16, scope: !47)
!53 = !DILocalVariable(name: "x", arg: 2, scope: !47, file: !12, line: 32, type: !50)
!54 = !DILocation(line: 32, column: 25, scope: !47)
!55 = !DILocalVariable(name: "y", arg: 3, scope: !47, file: !12, line: 32, type: !50)
!56 = !DILocation(line: 32, column: 34, scope: !47)
!57 = !DILocalVariable(name: "x1", scope: !47, file: !12, line: 34, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!59 = !DILocation(line: 34, column: 15, scope: !47)
!60 = !DILocation(line: 34, column: 20, scope: !47)
!61 = !DILocation(line: 34, column: 22, scope: !47)
!62 = !DILocalVariable(name: "y1", scope: !47, file: !12, line: 35, type: !58)
!63 = !DILocation(line: 35, column: 15, scope: !47)
!64 = !DILocation(line: 35, column: 20, scope: !47)
!65 = !DILocation(line: 35, column: 22, scope: !47)
!66 = !DILocalVariable(name: "x2", scope: !47, file: !12, line: 36, type: !58)
!67 = !DILocation(line: 36, column: 15, scope: !47)
!68 = !DILocation(line: 36, column: 20, scope: !47)
!69 = !DILocation(line: 36, column: 22, scope: !47)
!70 = !DILocation(line: 36, column: 23, scope: !47)
!71 = !DILocalVariable(name: "y2", scope: !47, file: !12, line: 37, type: !58)
!72 = !DILocation(line: 37, column: 15, scope: !47)
!73 = !DILocation(line: 37, column: 20, scope: !47)
!74 = !DILocation(line: 37, column: 22, scope: !47)
!75 = !DILocation(line: 37, column: 23, scope: !47)
!76 = !DILocalVariable(name: "same", scope: !47, file: !12, line: 38, type: !58)
!77 = !DILocation(line: 38, column: 15, scope: !47)
!78 = !DILocation(line: 38, column: 34, scope: !47)
!79 = !DILocation(line: 38, column: 37, scope: !47)
!80 = !DILocation(line: 38, column: 36, scope: !47)
!81 = !DILocation(line: 38, column: 41, scope: !47)
!82 = !DILocation(line: 38, column: 44, scope: !47)
!83 = !DILocation(line: 38, column: 43, scope: !47)
!84 = !DILocation(line: 38, column: 22, scope: !47)
!85 = !DILocation(line: 40, column: 13, scope: !47)
!86 = !DILocation(line: 40, column: 16, scope: !47)
!87 = !DILocation(line: 40, column: 15, scope: !47)
!88 = !DILocation(line: 40, column: 22, scope: !47)
!89 = !DILocation(line: 40, column: 25, scope: !47)
!90 = !DILocation(line: 40, column: 24, scope: !47)
!91 = !DILocation(line: 40, column: 19, scope: !47)
!92 = !DILocation(line: 41, column: 12, scope: !47)
!93 = !DILocation(line: 41, column: 16, scope: !47)
!94 = !DILocation(line: 41, column: 18, scope: !47)
!95 = !DILocation(line: 41, column: 23, scope: !47)
!96 = !DILocation(line: 42, column: 16, scope: !47)
!97 = !DILocation(line: 42, column: 18, scope: !47)
!98 = !DILocation(line: 42, column: 23, scope: !47)
!99 = !DILocation(line: 43, column: 19, scope: !47)
!100 = !DILocation(line: 43, column: 24, scope: !47)
!101 = !DILocation(line: 43, column: 40, scope: !47)
!102 = !DILocation(line: 43, column: 46, scope: !47)
!103 = !DILocation(line: 43, column: 43, scope: !47)
!104 = !DILocation(line: 44, column: 12, scope: !47)
!105 = !DILocation(line: 44, column: 19, scope: !47)
!106 = !DILocation(line: 44, column: 24, scope: !47)
!107 = !DILocation(line: 44, column: 40, scope: !47)
!108 = !DILocation(line: 44, column: 46, scope: !47)
!109 = !DILocation(line: 44, column: 43, scope: !47)
!110 = !DILocation(line: 45, column: 12, scope: !47)
!111 = !DILocation(line: 45, column: 19, scope: !47)
!112 = !DILocation(line: 45, column: 24, scope: !47)
!113 = !DILocation(line: 45, column: 40, scope: !47)
!114 = !DILocation(line: 45, column: 46, scope: !47)
!115 = !DILocation(line: 45, column: 43, scope: !47)
!116 = !DILocation(line: 46, column: 12, scope: !47)
!117 = !DILocation(line: 46, column: 19, scope: !47)
!118 = !DILocation(line: 46, column: 24, scope: !47)
!119 = !DILocation(line: 46, column: 40, scope: !47)
!120 = !DILocation(line: 46, column: 46, scope: !47)
!121 = !DILocation(line: 46, column: 43, scope: !47)
!122 = !DILocation(line: 47, column: 12, scope: !47)
!123 = !DILocation(line: 47, column: 17, scope: !47)
!124 = !DILocation(line: 47, column: 22, scope: !47)
!125 = !DILocation(line: 47, column: 26, scope: !47)
!126 = !DILocation(line: 47, column: 32, scope: !47)
!127 = !DILocation(line: 47, column: 29, scope: !47)
!128 = !DILocation(line: 47, column: 35, scope: !47)
!129 = !DILocation(line: 47, column: 38, scope: !47)
!130 = !DILocation(line: 47, column: 44, scope: !47)
!131 = !DILocation(line: 47, column: 41, scope: !47)
!132 = !DILocation(line: 48, column: 12, scope: !47)
!133 = !DILocation(line: 48, column: 17, scope: !47)
!134 = !DILocation(line: 48, column: 22, scope: !47)
!135 = !DILocation(line: 48, column: 26, scope: !47)
!136 = !DILocation(line: 48, column: 32, scope: !47)
!137 = !DILocation(line: 48, column: 29, scope: !47)
!138 = !DILocation(line: 48, column: 35, scope: !47)
!139 = !DILocation(line: 0, scope: !47)
!140 = !DILocation(line: 40, column: 5, scope: !47)
!141 = distinct !DISubprogram(name: "ace_arbiter_1", scope: !12, file: !12, line: 53, type: !48, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!142 = !DILocalVariable(name: "n", arg: 1, scope: !141, file: !12, line: 53, type: !19)
!143 = !DILocation(line: 53, column: 24, scope: !141)
!144 = !DILocalVariable(name: "x", arg: 2, scope: !141, file: !12, line: 53, type: !50)
!145 = !DILocation(line: 53, column: 33, scope: !141)
!146 = !DILocalVariable(name: "y", arg: 3, scope: !141, file: !12, line: 53, type: !50)
!147 = !DILocation(line: 53, column: 42, scope: !141)
!148 = !DILocalVariable(name: "i", scope: !149, file: !12, line: 55, type: !19)
!149 = distinct !DILexicalBlock(scope: !141, file: !12, line: 55, column: 5)
!150 = !DILocation(line: 55, column: 14, scope: !149)
!151 = !DILocation(line: 55, column: 18, scope: !149)
!152 = !DILocation(line: 55, column: 10, scope: !149)
!153 = !DILocation(line: 55, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !12, line: 55, column: 5)
!155 = !DILocation(line: 55, column: 23, scope: !154)
!156 = !DILocation(line: 55, column: 5, scope: !149)
!157 = !DILocation(line: 56, column: 16, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !12, line: 55, column: 33)
!159 = !DILocation(line: 56, column: 18, scope: !158)
!160 = !DILocation(line: 56, column: 19, scope: !158)
!161 = !DILocation(line: 56, column: 9, scope: !158)
!162 = !DILocation(line: 56, column: 11, scope: !158)
!163 = !DILocation(line: 56, column: 14, scope: !158)
!164 = !DILocation(line: 57, column: 16, scope: !158)
!165 = !DILocation(line: 57, column: 18, scope: !158)
!166 = !DILocation(line: 57, column: 19, scope: !158)
!167 = !DILocation(line: 57, column: 9, scope: !158)
!168 = !DILocation(line: 57, column: 11, scope: !158)
!169 = !DILocation(line: 57, column: 14, scope: !158)
!170 = !DILocation(line: 55, column: 29, scope: !154)
!171 = !DILocation(line: 55, column: 5, scope: !154)
!172 = distinct !{!172, !156, !173, !174}
!173 = !DILocation(line: 58, column: 5, scope: !149)
!174 = !{!"llvm.loop.mustprogress"}
!175 = !DILocation(line: 59, column: 12, scope: !141)
!176 = !DILocation(line: 59, column: 17, scope: !141)
!177 = !DILocation(line: 59, column: 5, scope: !141)
!178 = !DILocation(line: 59, column: 10, scope: !141)
!179 = !DILocalVariable(name: "i", scope: !180, file: !12, line: 61, type: !19)
!180 = distinct !DILexicalBlock(scope: !141, file: !12, line: 61, column: 5)
!181 = !DILocation(line: 61, column: 14, scope: !180)
!182 = !DILocation(line: 61, column: 10, scope: !180)
!183 = !DILocation(line: 61, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !12, line: 61, column: 5)
!185 = !DILocation(line: 61, column: 26, scope: !184)
!186 = !DILocation(line: 61, column: 27, scope: !184)
!187 = !DILocation(line: 61, column: 23, scope: !184)
!188 = !DILocation(line: 61, column: 5, scope: !180)
!189 = !DILocation(line: 62, column: 20, scope: !190)
!190 = distinct !DILexicalBlock(scope: !184, file: !12, line: 62, column: 13)
!191 = !DILocation(line: 62, column: 23, scope: !190)
!192 = !DILocation(line: 62, column: 26, scope: !190)
!193 = !DILocation(line: 62, column: 14, scope: !190)
!194 = !DILocation(line: 62, column: 13, scope: !184)
!195 = !DILocation(line: 63, column: 20, scope: !190)
!196 = !DILocation(line: 63, column: 21, scope: !190)
!197 = !DILocation(line: 63, column: 13, scope: !190)
!198 = !DILocation(line: 61, column: 32, scope: !184)
!199 = !DILocation(line: 61, column: 5, scope: !184)
!200 = distinct !{!200, !188, !201, !174}
!201 = !DILocation(line: 63, column: 22, scope: !180)
!202 = !DILocation(line: 65, column: 5, scope: !141)
!203 = !DILocation(line: 66, column: 1, scope: !141)
!204 = distinct !DISubprogram(name: "playerTurn", scope: !12, file: !12, line: 68, type: !35, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!205 = !DILocalVariable(name: "a", arg: 1, scope: !204, file: !12, line: 68, type: !19)
!206 = !DILocation(line: 68, column: 21, scope: !204)
!207 = !DILocalVariable(name: "b", arg: 2, scope: !204, file: !12, line: 68, type: !19)
!208 = !DILocation(line: 68, column: 28, scope: !204)
!209 = !DILocalVariable(name: "m", scope: !204, file: !12, line: 70, type: !19)
!210 = !DILocation(line: 70, column: 9, scope: !204)
!211 = !DILocation(line: 70, column: 13, scope: !204)
!212 = !DILocation(line: 70, column: 17, scope: !204)
!213 = !DILocation(line: 70, column: 19, scope: !204)
!214 = !DILocation(line: 70, column: 15, scope: !204)
!215 = !DILocation(line: 71, column: 12, scope: !204)
!216 = !DILocation(line: 71, column: 14, scope: !204)
!217 = !DILocation(line: 71, column: 19, scope: !204)
!218 = !DILocation(line: 71, column: 5, scope: !204)
!219 = distinct !DISubprogram(name: "run", scope: !12, file: !12, line: 75, type: !220, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!220 = !DISubroutineType(types: !221)
!221 = !{!19, !19, !19, !19, !19, !19, !19, !50, !50}
!222 = !DILocalVariable(name: "a", arg: 1, scope: !219, file: !12, line: 75, type: !19)
!223 = !DILocation(line: 75, column: 14, scope: !219)
!224 = !DILocalVariable(name: "b", arg: 2, scope: !219, file: !12, line: 75, type: !19)
!225 = !DILocation(line: 75, column: 21, scope: !219)
!226 = !DILocalVariable(name: "num", arg: 3, scope: !219, file: !12, line: 75, type: !19)
!227 = !DILocation(line: 75, column: 28, scope: !219)
!228 = !DILocalVariable(name: "endGame", arg: 4, scope: !219, file: !12, line: 75, type: !19)
!229 = !DILocation(line: 75, column: 37, scope: !219)
!230 = !DILocalVariable(name: "i", arg: 5, scope: !219, file: !12, line: 75, type: !19)
!231 = !DILocation(line: 75, column: 50, scope: !219)
!232 = !DILocalVariable(name: "n", arg: 6, scope: !219, file: !12, line: 75, type: !19)
!233 = !DILocation(line: 75, column: 57, scope: !219)
!234 = !DILocalVariable(name: "x", arg: 7, scope: !219, file: !12, line: 75, type: !50)
!235 = !DILocation(line: 75, column: 66, scope: !219)
!236 = !DILocalVariable(name: "y", arg: 8, scope: !219, file: !12, line: 75, type: !50)
!237 = !DILocation(line: 75, column: 75, scope: !219)
!238 = !DILocation(line: 77, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !219, file: !12, line: 77, column: 9)
!240 = !DILocation(line: 77, column: 14, scope: !239)
!241 = !DILocation(line: 77, column: 11, scope: !239)
!242 = !DILocation(line: 77, column: 9, scope: !219)
!243 = !DILocation(line: 78, column: 9, scope: !239)
!244 = !DILocation(line: 79, column: 14, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !12, line: 79, column: 14)
!246 = !DILocation(line: 79, column: 16, scope: !245)
!247 = !DILocation(line: 79, column: 19, scope: !245)
!248 = !DILocation(line: 79, column: 25, scope: !245)
!249 = !DILocation(line: 79, column: 28, scope: !245)
!250 = !DILocation(line: 79, column: 30, scope: !245)
!251 = !DILocation(line: 79, column: 33, scope: !245)
!252 = !DILocation(line: 79, column: 14, scope: !239)
!253 = !DILocation(line: 80, column: 16, scope: !245)
!254 = !DILocation(line: 80, column: 9, scope: !245)
!255 = !DILocation(line: 81, column: 14, scope: !256)
!256 = distinct !DILexicalBlock(scope: !245, file: !12, line: 81, column: 14)
!257 = !DILocation(line: 81, column: 19, scope: !256)
!258 = !DILocation(line: 81, column: 21, scope: !256)
!259 = !DILocation(line: 81, column: 16, scope: !256)
!260 = !DILocation(line: 81, column: 24, scope: !256)
!261 = !DILocation(line: 81, column: 27, scope: !256)
!262 = !DILocation(line: 81, column: 32, scope: !256)
!263 = !DILocation(line: 81, column: 34, scope: !256)
!264 = !DILocation(line: 81, column: 29, scope: !256)
!265 = !DILocation(line: 81, column: 14, scope: !245)
!266 = !DILocation(line: 82, column: 20, scope: !256)
!267 = !DILocation(line: 82, column: 23, scope: !256)
!268 = !DILocation(line: 82, column: 26, scope: !256)
!269 = !DILocation(line: 82, column: 29, scope: !256)
!270 = !DILocation(line: 82, column: 33, scope: !256)
!271 = !DILocation(line: 82, column: 42, scope: !256)
!272 = !DILocation(line: 82, column: 43, scope: !256)
!273 = !DILocation(line: 82, column: 47, scope: !256)
!274 = !DILocation(line: 82, column: 50, scope: !256)
!275 = !DILocation(line: 82, column: 53, scope: !256)
!276 = !DILocation(line: 82, column: 16, scope: !256)
!277 = !DILocation(line: 82, column: 9, scope: !256)
!278 = !DILocation(line: 83, column: 14, scope: !279)
!279 = distinct !DILexicalBlock(scope: !256, file: !12, line: 83, column: 14)
!280 = !DILocation(line: 83, column: 16, scope: !279)
!281 = !DILocation(line: 83, column: 21, scope: !279)
!282 = !DILocation(line: 83, column: 23, scope: !279)
!283 = !DILocation(line: 83, column: 19, scope: !279)
!284 = !DILocation(line: 83, column: 29, scope: !279)
!285 = !DILocation(line: 83, column: 33, scope: !279)
!286 = !DILocation(line: 83, column: 31, scope: !279)
!287 = !DILocation(line: 83, column: 26, scope: !279)
!288 = !DILocation(line: 83, column: 35, scope: !279)
!289 = !DILocation(line: 84, column: 16, scope: !279)
!290 = !DILocation(line: 84, column: 9, scope: !279)
!291 = !DILocalVariable(name: "cond", scope: !219, file: !12, line: 86, type: !19)
!292 = !DILocation(line: 86, column: 9, scope: !219)
!293 = !DILocation(line: 87, column: 25, scope: !219)
!294 = !DILocation(line: 87, column: 28, scope: !219)
!295 = !DILocation(line: 87, column: 14, scope: !219)
!296 = !DILocation(line: 87, column: 45, scope: !219)
!297 = !DILocation(line: 87, column: 47, scope: !219)
!298 = !DILocation(line: 87, column: 51, scope: !219)
!299 = !DILocation(line: 87, column: 53, scope: !219)
!300 = !DILocation(line: 87, column: 34, scope: !219)
!301 = !DILocation(line: 87, column: 31, scope: !219)
!302 = !DILocation(line: 87, column: 13, scope: !219)
!303 = !DILocation(line: 88, column: 14, scope: !219)
!304 = !DILocation(line: 88, column: 19, scope: !219)
!305 = !DILocation(line: 88, column: 21, scope: !219)
!306 = !DILocation(line: 88, column: 16, scope: !219)
!307 = !DILocation(line: 88, column: 24, scope: !219)
!308 = !DILocation(line: 88, column: 27, scope: !219)
!309 = !DILocation(line: 88, column: 32, scope: !219)
!310 = !DILocation(line: 88, column: 34, scope: !219)
!311 = !DILocation(line: 88, column: 29, scope: !219)
!312 = !DILocation(line: 0, scope: !219)
!313 = !DILocation(line: 88, column: 41, scope: !219)
!314 = !DILocation(line: 88, column: 46, scope: !219)
!315 = !DILocation(line: 88, column: 48, scope: !219)
!316 = !DILocation(line: 88, column: 43, scope: !219)
!317 = !DILocation(line: 88, column: 51, scope: !219)
!318 = !DILocation(line: 88, column: 54, scope: !219)
!319 = !DILocation(line: 88, column: 59, scope: !219)
!320 = !DILocation(line: 88, column: 61, scope: !219)
!321 = !DILocation(line: 88, column: 56, scope: !219)
!322 = !DILocation(line: 90, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !219, file: !12, line: 90, column: 9)
!324 = !DILocation(line: 90, column: 9, scope: !219)
!325 = !DILocation(line: 91, column: 20, scope: !323)
!326 = !DILocation(line: 91, column: 22, scope: !323)
!327 = !DILocation(line: 91, column: 26, scope: !323)
!328 = !DILocation(line: 91, column: 28, scope: !323)
!329 = !DILocation(line: 91, column: 32, scope: !323)
!330 = !DILocation(line: 91, column: 35, scope: !323)
!331 = !DILocation(line: 91, column: 39, scope: !323)
!332 = !DILocation(line: 91, column: 47, scope: !323)
!333 = !DILocation(line: 91, column: 50, scope: !323)
!334 = !DILocation(line: 91, column: 52, scope: !323)
!335 = !DILocation(line: 91, column: 55, scope: !323)
!336 = !DILocation(line: 91, column: 61, scope: !323)
!337 = !DILocation(line: 91, column: 64, scope: !323)
!338 = !DILocation(line: 91, column: 66, scope: !323)
!339 = !DILocation(line: 91, column: 69, scope: !323)
!340 = !DILocation(line: 91, column: 76, scope: !323)
!341 = !DILocation(line: 91, column: 77, scope: !323)
!342 = !DILocation(line: 91, column: 81, scope: !323)
!343 = !DILocation(line: 91, column: 84, scope: !323)
!344 = !DILocation(line: 91, column: 87, scope: !323)
!345 = !DILocation(line: 91, column: 16, scope: !323)
!346 = !DILocation(line: 91, column: 9, scope: !323)
!347 = !DILocation(line: 93, column: 16, scope: !323)
!348 = !DILocation(line: 93, column: 9, scope: !323)
!349 = !DILocation(line: 94, column: 1, scope: !219)
!350 = distinct !DISubprogram(name: "ace_arbiter_2", scope: !12, file: !12, line: 98, type: !48, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!351 = !DILocalVariable(name: "n", arg: 1, scope: !350, file: !12, line: 98, type: !19)
!352 = !DILocation(line: 98, column: 24, scope: !350)
!353 = !DILocalVariable(name: "x", arg: 2, scope: !350, file: !12, line: 98, type: !50)
!354 = !DILocation(line: 98, column: 33, scope: !350)
!355 = !DILocalVariable(name: "y", arg: 3, scope: !350, file: !12, line: 98, type: !50)
!356 = !DILocation(line: 98, column: 42, scope: !350)
!357 = !DILocation(line: 100, column: 32, scope: !350)
!358 = !DILocation(line: 100, column: 35, scope: !350)
!359 = !DILocation(line: 100, column: 38, scope: !350)
!360 = !DILocation(line: 100, column: 12, scope: !350)
!361 = !DILocation(line: 100, column: 5, scope: !350)
!362 = distinct !DISubprogram(name: "who_serves", scope: !12, file: !12, line: 105, type: !17, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!363 = !DILocalVariable(name: "s", arg: 1, scope: !362, file: !12, line: 105, type: !19)
!364 = !DILocation(line: 105, column: 20, scope: !362)
!365 = !DILocation(line: 107, column: 9, scope: !362)
!366 = !DILocation(line: 107, column: 10, scope: !362)
!367 = !DILocation(line: 107, column: 7, scope: !362)
!368 = !DILocalVariable(name: "player", scope: !362, file: !12, line: 108, type: !19)
!369 = !DILocation(line: 108, column: 9, scope: !362)
!370 = !DILocation(line: 109, column: 9, scope: !371)
!371 = distinct !DILexicalBlock(scope: !362, file: !12, line: 109, column: 9)
!372 = !DILocation(line: 109, column: 10, scope: !371)
!373 = !DILocation(line: 109, column: 12, scope: !371)
!374 = !DILocation(line: 109, column: 16, scope: !371)
!375 = !DILocation(line: 109, column: 19, scope: !371)
!376 = !DILocation(line: 109, column: 20, scope: !371)
!377 = !DILocation(line: 109, column: 22, scope: !371)
!378 = !DILocation(line: 109, column: 9, scope: !362)
!379 = !DILocation(line: 110, column: 16, scope: !371)
!380 = !DILocation(line: 110, column: 9, scope: !371)
!381 = !DILocation(line: 111, column: 9, scope: !382)
!382 = distinct !DILexicalBlock(scope: !362, file: !12, line: 111, column: 9)
!383 = !DILocation(line: 111, column: 10, scope: !382)
!384 = !DILocation(line: 111, column: 12, scope: !382)
!385 = !DILocation(line: 111, column: 16, scope: !382)
!386 = !DILocation(line: 111, column: 19, scope: !382)
!387 = !DILocation(line: 111, column: 20, scope: !382)
!388 = !DILocation(line: 111, column: 22, scope: !382)
!389 = !DILocation(line: 111, column: 9, scope: !362)
!390 = !DILocation(line: 112, column: 16, scope: !382)
!391 = !DILocation(line: 112, column: 9, scope: !382)
!392 = !DILocation(line: 113, column: 12, scope: !362)
!393 = !DILocation(line: 113, column: 5, scope: !362)
!394 = distinct !DISubprogram(name: "ace_arbiter_3", scope: !12, file: !12, line: 118, type: !48, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!395 = !DILocalVariable(name: "n", arg: 1, scope: !394, file: !12, line: 118, type: !19)
!396 = !DILocation(line: 118, column: 23, scope: !394)
!397 = !DILocalVariable(name: "x", arg: 2, scope: !394, file: !12, line: 118, type: !50)
!398 = !DILocation(line: 118, column: 32, scope: !394)
!399 = !DILocalVariable(name: "y", arg: 3, scope: !394, file: !12, line: 118, type: !50)
!400 = !DILocation(line: 118, column: 41, scope: !394)
!401 = !DILocalVariable(name: "bool_same_player", scope: !394, file: !12, line: 120, type: !19)
!402 = !DILocation(line: 120, column: 9, scope: !394)
!403 = !DILocalVariable(name: "i", scope: !404, file: !12, line: 123, type: !19)
!404 = distinct !DILexicalBlock(scope: !394, file: !12, line: 123, column: 5)
!405 = !DILocation(line: 123, column: 14, scope: !404)
!406 = !DILocation(line: 123, column: 18, scope: !404)
!407 = !DILocation(line: 123, column: 10, scope: !404)
!408 = !DILocation(line: 123, column: 21, scope: !409)
!409 = distinct !DILexicalBlock(scope: !404, file: !12, line: 123, column: 5)
!410 = !DILocation(line: 123, column: 23, scope: !409)
!411 = !DILocation(line: 123, column: 5, scope: !404)
!412 = !DILocation(line: 124, column: 16, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !12, line: 123, column: 33)
!414 = !DILocation(line: 124, column: 18, scope: !413)
!415 = !DILocation(line: 124, column: 19, scope: !413)
!416 = !DILocation(line: 124, column: 9, scope: !413)
!417 = !DILocation(line: 124, column: 11, scope: !413)
!418 = !DILocation(line: 124, column: 14, scope: !413)
!419 = !DILocation(line: 125, column: 16, scope: !413)
!420 = !DILocation(line: 125, column: 18, scope: !413)
!421 = !DILocation(line: 125, column: 19, scope: !413)
!422 = !DILocation(line: 125, column: 9, scope: !413)
!423 = !DILocation(line: 125, column: 11, scope: !413)
!424 = !DILocation(line: 125, column: 14, scope: !413)
!425 = !DILocation(line: 123, column: 29, scope: !409)
!426 = !DILocation(line: 123, column: 5, scope: !409)
!427 = distinct !{!427, !411, !428, !174}
!428 = !DILocation(line: 126, column: 5, scope: !404)
!429 = !DILocation(line: 127, column: 12, scope: !394)
!430 = !DILocation(line: 127, column: 17, scope: !394)
!431 = !DILocation(line: 127, column: 5, scope: !394)
!432 = !DILocation(line: 127, column: 10, scope: !394)
!433 = !DILocation(line: 128, column: 9, scope: !394)
!434 = !DILocation(line: 128, column: 10, scope: !394)
!435 = !DILocation(line: 128, column: 7, scope: !394)
!436 = !DILocalVariable(name: "bool_error", scope: !394, file: !12, line: 130, type: !19)
!437 = !DILocation(line: 130, column: 9, scope: !394)
!438 = !DILocalVariable(name: "row", scope: !394, file: !12, line: 131, type: !19)
!439 = !DILocation(line: 131, column: 9, scope: !394)
!440 = !DILocalVariable(name: "i", scope: !441, file: !12, line: 133, type: !19)
!441 = distinct !DILexicalBlock(scope: !394, file: !12, line: 133, column: 5)
!442 = !DILocation(line: 133, column: 14, scope: !441)
!443 = !DILocation(line: 133, column: 10, scope: !441)
!444 = !DILocation(line: 133, column: 21, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !12, line: 133, column: 5)
!446 = !DILocation(line: 133, column: 25, scope: !445)
!447 = !DILocation(line: 133, column: 26, scope: !445)
!448 = !DILocation(line: 133, column: 23, scope: !445)
!449 = !DILocation(line: 133, column: 5, scope: !441)
!450 = !DILocalVariable(name: "x1", scope: !451, file: !12, line: 134, type: !19)
!451 = distinct !DILexicalBlock(scope: !445, file: !12, line: 133, column: 35)
!452 = !DILocation(line: 134, column: 13, scope: !451)
!453 = !DILocation(line: 134, column: 18, scope: !451)
!454 = !DILocation(line: 134, column: 20, scope: !451)
!455 = !DILocalVariable(name: "y1", scope: !451, file: !12, line: 135, type: !19)
!456 = !DILocation(line: 135, column: 13, scope: !451)
!457 = !DILocation(line: 135, column: 18, scope: !451)
!458 = !DILocation(line: 135, column: 20, scope: !451)
!459 = !DILocalVariable(name: "x2", scope: !451, file: !12, line: 136, type: !19)
!460 = !DILocation(line: 136, column: 13, scope: !451)
!461 = !DILocation(line: 136, column: 18, scope: !451)
!462 = !DILocation(line: 136, column: 20, scope: !451)
!463 = !DILocation(line: 136, column: 21, scope: !451)
!464 = !DILocalVariable(name: "y2", scope: !451, file: !12, line: 137, type: !19)
!465 = !DILocation(line: 137, column: 13, scope: !451)
!466 = !DILocation(line: 137, column: 18, scope: !451)
!467 = !DILocation(line: 137, column: 20, scope: !451)
!468 = !DILocation(line: 137, column: 21, scope: !451)
!469 = !DILocalVariable(name: "s1", scope: !451, file: !12, line: 141, type: !19)
!470 = !DILocation(line: 141, column: 13, scope: !451)
!471 = !DILocation(line: 141, column: 18, scope: !451)
!472 = !DILocation(line: 141, column: 21, scope: !451)
!473 = !DILocation(line: 141, column: 20, scope: !451)
!474 = !DILocalVariable(name: "s2", scope: !451, file: !12, line: 142, type: !19)
!475 = !DILocation(line: 142, column: 13, scope: !451)
!476 = !DILocation(line: 142, column: 18, scope: !451)
!477 = !DILocation(line: 142, column: 21, scope: !451)
!478 = !DILocation(line: 142, column: 20, scope: !451)
!479 = !DILocalVariable(name: "p1", scope: !451, file: !12, line: 143, type: !19)
!480 = !DILocation(line: 143, column: 13, scope: !451)
!481 = !DILocation(line: 143, column: 29, scope: !451)
!482 = !DILocation(line: 143, column: 18, scope: !451)
!483 = !DILocalVariable(name: "p2", scope: !451, file: !12, line: 144, type: !19)
!484 = !DILocation(line: 144, column: 13, scope: !451)
!485 = !DILocation(line: 144, column: 29, scope: !451)
!486 = !DILocation(line: 144, column: 18, scope: !451)
!487 = !DILocation(line: 147, column: 29, scope: !451)
!488 = !DILocation(line: 147, column: 33, scope: !451)
!489 = !DILocation(line: 147, column: 31, scope: !451)
!490 = !DILocation(line: 147, column: 26, scope: !451)
!491 = !DILocation(line: 149, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !451, file: !12, line: 149, column: 13)
!493 = !DILocation(line: 149, column: 16, scope: !492)
!494 = !DILocation(line: 149, column: 20, scope: !492)
!495 = !DILocation(line: 149, column: 34, scope: !492)
!496 = !DILocation(line: 149, column: 36, scope: !492)
!497 = !DILocation(line: 149, column: 41, scope: !492)
!498 = !DILocation(line: 150, column: 23, scope: !499)
!499 = distinct !DILexicalBlock(scope: !492, file: !12, line: 149, column: 53)
!500 = !DILocation(line: 151, column: 17, scope: !499)
!501 = !DILocation(line: 151, column: 16, scope: !499)
!502 = !DILocation(line: 152, column: 13, scope: !499)
!503 = !DILocation(line: 154, column: 14, scope: !504)
!504 = distinct !DILexicalBlock(scope: !451, file: !12, line: 154, column: 13)
!505 = !DILocation(line: 154, column: 16, scope: !504)
!506 = !DILocation(line: 154, column: 20, scope: !504)
!507 = !DILocation(line: 154, column: 34, scope: !504)
!508 = !DILocation(line: 154, column: 36, scope: !504)
!509 = !DILocation(line: 154, column: 41, scope: !504)
!510 = !DILocation(line: 155, column: 23, scope: !511)
!511 = distinct !DILexicalBlock(scope: !504, file: !12, line: 154, column: 53)
!512 = !DILocation(line: 156, column: 17, scope: !511)
!513 = !DILocation(line: 156, column: 18, scope: !511)
!514 = !DILocation(line: 156, column: 16, scope: !511)
!515 = !DILocation(line: 157, column: 13, scope: !511)
!516 = !DILocation(line: 159, column: 14, scope: !517)
!517 = distinct !DILexicalBlock(scope: !451, file: !12, line: 159, column: 13)
!518 = !DILocation(line: 159, column: 13, scope: !451)
!519 = !DILocation(line: 160, column: 18, scope: !520)
!520 = distinct !DILexicalBlock(scope: !517, file: !12, line: 160, column: 17)
!521 = !DILocation(line: 160, column: 20, scope: !520)
!522 = !DILocation(line: 160, column: 25, scope: !520)
!523 = !DILocation(line: 160, column: 28, scope: !520)
!524 = !DILocation(line: 160, column: 32, scope: !520)
!525 = !DILocation(line: 160, column: 30, scope: !520)
!526 = !DILocation(line: 160, column: 36, scope: !520)
!527 = !DILocation(line: 160, column: 40, scope: !520)
!528 = !DILocation(line: 160, column: 42, scope: !520)
!529 = !DILocation(line: 160, column: 47, scope: !520)
!530 = !DILocation(line: 160, column: 50, scope: !520)
!531 = !DILocation(line: 160, column: 54, scope: !520)
!532 = !DILocation(line: 160, column: 52, scope: !520)
!533 = !DILocation(line: 160, column: 17, scope: !517)
!534 = !DILocation(line: 161, column: 27, scope: !535)
!535 = distinct !DILexicalBlock(scope: !520, file: !12, line: 160, column: 59)
!536 = !DILocation(line: 162, column: 23, scope: !535)
!537 = !DILocation(line: 162, column: 24, scope: !535)
!538 = !DILocation(line: 162, column: 21, scope: !535)
!539 = !DILocation(line: 163, column: 17, scope: !535)
!540 = !DILocation(line: 165, column: 13, scope: !541)
!541 = distinct !DILexicalBlock(scope: !451, file: !12, line: 165, column: 13)
!542 = !DILocation(line: 165, column: 13, scope: !451)
!543 = !DILocation(line: 166, column: 18, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !12, line: 166, column: 17)
!545 = !DILocation(line: 166, column: 20, scope: !544)
!546 = !DILocation(line: 166, column: 25, scope: !544)
!547 = !DILocation(line: 166, column: 28, scope: !544)
!548 = !DILocation(line: 166, column: 32, scope: !544)
!549 = !DILocation(line: 166, column: 30, scope: !544)
!550 = !DILocation(line: 166, column: 36, scope: !544)
!551 = !DILocation(line: 166, column: 40, scope: !544)
!552 = !DILocation(line: 166, column: 42, scope: !544)
!553 = !DILocation(line: 166, column: 47, scope: !544)
!554 = !DILocation(line: 166, column: 50, scope: !544)
!555 = !DILocation(line: 166, column: 54, scope: !544)
!556 = !DILocation(line: 166, column: 52, scope: !544)
!557 = !DILocation(line: 166, column: 17, scope: !541)
!558 = !DILocation(line: 167, column: 27, scope: !559)
!559 = distinct !DILexicalBlock(scope: !544, file: !12, line: 166, column: 59)
!560 = !DILocation(line: 168, column: 23, scope: !559)
!561 = !DILocation(line: 168, column: 24, scope: !559)
!562 = !DILocation(line: 168, column: 21, scope: !559)
!563 = !DILocation(line: 169, column: 17, scope: !559)
!564 = !DILocation(line: 171, column: 13, scope: !565)
!565 = distinct !DILexicalBlock(scope: !451, file: !12, line: 171, column: 13)
!566 = !DILocation(line: 171, column: 16, scope: !565)
!567 = !DILocation(line: 171, column: 15, scope: !565)
!568 = !DILocation(line: 171, column: 13, scope: !451)
!569 = !DILocation(line: 172, column: 17, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !12, line: 171, column: 20)
!571 = !DILocation(line: 172, column: 18, scope: !570)
!572 = !DILocation(line: 172, column: 16, scope: !570)
!573 = !DILocation(line: 173, column: 23, scope: !570)
!574 = !DILocation(line: 174, column: 13, scope: !570)
!575 = !DILocation(line: 176, column: 13, scope: !576)
!576 = distinct !DILexicalBlock(scope: !451, file: !12, line: 176, column: 13)
!577 = !DILocation(line: 176, column: 13, scope: !451)
!578 = !DILocation(line: 177, column: 17, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !12, line: 177, column: 17)
!580 = distinct !DILexicalBlock(scope: !576, file: !12, line: 176, column: 31)
!581 = !DILocation(line: 177, column: 20, scope: !579)
!582 = !DILocation(line: 177, column: 19, scope: !579)
!583 = !DILocation(line: 177, column: 23, scope: !579)
!584 = !DILocation(line: 177, column: 26, scope: !579)
!585 = !DILocation(line: 177, column: 29, scope: !579)
!586 = !DILocation(line: 177, column: 28, scope: !579)
!587 = !DILocation(line: 177, column: 17, scope: !580)
!588 = !DILocation(line: 178, column: 22, scope: !589)
!589 = distinct !DILexicalBlock(scope: !579, file: !12, line: 177, column: 33)
!590 = !DILocation(line: 178, column: 23, scope: !589)
!591 = !DILocation(line: 178, column: 21, scope: !589)
!592 = !DILocation(line: 179, column: 27, scope: !589)
!593 = !DILocation(line: 180, column: 17, scope: !589)
!594 = !DILocation(line: 183, column: 17, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !12, line: 183, column: 17)
!596 = distinct !DILexicalBlock(scope: !576, file: !12, line: 182, column: 16)
!597 = !DILocation(line: 183, column: 20, scope: !595)
!598 = !DILocation(line: 183, column: 19, scope: !595)
!599 = !DILocation(line: 183, column: 23, scope: !595)
!600 = !DILocation(line: 183, column: 26, scope: !595)
!601 = !DILocation(line: 183, column: 29, scope: !595)
!602 = !DILocation(line: 183, column: 28, scope: !595)
!603 = !DILocation(line: 183, column: 17, scope: !596)
!604 = !DILocation(line: 184, column: 21, scope: !605)
!605 = distinct !DILexicalBlock(scope: !595, file: !12, line: 183, column: 33)
!606 = !DILocation(line: 184, column: 22, scope: !605)
!607 = !DILocation(line: 184, column: 20, scope: !605)
!608 = !DILocation(line: 185, column: 27, scope: !605)
!609 = !DILocation(line: 186, column: 17, scope: !605)
!610 = !DILocation(line: 133, column: 31, scope: !445)
!611 = !DILocation(line: 133, column: 5, scope: !445)
!612 = distinct !{!612, !449, !613, !174}
!613 = !DILocation(line: 189, column: 5, scope: !441)
!614 = !DILocation(line: 191, column: 9, scope: !615)
!615 = distinct !DILexicalBlock(scope: !394, file: !12, line: 191, column: 9)
!616 = !DILocation(line: 191, column: 9, scope: !394)
!617 = !DILocation(line: 192, column: 16, scope: !615)
!618 = !DILocation(line: 192, column: 9, scope: !615)
!619 = !DILocation(line: 194, column: 9, scope: !615)
!620 = !DILocation(line: 195, column: 1, scope: !394)
!621 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 197, type: !622, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!622 = !DISubroutineType(types: !623)
!623 = !{!19}
!624 = !DILocalVariable(name: "a", scope: !621, file: !12, line: 198, type: !19)
!625 = !DILocation(line: 198, column: 9, scope: !621)
!626 = !DILocation(line: 199, column: 24, scope: !621)
!627 = !DILocation(line: 199, column: 5, scope: !621)
!628 = !DILocation(line: 200, column: 22, scope: !621)
!629 = !DILocation(line: 200, column: 19, scope: !621)
!630 = !DILocation(line: 200, column: 24, scope: !621)
!631 = !DILocation(line: 200, column: 17, scope: !621)
!632 = !DILocation(line: 200, column: 5, scope: !621)
!633 = !DILocalVariable(name: "x", scope: !621, file: !12, line: 202, type: !634)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 3200, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 100)
!637 = !DILocation(line: 202, column: 9, scope: !621)
!638 = !DILocalVariable(name: "y", scope: !621, file: !12, line: 203, type: !634)
!639 = !DILocation(line: 203, column: 9, scope: !621)
!640 = !DILocation(line: 205, column: 24, scope: !621)
!641 = !DILocation(line: 205, column: 5, scope: !621)
!642 = !DILocation(line: 206, column: 24, scope: !621)
!643 = !DILocation(line: 206, column: 5, scope: !621)
!644 = !DILocalVariable(name: "i", scope: !645, file: !12, line: 208, type: !19)
!645 = distinct !DILexicalBlock(scope: !621, file: !12, line: 208, column: 5)
!646 = !DILocation(line: 208, column: 14, scope: !645)
!647 = !DILocation(line: 208, column: 10, scope: !645)
!648 = !DILocation(line: 208, column: 21, scope: !649)
!649 = distinct !DILexicalBlock(scope: !645, file: !12, line: 208, column: 5)
!650 = !DILocation(line: 208, column: 25, scope: !649)
!651 = !DILocation(line: 208, column: 23, scope: !649)
!652 = !DILocation(line: 208, column: 5, scope: !645)
!653 = !DILocation(line: 209, column: 23, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !12, line: 208, column: 33)
!655 = !DILocation(line: 209, column: 21, scope: !654)
!656 = !DILocation(line: 209, column: 26, scope: !654)
!657 = !DILocation(line: 209, column: 9, scope: !654)
!658 = !DILocation(line: 210, column: 23, scope: !654)
!659 = !DILocation(line: 210, column: 21, scope: !654)
!660 = !DILocation(line: 210, column: 26, scope: !654)
!661 = !DILocation(line: 210, column: 9, scope: !654)
!662 = !DILocation(line: 208, column: 28, scope: !649)
!663 = !DILocation(line: 208, column: 5, scope: !649)
!664 = distinct !{!664, !652, !665, !174}
!665 = !DILocation(line: 211, column: 5, scope: !645)
!666 = !DILocalVariable(name: "x2", scope: !621, file: !12, line: 213, type: !634)
!667 = !DILocation(line: 213, column: 9, scope: !621)
!668 = !DILocalVariable(name: "y2", scope: !621, file: !12, line: 214, type: !634)
!669 = !DILocation(line: 214, column: 9, scope: !621)
!670 = !DILocation(line: 216, column: 5, scope: !621)
!671 = !DILocation(line: 217, column: 5, scope: !621)
!672 = !DILocalVariable(name: "arb1", scope: !621, file: !12, line: 219, type: !19)
!673 = !DILocation(line: 219, column: 9, scope: !621)
!674 = !DILocation(line: 219, column: 30, scope: !621)
!675 = !DILocation(line: 219, column: 33, scope: !621)
!676 = !DILocation(line: 219, column: 36, scope: !621)
!677 = !DILocation(line: 219, column: 16, scope: !621)
!678 = !DILocalVariable(name: "arb2", scope: !621, file: !12, line: 220, type: !19)
!679 = !DILocation(line: 220, column: 9, scope: !621)
!680 = !DILocation(line: 220, column: 30, scope: !621)
!681 = !DILocation(line: 220, column: 33, scope: !621)
!682 = !DILocation(line: 220, column: 37, scope: !621)
!683 = !DILocation(line: 220, column: 16, scope: !621)
!684 = !DILocation(line: 222, column: 5, scope: !621)
!685 = !DILocation(line: 223, column: 17, scope: !621)
!686 = !DILocation(line: 223, column: 25, scope: !621)
!687 = !DILocation(line: 223, column: 22, scope: !621)
!688 = !DILocation(line: 223, column: 5, scope: !621)
!689 = !DILocation(line: 225, column: 5, scope: !621)
!690 = !{!691, !691, i64 0}
!691 = !{!"omnipotent char", !692, i64 0}
!692 = !{!"Simple C/C++ TBAA"}
!693 = !{!694}
!694 = distinct !{!694, !695}
!695 = distinct !{!695, !"LVerDomain"}
!696 = !{!697}
!697 = distinct !{!697, !695}
!698 = distinct !{!698, !174, !699}
!699 = !{!"llvm.loop.isvectorized", i32 1}
!700 = distinct !{!700, !174, !699}
!701 = distinct !{!701, !174, !699}
