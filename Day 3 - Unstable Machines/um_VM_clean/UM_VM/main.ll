; ModuleID = 'main.cpp'
source_filename = "main.cpp"
target datalayout = "e-m:x-p:32:32-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i386-pc-windows-msvc18.0.0"

%struct.VMStreamHeader = type { [4 x i8], i8*, i32, i8*, i32, [28 x i8] }
%struct._iobuf = type { i8* }
%struct.__crt_locale_pointers = type { %struct.__crt_locale_data*, %struct.__crt_multibyte_data* }
%struct.__crt_locale_data = type opaque
%struct.__crt_multibyte_data = type opaque

$printf = comdat any

$__local_stdio_printf_options = comdat any

$"\01??_C@_02JDPG@rb?$AA@" = comdat any

$"\01??_C@_0CC@ONKFJPBD@c?3?2temp?2unstablemachines?2VMH1?4bi@" = comdat any

$"\01??_C@_0CC@GLDBONLN@c?3?2temp?2unstablemachines?2VMH2?4bi@" = comdat any

$"\01??_C@_0CC@KAGNDOBI@c?3?2temp?2unstablemachines?2VMH3?4bi@" = comdat any

$"\01??_C@_0CE@FKBENCLA@c?3?2temp?2unstablemachines?2VM_OP1?4@" = comdat any

$"\01??_C@_0CE@NMIAKABO@c?3?2temp?2unstablemachines?2VM_OP2?4@" = comdat any

$"\01??_C@_0CE@BHNMHDLL@c?3?2temp?2unstablemachines?2VM_OP3?4@" = comdat any

$"\01??_C@_0BL@CMPMGDNK@Fox?5unknown?5Gadget?5?$EA?50x?$CFX?6?$AA@" = comdat any

$"\01??_C@_04PLHBLNCM@todo?$AA@" = comdat any

$"\01??_C@_03DMHKDCO@R?3?5?$AA@" = comdat any

$"\01??_C@_04JFFKLGJF@?$CF02X?$AA@" = comdat any

$"\01??_C@_03IMKFDEHJ@V?3?5?$AA@" = comdat any

$"\01??_C@_0EN@GDMILGKN@?6IP?3?5?5?5?5?5?5?$CF08X?5SP?3?5?5?5?5?5?5?5?$CF08X?5VM@" = comdat any

$"\01??_C@_0EM@HGPMNDCO@VMReg?$FL3?$FN?5?$CF08X?5VMReg?$FL4?$FN?3?5?$CF08X?5VMR@" = comdat any

$"\01??_C@_0CA@JDBKIAKL@?$FL?$CK?$FN?5Usage?3?5?$CFs?50011223344556677?6?$AA@" = comdat any

$"\01??_C@_0CC@CKPOBJJA@?$FL?$CK?$FN?5Usage?3?5?$CFs?5001122334455667788@" = comdat any

$"\01??_C@_03IENPHDLA@I?3?5?$AA@" = comdat any

$"\01?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = comdat any

@"\01?OpcodeFuncTable@@3PAP6AXE@ZA" = local_unnamed_addr global [17 x void (i8)*] [void (i8)* @"\01?VM_Opcode0@@YAXE@Z", void (i8)* @"\01?VM_Opcode1@@YAXE@Z", void (i8)* @"\01?DoCalculationOnInput@@YAXE@Z", void (i8)* @"\01?VM_Opcode3@@YAXE@Z", void (i8)* @"\01?VM_Opcode4@@YAXE@Z", void (i8)* @"\01?VM_Opcode5@@YAXE@Z", void (i8)* @"\01?StoreVMReg7AtVMStackPtr@@YAXE@Z", void (i8)* @"\01?XorRegisterWithRegister@@YAXE@Z", void (i8)* @"\01?VM_Opcode8@@YAXE@Z", void (i8)* @"\01?SubtractConstantFromRegister@@YAXE@Z", void (i8)* @"\01?LoadBMPConstants@@YAXE@Z", void (i8)* @"\01?JumpRelative@@YAXE@Z", void (i8)* @"\01?ShiftRegisterRight@@YAXE@Z", void (i8)* @"\01?AddRegisterPlusConstOrRegister@@YAXE@Z", void (i8)* @"\01?JMPToRegister@@YAXE@Z", void (i8)* @"\01?ShiftLeftRegister@@YAXE@Z", void (i8)* @"\01?RegisterOperationDispatcher@@YAXE@Z"], align 4
@"\01?VMOpcode_Operations@@3PAP6AXE@ZA" = local_unnamed_addr global [4 x void (i8)*] [void (i8)* @"\01?MoveConstToRegister@@YAXE@Z", void (i8)* @"\01?Move_Register_To_Register@@YAXE@Z", void (i8)* @"\01?StoreRegisterInMemory@@YAXE@Z", void (i8)* @"\01?LoadDWORDFromMemoryByRegValue@@YAXE@Z"], align 4
@"\01?State@@3IA" = local_unnamed_addr global i32 -35130298, align 4
@"\01?DeObState@@3IA" = local_unnamed_addr global i32 15790010, align 4
@"\01?VMStackPtr@@3KA" = local_unnamed_addr global i32 0, align 4
@"\01?VM_Counter@@3KA" = local_unnamed_addr global i32 0, align 4
@"\01?InputParams@@3PAEA" = local_unnamed_addr global i8* null, align 4
@"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A" = local_unnamed_addr global %struct.VMStreamHeader* inttoptr (i32 -1 to %struct.VMStreamHeader*), align 4
@"\01?VM_Regs@@3PAKA" = local_unnamed_addr global [8 x i32] zeroinitializer, align 4
@"\01??_C@_02JDPG@rb?$AA@" = linkonce_odr unnamed_addr constant [3 x i8] c"rb\00", comdat, align 1
@"\01??_C@_0CC@ONKFJPBD@c?3?2temp?2unstablemachines?2VMH1?4bi@" = linkonce_odr unnamed_addr constant [34 x i8] c"c:\5Ctemp\5Cunstablemachines\5CVMH1.bin\00", comdat, align 1
@"\01??_C@_0CC@GLDBONLN@c?3?2temp?2unstablemachines?2VMH2?4bi@" = linkonce_odr unnamed_addr constant [34 x i8] c"c:\5Ctemp\5Cunstablemachines\5CVMH2.bin\00", comdat, align 1
@"\01??_C@_0CC@KAGNDOBI@c?3?2temp?2unstablemachines?2VMH3?4bi@" = linkonce_odr unnamed_addr constant [34 x i8] c"c:\5Ctemp\5Cunstablemachines\5CVMH3.bin\00", comdat, align 1
@"\01??_C@_0CE@FKBENCLA@c?3?2temp?2unstablemachines?2VM_OP1?4@" = linkonce_odr unnamed_addr constant [36 x i8] c"c:\5Ctemp\5Cunstablemachines\5CVM_OP1.bin\00", comdat, align 1
@"\01??_C@_0CE@NMIAKABO@c?3?2temp?2unstablemachines?2VM_OP2?4@" = linkonce_odr unnamed_addr constant [36 x i8] c"c:\5Ctemp\5Cunstablemachines\5CVM_OP2.bin\00", comdat, align 1
@"\01??_C@_0CE@BHNMHDLL@c?3?2temp?2unstablemachines?2VM_OP3?4@" = linkonce_odr unnamed_addr constant [36 x i8] c"c:\5Ctemp\5Cunstablemachines\5CVM_OP3.bin\00", comdat, align 1
@"\01?VM_Opcode_Encoding@@3PAEA" = local_unnamed_addr global [236 x i8] c"\00\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\01\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\02\11\11\11\11\11\11\11\03\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\04\11\11\11\11\11\11\11\05\11\11\11\11\11\11\11\06\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\07\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\08\11\11\11\11\11\11\11\09\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\0A\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\0B\11\11\11\11\11\11\11\0C\11\11\11\11\11\11\11\0D\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\0E\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\0F\11\11\11\11\11\11\11\10\8DI\00", align 1
@"\01??_C@_0BL@CMPMGDNK@Fox?5unknown?5Gadget?5?$EA?50x?$CFX?6?$AA@" = linkonce_odr unnamed_addr constant [27 x i8] c"Fox unknown Gadget @ 0x%X\0A\00", comdat, align 1
@"\01??_C@_04PLHBLNCM@todo?$AA@" = linkonce_odr unnamed_addr constant [5 x i8] c"todo\00", comdat, align 1
@BMPTable = internal unnamed_addr constant [168 x i8] c"x\1C\003\1C\04\A1\9C\00\FE\04\1C\AF\04\04\BBVG\FE\0C\00x \01\AF\04 \BB\ED\11\FE\10\00x\14\00x\18\003\18@\A1W\00\FE\04\10\85\08\042\00\E5\FE \00\AF \10\FE\04\14[\08\00/\96H\FE$\00\AF$\14\13 $\AF\0C |\88K\AF\14\00\FE\04\0CG\08\042\BEf\FE \00\AF \0C\FE\04\14x\08\0B/\AEX\FE$\00\AF$\14\13 $\AF\10 x \01\AF\18 \12]\80\FE\08\0C\FE\04\1C\AF\04\04Y\D6\D3\FE\08\10x \01\AF\04 Y\D0\D6x \01\AF\1C \12\A2\80\DC\84\D6", align 1
@"\01??_C@_03DMHKDCO@R?3?5?$AA@" = linkonce_odr unnamed_addr constant [4 x i8] c"R: \00", comdat, align 1
@"\01??_C@_04JFFKLGJF@?$CF02X?$AA@" = linkonce_odr unnamed_addr constant [5 x i8] c"%02X\00", comdat, align 1
@"\01?Result@?1??VM_Opcode4@@YAXE@Z@3PAKA" = private unnamed_addr constant [4 x i32] [i32 696346405, i32 -723227787, i32 882867425, i32 857597990], align 4
@"\01??_C@_03IMKFDEHJ@V?3?5?$AA@" = linkonce_odr unnamed_addr constant [4 x i8] c"V: \00", comdat, align 1
@"\01??_C@_0EN@GDMILGKN@?6IP?3?5?5?5?5?5?5?$CF08X?5SP?3?5?5?5?5?5?5?5?$CF08X?5VM@" = linkonce_odr unnamed_addr constant [77 x i8] c"\0AIP:      %08X SP:       %08X VMReg[0]: %08X VMReg[1]: %08X  VMReg[2]: %08X\0A\00", comdat, align 1
@"\01??_C@_0EM@HGPMNDCO@VMReg?$FL3?$FN?5?$CF08X?5VMReg?$FL4?$FN?3?5?$CF08X?5VMR@" = linkonce_odr unnamed_addr constant [76 x i8] c"VMReg[3] %08X VMReg[4]: %08X VMReg[5]: %08X VMReg[6]: %08X  VMReg[7]: %08X\0A\00", comdat, align 1
@"\01??_C@_0CA@JDBKIAKL@?$FL?$CK?$FN?5Usage?3?5?$CFs?50011223344556677?6?$AA@" = linkonce_odr unnamed_addr constant [32 x i8] c"[*] Usage: %s 0011223344556677\0A\00", comdat, align 1
@"\01??_C@_0CC@CKPOBJJA@?$FL?$CK?$FN?5Usage?3?5?$CFs?5001122334455667788@" = linkonce_odr unnamed_addr constant [34 x i8] c"[*] Usage: %s 001122334455667788\0A\00", comdat, align 1
@"\01??_C@_03IENPHDLA@I?3?5?$AA@" = linkonce_odr unnamed_addr constant [4 x i8] c"I: \00", comdat, align 1
@"\01?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = linkonce_odr global i64 0, comdat, align 8

; Function Attrs: norecurse nounwind
define void @"\01?VM_Opcode0@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 0), align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i = add i32 %1, %0
  %xor.i = xor i32 %add.i, %1
  %sub.i = sub i32 %xor.i, %1
  %2 = trunc i32 %sub.i to i16
  %tobool = icmp slt i16 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and1 = and i32 %sub.i, 32767
  %3 = load i32, i32* @"\01?VM_Counter@@3KA", align 4, !tbaa !5
  %sub = sub i32 %3, %and1
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* @"\01?VM_Counter@@3KA", align 4, !tbaa !5
  %add = add i32 %4, %sub.i
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add.sink = phi i32 [ %add, %if.else ], [ %sub, %if.then ]
  store i32 %add.sink, i32* @"\01?VM_Counter@@3KA", align 4, !tbaa !5
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?VM_Opcode1@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 1
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %phitmp = and i32 %10, 255
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit":   ; preds = %for.inc.i
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", %entry, %cleanup.i
  %11 = phi i32 [ %sub.i21.i, %cleanup.i ], [ %0, %entry ], [ %0, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %12 = phi i32 [ %phitmp, %cleanup.i ], [ 255, %entry ], [ 255, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %13 = and i8 %VMOpcode, 7
  %and = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %and, 8
  %add = or i32 %12, %shl
  %add.i45 = add i32 %1, %11
  %xor.i46 = xor i32 %add.i45, %1
  %sub.i47 = sub i32 %xor.i46, %1
  %14 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %add.i.i24 = add i32 %14, %1
  %xor.i.i25 = xor i32 %add.i.i24, %1
  %sub.i.i26 = sub i32 %xor.i.i25, %1
  %sub.i27 = add i32 %sub.i.i26, -4
  %add.i19.i28 = add i32 %xor.i.i25, -4
  %xor.i20.i29 = xor i32 %add.i19.i28, %1
  %sub.i21.i30 = sub i32 %xor.i20.i29, %1
  store i32 %sub.i21.i30, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  br i1 %cmp23.i, label %"\01?SetValueAtVMReg7AndDecrease@@YAKH@Z.exit", label %for.body.i37.preheader

for.body.i37.preheader:                           ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit"
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.body.i37.preheader, %for.inc.i41
  %Ptr.024.i32 = phi %struct.VMStreamHeader* [ %19, %for.inc.i41 ], [ %2, %for.body.i37.preheader ]
  %VMMemoryPtr.i33 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i32, i32 0, i32 1
  %15 = bitcast i8** %VMMemoryPtr.i33 to i32*
  %16 = load i32, i32* %15, align 4, !tbaa !13
  %VMMemorySize.i34 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i32, i32 0, i32 2
  %17 = load i32, i32* %VMMemorySize.i34, align 4, !tbaa !15
  %add.i35 = add i32 %17, %16
  %cmp2.i36 = icmp ult i32 %sub.i27, %add.i35
  br i1 %cmp2.i36, label %cleanup.i44, label %lor.lhs.false.i39

lor.lhs.false.i39:                                ; preds = %for.body.i37
  %NextVMStreamPtr.i38 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i32, i32 0, i32 4
  %18 = load i32, i32* %NextVMStreamPtr.i38, align 4, !tbaa !16
  %cmp3.i = icmp eq i32 %18, -1
  br i1 %cmp3.i, label %cleanup.i44, label %for.inc.i41

for.inc.i41:                                      ; preds = %lor.lhs.false.i39
  %19 = inttoptr i32 %18 to %struct.VMStreamHeader*
  %cmp.i40 = icmp eq %struct.VMStreamHeader* %19, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i40, label %"\01?SetValueAtVMReg7AndDecrease@@YAKH@Z.exit.loopexit", label %for.body.i37

cleanup.i44:                                      ; preds = %lor.lhs.false.i39, %for.body.i37
  %sub5.i = sub i32 %sub.i27, %16
  %VMOpcodePtr.i.i42 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i32, i32 0, i32 3
  %20 = load i8*, i8** %VMOpcodePtr.i.i42, align 4, !tbaa !17
  %add.ptr.i.i43 = getelementptr inbounds i8, i8* %20, i32 %sub5.i
  %21 = bitcast i8* %add.ptr.i.i43 to i32*
  store i32 %sub.i47, i32* %21, align 4, !tbaa !5
  %.pre = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  br label %"\01?SetValueAtVMReg7AndDecrease@@YAKH@Z.exit"

"\01?SetValueAtVMReg7AndDecrease@@YAKH@Z.exit.loopexit": ; preds = %for.inc.i41
  br label %"\01?SetValueAtVMReg7AndDecrease@@YAKH@Z.exit"

"\01?SetValueAtVMReg7AndDecrease@@YAKH@Z.exit":   ; preds = %"\01?SetValueAtVMReg7AndDecrease@@YAKH@Z.exit.loopexit", %"\01?GetByteFromVMStream@@YAEXZ.exit", %cleanup.i44
  %22 = phi i32 [ %11, %"\01?GetByteFromVMStream@@YAEXZ.exit" ], [ %.pre, %cleanup.i44 ], [ %11, %"\01?SetValueAtVMReg7AndDecrease@@YAKH@Z.exit.loopexit" ]
  %add.i21 = add i32 %1, %22
  %xor.i22 = xor i32 %add.i21, %1
  %and5 = and i32 %shl, 1024
  %cmp = icmp eq i32 %and5, 0
  %and6 = and i32 %add, 1023
  %23 = sub nsw i32 0, %and6
  %eax.0.p = select i1 %cmp, i32 %add, i32 %23
  %add.i19 = add i32 %xor.i22, %eax.0.p
  %xor.i = xor i32 %add.i19, %1
  %sub.i20 = sub i32 %xor.i, %1
  store i32 %sub.i20, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind
define void @"\01?DoCalculationOnInput@@YAXE@Z"(i8 zeroext %VMOpcode) #1 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i = add i32 %1, %0
  %xor.i = xor i32 %add.i, %1
  %sub.i = sub i32 %xor.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp14.i12 = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp14.i12, label %"\01?LoadValueFromLocation@@YAKI@Z.exit", label %for.body.i18.preheader

for.body.i18.preheader:                           ; preds = %entry
  br label %for.body.i18

for.body.i18:                                     ; preds = %for.body.i18.preheader, %for.inc.i23
  %Ptr.015.i13 = phi %struct.VMStreamHeader* [ %7, %for.inc.i23 ], [ %2, %for.body.i18.preheader ]
  %VMMemoryPtr.i14 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i13, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i14 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i15 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i13, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i15, align 4, !tbaa !15
  %add.i16 = add i32 %5, %4
  %cmp1.i17 = icmp ugt i32 %add.i16, %sub.i
  br i1 %cmp1.i17, label %cleanup.i27, label %lor.lhs.false.i21

lor.lhs.false.i21:                                ; preds = %for.body.i18
  %NextVMStreamPtr.i19 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i13, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i19, align 4, !tbaa !16
  %cmp2.i20 = icmp eq i32 %6, -1
  br i1 %cmp2.i20, label %cleanup.i27, label %for.inc.i23

for.inc.i23:                                      ; preds = %lor.lhs.false.i21
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i22 = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i22, label %for.body.i.preheader.loopexit, label %for.body.i18

cleanup.i27:                                      ; preds = %lor.lhs.false.i21, %for.body.i18
  %sub.i24 = sub i32 %sub.i, %4
  %VMOpcodePtr.i.i25 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i13, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i25, align 4, !tbaa !17
  %add.ptr.i.i26 = getelementptr inbounds i8, i8* %8, i32 %sub.i24
  %9 = bitcast i8* %add.ptr.i.i26 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  br label %for.body.i.preheader

for.body.i.preheader.loopexit:                    ; preds = %for.inc.i23
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.i.preheader.loopexit, %cleanup.i27
  %.ph = phi i32 [ %10, %cleanup.i27 ], [ -1, %for.body.i.preheader.loopexit ]
  %add = add i32 %sub.i, 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.015.i = phi %struct.VMStreamHeader* [ %15, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i, i32 0, i32 1
  %11 = bitcast i8** %VMMemoryPtr.i to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i, i32 0, i32 2
  %13 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i10 = add i32 %13, %12
  %cmp1.i = icmp ugt i32 %add.i10, %add
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i, i32 0, i32 4
  %14 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %14, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %15 = inttoptr i32 %14 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %15, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?LoadValueFromLocation@@YAKI@Z.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %sub.i11 = sub i32 %add, %12
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i, i32 0, i32 3
  %16 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %16, i32 %sub.i11
  %17 = bitcast i8* %add.ptr.i.i to i32*
  %18 = load i32, i32* %17, align 4, !tbaa !5
  br label %"\01?LoadValueFromLocation@@YAKI@Z.exit"

"\01?LoadValueFromLocation@@YAKI@Z.exit.loopexit": ; preds = %for.inc.i
  br label %"\01?LoadValueFromLocation@@YAKI@Z.exit"

"\01?LoadValueFromLocation@@YAKI@Z.exit":         ; preds = %"\01?LoadValueFromLocation@@YAKI@Z.exit.loopexit", %entry, %cleanup.i
  %conv32 = phi i32 [ %.ph, %cleanup.i ], [ 255, %entry ], [ %.ph, %"\01?LoadValueFromLocation@@YAKI@Z.exit.loopexit" ]
  %19 = phi i32 [ %18, %cleanup.i ], [ -1, %entry ], [ -1, %"\01?LoadValueFromLocation@@YAKI@Z.exit.loopexit" ]
  %conv.i = and i32 %conv32, 255
  %vecinit.i294.i = insertelement <4 x i32> undef, i32 %conv.i, i32 0
  %vecinit3.i295.i = shufflevector <4 x i32> %vecinit.i294.i, <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %20 = bitcast <4 x i32> %vecinit3.i295.i to <2 x i64>
  %21 = bitcast <4 x i32> %vecinit3.i295.i to <2 x double>
  %vecinit.i.i = insertelement <4 x i32> undef, i32 %19, i32 0
  %vecinit3.i.i = shufflevector <4 x i32> %vecinit.i.i, <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %22 = bitcast <4 x i32> %vecinit3.i.i to <2 x double>
  br label %while.cond.i

while.cond.i.loopexit:                            ; preds = %if.else26.i
  br label %while.cond.i.backedge

while.cond.i:                                     ; preds = %while.cond.i.backedge, %"\01?LoadValueFromLocation@@YAKI@Z.exit"
  %v21.0.i = phi i32 [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %v21.1.i, %while.cond.i.backedge ]
  %v22.0.i = phi i32 [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %v22.1.i, %while.cond.i.backedge ]
  %v9.0.i = phi i32 [ 1847, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %v9.0.i.be, %while.cond.i.backedge ]
  %a3.0.i = phi i32 [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %a3.0.i.be, %while.cond.i.backedge ]
  %23 = phi <2 x i64> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %.be1075, %while.cond.i.backedge ]
  %a4.0.i = phi <2 x double> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %a4.0.i.be, %while.cond.i.backedge ]
  %a5.0.i = phi <2 x double> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %a5.0.i.be, %while.cond.i.backedge ]
  %a6.0.i = phi <2 x double> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %a6.0.i.be, %while.cond.i.backedge ]
  %24 = phi <4 x i32> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %.be1076, %while.cond.i.backedge ]
  %25 = phi <4 x i32> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %.be1077, %while.cond.i.backedge ]
  %a7.0.i = phi <2 x i64> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %a7.0.i.be, %while.cond.i.backedge ]
  %26 = phi <16 x i8> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %.be1078, %while.cond.i.backedge ]
  %27 = phi <16 x i8> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %.be1079, %while.cond.i.backedge ]
  %a8.0.i = phi <2 x i64> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %a8.0.i.be, %while.cond.i.backedge ]
  %28 = phi <2 x i64> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %.be1080, %while.cond.i.backedge ]
  %29 = phi <2 x i64> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %.be1081, %while.cond.i.backedge ]
  %a9.0.i = phi <2 x double> [ undef, %"\01?LoadValueFromLocation@@YAKI@Z.exit" ], [ %a9.0.i.be, %while.cond.i.backedge ]
  br label %LABEL_2.i

LABEL_2.i:                                        ; preds = %LABEL_2.i.backedge, %while.cond.i
  %v21.1.i = phi i32 [ %v21.0.i, %while.cond.i ], [ %v21.1.i.be, %LABEL_2.i.backedge ]
  %v22.1.i = phi i32 [ %v22.0.i, %while.cond.i ], [ %v22.1.i.be, %LABEL_2.i.backedge ]
  %v9.1.i = phi i32 [ %v9.0.i, %while.cond.i ], [ %v9.1.i.be, %LABEL_2.i.backedge ]
  %a3.1.i = phi i32 [ %a3.0.i, %while.cond.i ], [ %a3.1.i.be, %LABEL_2.i.backedge ]
  %30 = phi <2 x i64> [ %23, %while.cond.i ], [ %.be, %LABEL_2.i.backedge ]
  %a4.1.i = phi <2 x double> [ %a4.0.i, %while.cond.i ], [ %a4.1.i.be, %LABEL_2.i.backedge ]
  %a5.1.i = phi <2 x double> [ %a5.0.i, %while.cond.i ], [ %a5.1.i.be, %LABEL_2.i.backedge ]
  %a6.1.i = phi <2 x double> [ %a6.0.i, %while.cond.i ], [ %a6.1.i.be, %LABEL_2.i.backedge ]
  %31 = phi <4 x i32> [ %24, %while.cond.i ], [ %.be1068, %LABEL_2.i.backedge ]
  %32 = phi <4 x i32> [ %25, %while.cond.i ], [ %.be1069, %LABEL_2.i.backedge ]
  %a7.1.i = phi <2 x i64> [ %a7.0.i, %while.cond.i ], [ %a7.1.i.be, %LABEL_2.i.backedge ]
  %33 = phi <16 x i8> [ %26, %while.cond.i ], [ %.be1070, %LABEL_2.i.backedge ]
  %34 = phi <16 x i8> [ %27, %while.cond.i ], [ %.be1071, %LABEL_2.i.backedge ]
  %a8.1.i = phi <2 x i64> [ %a8.0.i, %while.cond.i ], [ %a8.1.i.be, %LABEL_2.i.backedge ]
  %35 = phi <2 x i64> [ %28, %while.cond.i ], [ %.be1072, %LABEL_2.i.backedge ]
  %36 = phi <2 x i64> [ %29, %while.cond.i ], [ %.be1073, %LABEL_2.i.backedge ]
  %a9.1.i = phi <2 x double> [ %a9.0.i, %while.cond.i ], [ %a9.1.i.be, %LABEL_2.i.backedge ]
  %cmp416.i = icmp ult i32 %v9.1.i, 942
  br i1 %cmp416.i, label %while.body2.lr.ph.i, label %while.end.i

while.body2.lr.ph.i:                              ; preds = %LABEL_2.i
  %37 = bitcast <2 x i64> %36 to <8 x i16>
  %vecext.i301.i = extractelement <8 x i16> %37, i32 0
  %conv.i302.i = zext i16 %vecext.i301.i to i32
  br label %while.body2.outer.i

while.body2.outer.i:                              ; preds = %if.else44.i, %while.body2.lr.ph.i
  %a7.2422.ph.i = phi <2 x i64> [ %48, %if.else44.i ], [ %a7.1.i, %while.body2.lr.ph.i ]
  %.ph.i = phi <4 x i32> [ %vecinit3.i297.i, %if.else44.i ], [ %32, %while.body2.lr.ph.i ]
  %.ph651.i = phi <4 x i32> [ %vecinit3.i297.i, %if.else44.i ], [ %31, %while.body2.lr.ph.i ]
  %a6.2421.ph.i = phi <2 x double> [ %a6.2421.ph654.i, %if.else44.i ], [ %a6.1.i, %while.body2.lr.ph.i ]
  %a5.2420.ph.i = phi <2 x double> [ %a5.2420.ph661.i, %if.else44.i ], [ %a5.1.i, %while.body2.lr.ph.i ]
  %a4.2419.ph.i = phi <2 x double> [ %a4.2419.ph667.i, %if.else44.i ], [ %a4.1.i, %while.body2.lr.ph.i ]
  %.ph652.i = phi <2 x i64> [ %.ph668.i, %if.else44.i ], [ %30, %while.body2.lr.ph.i ]
  %a3.2418.ph.i = phi i32 [ %a3.2418.i, %if.else44.i ], [ %a3.1.i, %while.body2.lr.ph.i ]
  %v9.2417.ph.i = phi i32 [ 862, %if.else44.i ], [ %v9.1.i, %while.body2.lr.ph.i ]
  %38 = bitcast <2 x i64> %a7.2422.ph.i to <16 x i8>
  br label %while.body2.outer653.i

while.body2.outer653.i.loopexit:                  ; preds = %if.then56.i
  br label %while.body2.outer653.i

while.body2.outer653.i:                           ; preds = %while.body2.outer653.i.loopexit, %while.body2.outer.i
  %a6.2421.ph654.i = phi <2 x double> [ %a6.2421.ph.i, %while.body2.outer.i ], [ %a5.2420.ph661.i, %while.body2.outer653.i.loopexit ]
  %a5.2420.ph655.i = phi <2 x double> [ %a5.2420.ph.i, %while.body2.outer.i ], [ %a5.2420.ph661.i, %while.body2.outer653.i.loopexit ]
  %a4.2419.ph656.i = phi <2 x double> [ %a4.2419.ph.i, %while.body2.outer.i ], [ %a4.2419.ph667.i, %while.body2.outer653.i.loopexit ]
  %.ph657.i = phi <2 x i64> [ %.ph652.i, %while.body2.outer.i ], [ %.ph668.i, %while.body2.outer653.i.loopexit ]
  %a3.2418.ph658.i = phi i32 [ %a3.2418.ph.i, %while.body2.outer.i ], [ %a3.2418.i, %while.body2.outer653.i.loopexit ]
  %v9.2417.ph659.i = phi i32 [ %v9.2417.ph.i, %while.body2.outer.i ], [ 108, %while.body2.outer653.i.loopexit ]
  %39 = bitcast <2 x double> %a6.2421.ph654.i to <2 x i64>
  br label %while.body2.outer660.i

while.body2.outer660.i:                           ; preds = %while.body2.outer660.i.backedge, %while.body2.outer653.i
  %a5.2420.ph661.i = phi <2 x double> [ %a5.2420.ph655.i, %while.body2.outer653.i ], [ %a5.2420.ph661.i.be, %while.body2.outer660.i.backedge ]
  %a4.2419.ph662.i = phi <2 x double> [ %a4.2419.ph656.i, %while.body2.outer653.i ], [ %a4.2419.ph667.i, %while.body2.outer660.i.backedge ]
  %.ph663.i = phi <2 x i64> [ %.ph657.i, %while.body2.outer653.i ], [ %.ph668.i, %while.body2.outer660.i.backedge ]
  %a3.2418.ph664.i = phi i32 [ %a3.2418.ph658.i, %while.body2.outer653.i ], [ %a3.2418.i, %while.body2.outer660.i.backedge ]
  %v9.2417.ph665.i = phi i32 [ %v9.2417.ph659.i, %while.body2.outer653.i ], [ %v9.2417.ph665.i.be, %while.body2.outer660.i.backedge ]
  %40 = bitcast <2 x double> %a5.2420.ph661.i to <8 x i16>
  %vecext.i292.i = extractelement <8 x i16> %40, i32 0
  %conv.i293.i = zext i16 %vecext.i292.i to i32
  br label %while.body2.outer666.i

while.body2.outer666.i.loopexit:                  ; preds = %if.else49.i
  br label %while.body2.outer666.i.backedge

while.body2.outer666.i:                           ; preds = %while.body2.outer666.i.backedge, %while.body2.outer660.i
  %a4.2419.ph667.i = phi <2 x double> [ %a4.2419.ph662.i, %while.body2.outer660.i ], [ %a4.2419.ph667.i.be, %while.body2.outer666.i.backedge ]
  %.ph668.i = phi <2 x i64> [ %.ph663.i, %while.body2.outer660.i ], [ %.ph668.i.be, %while.body2.outer666.i.backedge ]
  %a3.2418.ph669.i = phi i32 [ %a3.2418.ph664.i, %while.body2.outer660.i ], [ %a3.2418.i, %while.body2.outer666.i.backedge ]
  %v9.2417.ph670.i = phi i32 [ %v9.2417.ph665.i, %while.body2.outer660.i ], [ %v9.2417.ph670.i.be, %while.body2.outer666.i.backedge ]
  br label %while.body2.i

while.body2.i:                                    ; preds = %if.then56.i, %while.body2.outer666.i
  %a3.2418.i = phi i32 [ %a3.2418.ph669.i, %while.body2.outer666.i ], [ %conv.i293.i, %if.then56.i ]
  %v9.2417.i = phi i32 [ %v9.2417.ph670.i, %while.body2.outer666.i ], [ 83, %if.then56.i ]
  %cmp3.i = icmp eq i32 %v9.2417.i, 941
  br i1 %cmp3.i, label %sw.bb168.i.loopexit, label %if.else.i

if.else.i:                                        ; preds = %while.body2.i
  %cmp5.i = icmp ugt i32 %v9.2417.i, 371
  br i1 %cmp5.i, label %if.then6.i, label %if.else49.i

if.then6.i:                                       ; preds = %if.else.i
  %cmp7.i = icmp ugt i32 %v9.2417.i, 630
  br i1 %cmp7.i, label %if.then8.i, label %if.else26.i

if.then8.i:                                       ; preds = %if.then6.i
  switch i32 %v9.2417.i, label %"\01?sub_402490@@YAHIE@Z.exit.loopexit1065" [
    i32 721, label %if.else21.i
    i32 862, label %if.else16.i
    i32 902, label %if.end.i
  ]

if.end.i:                                         ; preds = %if.then8.i
  %41 = bitcast <2 x double> %a5.2420.ph661.i to <2 x i64>
  %xor.i.i = xor <2 x i64> %39, %41
  %42 = bitcast <2 x i64> %xor.i.i to <2 x double>
  br label %while.body2.outer660.i.backedge

while.body2.outer660.i.backedge:                  ; preds = %if.end.i, %if.else16.i
  %a5.2420.ph661.i.be = phi <2 x double> [ %42, %if.end.i ], [ %44, %if.else16.i ]
  %v9.2417.ph665.i.be = phi i32 [ 337, %if.end.i ], [ 299, %if.else16.i ]
  br label %while.body2.outer660.i

if.else16.i:                                      ; preds = %if.then8.i
  %43 = bitcast <2 x double> %a5.2420.ph661.i to <4 x i32>
  %shuffle.i = shufflevector <4 x i32> %43, <4 x i32> undef, <4 x i32> zeroinitializer
  %44 = bitcast <4 x i32> %shuffle.i to <2 x double>
  br label %while.body2.outer660.i.backedge

if.else21.i:                                      ; preds = %if.then8.i
  %45 = bitcast <2 x double> %a4.2419.ph667.i to <16 x i8>
  %add.i300.i = add <16 x i8> %45, %38
  %46 = bitcast <16 x i8> %add.i300.i to <2 x i64>
  %47 = bitcast <16 x i8> %add.i300.i to <2 x double>
  br label %while.body2.outer666.i.backedge

while.body2.outer666.i.backedge:                  ; preds = %if.else21.i, %while.body2.outer666.i.loopexit
  %a4.2419.ph667.i.be = phi <2 x double> [ %47, %if.else21.i ], [ %21, %while.body2.outer666.i.loopexit ]
  %.ph668.i.be = phi <2 x i64> [ %46, %if.else21.i ], [ %20, %while.body2.outer666.i.loopexit ]
  %v9.2417.ph670.i.be = phi i32 [ 360, %if.else21.i ], [ 630, %while.body2.outer666.i.loopexit ]
  br label %while.body2.outer666.i

if.else26.i:                                      ; preds = %if.then6.i
  switch i32 %v9.2417.i, label %"\01?sub_402490@@YAHIE@Z.exit.loopexit1066" [
    i32 630, label %if.end116.i.loopexit
    i32 499, label %if.else44.i
    i32 542, label %while.cond.i.loopexit
    i32 628, label %while.end157.thread.i
  ]

while.end157.thread.i:                            ; preds = %if.else26.i
  %vecext.i298.i = extractelement <8 x i16> %40, i32 3
  %conv.i299.i = zext i16 %vecext.i298.i to i32
  br label %sw.bb158.i

if.else44.i:                                      ; preds = %if.else26.i
  %vecinit.i296.i = insertelement <4 x i32> undef, i32 %a3.2418.i, i32 0
  %vecinit3.i297.i = shufflevector <4 x i32> %vecinit.i296.i, <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %48 = bitcast <4 x i32> %vecinit3.i297.i to <2 x i64>
  br label %while.body2.outer.i

if.else49.i:                                      ; preds = %if.else.i
  %cmp50.i = icmp eq i32 %v9.2417.i, 371
  br i1 %cmp50.i, label %while.body2.outer666.i.loopexit, label %if.else54.i

if.else54.i:                                      ; preds = %if.else49.i
  %cmp55.i = icmp ugt i32 %v9.2417.i, 149
  br i1 %cmp55.i, label %if.then56.i, label %if.else74.i

if.then56.i:                                      ; preds = %if.else54.i
  switch i32 %v9.2417.i, label %"\01?sub_402490@@YAHIE@Z.exit.loopexit" [
    i32 299, label %while.body2.outer653.i.loopexit
    i32 337, label %while.body2.i
    i32 360, label %sw.bb159.i.loopexit
  ]

if.else74.i:                                      ; preds = %if.else54.i
  switch i32 %v9.2417.i, label %"\01?sub_402490@@YAHIE@Z.exit.loopexit1067" [
    i32 149, label %if.then99.i
    i32 23, label %sw.bb.i
    i32 83, label %LABEL_2.i.backedge
    i32 108, label %sw.bb79.i
    i32 122, label %sw.bb83.i
  ]

LABEL_2.i.backedge:                               ; preds = %if.else74.i, %sw.bb.i, %sw.bb79.i, %sw.bb83.i, %while.end157.i, %sw.bb158.i, %sw.bb159.i, %sw.bb163.i, %sw.bb166.i, %sw.bb174.i, %sw.bb168.i
  %v21.1.i.be = phi i32 [ %v21.1.i, %sw.bb83.i ], [ %v21.1.i, %sw.bb79.i ], [ %v21.1.i, %sw.bb.i ], [ %v21.1.i, %sw.bb174.i ], [ %v21.1.i, %sw.bb166.i ], [ %v21.1.i, %sw.bb163.i ], [ %v21.1.i, %sw.bb159.i ], [ %v21.1.i, %sw.bb158.i ], [ %v21.1.i, %while.end157.i ], [ %a3.2418.i, %if.else74.i ], [ %v21.1.i, %sw.bb168.i ]
  %v22.1.i.be = phi i32 [ %v22.1.i, %sw.bb83.i ], [ %v22.1.i, %sw.bb79.i ], [ %v22.1.i, %sw.bb.i ], [ %v22.1.i, %sw.bb174.i ], [ %v22.1.i, %sw.bb166.i ], [ %v22.1.i, %sw.bb163.i ], [ %v22.1.i, %sw.bb159.i ], [ %v22.1.i, %sw.bb158.i ], [ %a3.1.i, %while.end157.i ], [ %v22.1.i, %if.else74.i ], [ %v22.1.i, %sw.bb168.i ]
  %v9.1.i.be = phi i32 [ 2038, %sw.bb83.i ], [ 1294, %sw.bb79.i ], [ 941, %sw.bb.i ], [ 23, %sw.bb174.i ], [ 982, %sw.bb166.i ], [ 371, %sw.bb163.i ], [ 122, %sw.bb159.i ], [ 1851, %sw.bb158.i ], [ 247, %while.end157.i ], [ 628, %if.else74.i ], [ %., %sw.bb168.i ]
  %a3.1.i.be = phi i32 [ %a3.2418.i, %sw.bb83.i ], [ %a3.2418.i, %sw.bb79.i ], [ %a3.2418.i, %sw.bb.i ], [ %a3.1.i, %sw.bb174.i ], [ %a3.1.i, %sw.bb166.i ], [ %a3.1.i, %sw.bb163.i ], [ %a3.2.lcssa540638.i, %sw.bb159.i ], [ %shl.i, %sw.bb158.i ], [ %a3.1.i, %while.end157.i ], [ %a3.2418.i, %if.else74.i ], [ %a3.2.lcssa540650.i, %sw.bb168.i ]
  %.be = phi <2 x i64> [ %.ph668.i, %sw.bb83.i ], [ %.ph668.i, %sw.bb79.i ], [ %.ph668.i, %sw.bb.i ], [ %30, %sw.bb174.i ], [ %30, %sw.bb166.i ], [ %30, %sw.bb163.i ], [ %.lcssa383541637.i, %sw.bb159.i ], [ %.lcssa383541625.i, %sw.bb158.i ], [ %30, %while.end157.i ], [ %.ph668.i, %if.else74.i ], [ %.lcssa383541649.i, %sw.bb168.i ]
  %a4.1.i.be = phi <2 x double> [ %a4.2419.ph667.i, %sw.bb83.i ], [ %a4.2419.ph667.i, %sw.bb79.i ], [ %a4.2419.ph667.i, %sw.bb.i ], [ %a4.1.i, %sw.bb174.i ], [ %a4.1.i, %sw.bb166.i ], [ %a4.1.i, %sw.bb163.i ], [ %a4.2.lcssa542636.i, %sw.bb159.i ], [ %a4.2.lcssa542624.i, %sw.bb158.i ], [ %a4.1.i, %while.end157.i ], [ %a4.2419.ph667.i, %if.else74.i ], [ %a4.2.lcssa542648.i, %sw.bb168.i ]
  %a5.1.i.be = phi <2 x double> [ %a5.2420.ph661.i, %sw.bb83.i ], [ %54, %sw.bb79.i ], [ %a5.2420.ph661.i, %sw.bb.i ], [ %a5.1.i, %sw.bb174.i ], [ %a5.1.i, %sw.bb166.i ], [ %a5.1.i, %sw.bb163.i ], [ %a5.2.lcssa543635.i, %sw.bb159.i ], [ %a5.2.lcssa543623.i, %sw.bb158.i ], [ %a5.1.i, %while.end157.i ], [ %a5.2420.ph661.i, %if.else74.i ], [ %a5.2.lcssa543647.i, %sw.bb168.i ]
  %a6.1.i.be = phi <2 x double> [ %a6.2421.ph654.i, %sw.bb83.i ], [ %a6.2421.ph654.i, %sw.bb79.i ], [ %a6.2421.ph654.i, %sw.bb.i ], [ %a6.1.i, %sw.bb174.i ], [ %a6.1.i, %sw.bb166.i ], [ %a6.1.i, %sw.bb163.i ], [ %70, %sw.bb159.i ], [ %a6.2.lcssa544622.i, %sw.bb158.i ], [ %a6.1.i, %while.end157.i ], [ %a6.2421.ph654.i, %if.else74.i ], [ %a6.2.lcssa544646.i, %sw.bb168.i ]
  %.be1068 = phi <4 x i32> [ %.ph651.i, %sw.bb83.i ], [ %.ph651.i, %sw.bb79.i ], [ %.ph651.i, %sw.bb.i ], [ %31, %sw.bb174.i ], [ %31, %sw.bb166.i ], [ %31, %sw.bb163.i ], [ %.lcssa357545633.i, %sw.bb159.i ], [ %.lcssa357545621.i, %sw.bb158.i ], [ %31, %while.end157.i ], [ %.ph651.i, %if.else74.i ], [ %.lcssa357545645.i, %sw.bb168.i ]
  %.be1069 = phi <4 x i32> [ %.ph.i, %sw.bb83.i ], [ %.ph.i, %sw.bb79.i ], [ %.ph.i, %sw.bb.i ], [ %32, %sw.bb174.i ], [ %32, %sw.bb166.i ], [ %32, %sw.bb163.i ], [ %.lcssa350546632.i, %sw.bb159.i ], [ %.lcssa350546620.i, %sw.bb158.i ], [ %32, %while.end157.i ], [ %.ph.i, %if.else74.i ], [ %.lcssa350546644.i, %sw.bb168.i ]
  %a7.1.i.be = phi <2 x i64> [ %a7.2422.ph.i, %sw.bb83.i ], [ %a7.2422.ph.i, %sw.bb79.i ], [ %a7.2422.ph.i, %sw.bb.i ], [ %a7.1.i, %sw.bb174.i ], [ %a7.1.i, %sw.bb166.i ], [ %a7.1.i, %sw.bb163.i ], [ %a7.2.lcssa547631.i, %sw.bb159.i ], [ %a7.2.lcssa547619.i, %sw.bb158.i ], [ %a7.1.i, %while.end157.i ], [ %a7.2422.ph.i, %if.else74.i ], [ %a7.2.lcssa547643.i, %sw.bb168.i ]
  %.be1070 = phi <16 x i8> [ %add.i291.i, %sw.bb83.i ], [ %33, %sw.bb79.i ], [ %33, %sw.bb.i ], [ %33, %sw.bb174.i ], [ %33, %sw.bb166.i ], [ zeroinitializer, %sw.bb163.i ], [ %.lcssa336548630.i, %sw.bb159.i ], [ %33, %sw.bb158.i ], [ %33, %while.end157.i ], [ %33, %if.else74.i ], [ %33, %sw.bb168.i ]
  %.be1071 = phi <16 x i8> [ %add.i291.i, %sw.bb83.i ], [ %34, %sw.bb79.i ], [ %34, %sw.bb.i ], [ %34, %sw.bb174.i ], [ %34, %sw.bb166.i ], [ zeroinitializer, %sw.bb163.i ], [ %.lcssa549629.i, %sw.bb159.i ], [ %34, %sw.bb158.i ], [ %34, %while.end157.i ], [ %34, %if.else74.i ], [ %34, %sw.bb168.i ]
  %a8.1.i.be = phi <2 x i64> [ %55, %sw.bb83.i ], [ %a8.1.i, %sw.bb79.i ], [ %a8.1.i, %sw.bb.i ], [ %a8.1.i, %sw.bb174.i ], [ %a8.1.i, %sw.bb166.i ], [ zeroinitializer, %sw.bb163.i ], [ %a8.2.lcssa550628.i, %sw.bb159.i ], [ %a8.1.i, %sw.bb158.i ], [ %a8.1.i, %while.end157.i ], [ %a8.1.i, %if.else74.i ], [ %a8.1.i, %sw.bb168.i ]
  %.be1072 = phi <2 x i64> [ %35, %sw.bb83.i ], [ %35, %sw.bb79.i ], [ %50, %sw.bb.i ], [ %a8.1.i, %sw.bb174.i ], [ %a8.1.i, %sw.bb166.i ], [ %35, %sw.bb163.i ], [ %35, %sw.bb159.i ], [ %35, %sw.bb158.i ], [ %35, %while.end157.i ], [ %35, %if.else74.i ], [ %35, %sw.bb168.i ]
  %.be1073 = phi <2 x i64> [ %36, %sw.bb83.i ], [ %36, %sw.bb79.i ], [ %50, %sw.bb.i ], [ %a8.1.i, %sw.bb174.i ], [ %a8.1.i, %sw.bb166.i ], [ %36, %sw.bb163.i ], [ %36, %sw.bb159.i ], [ %36, %sw.bb158.i ], [ %36, %while.end157.i ], [ %36, %if.else74.i ], [ %36, %sw.bb168.i ]
  %a9.1.i.be = phi <2 x double> [ %a9.1.i, %sw.bb83.i ], [ %a9.1.i, %sw.bb79.i ], [ %51, %sw.bb.i ], [ %72, %sw.bb174.i ], [ %71, %sw.bb166.i ], [ %a9.1.i, %sw.bb163.i ], [ %a9.1.i, %sw.bb159.i ], [ %a9.1.i, %sw.bb158.i ], [ %a9.1.i, %while.end157.i ], [ %a9.1.i, %if.else74.i ], [ %a9.1.i, %sw.bb168.i ]
  br label %LABEL_2.i

sw.bb.i:                                          ; preds = %if.else74.i
  %49 = fcmp oeq <2 x double> %a9.1.i, %a4.2419.ph667.i
  %50 = sext <2 x i1> %49 to <2 x i64>
  %51 = bitcast <2 x i64> %50 to <2 x double>
  br label %LABEL_2.i.backedge

sw.bb79.i:                                        ; preds = %if.else74.i
  %52 = bitcast <2 x double> %a5.2420.ph661.i to <4 x i32>
  %53 = tail call <4 x i32> @llvm.x86.sse2.psll.d(<4 x i32> %52, <4 x i32> %.ph.i) #12
  %54 = bitcast <4 x i32> %53 to <2 x double>
  br label %LABEL_2.i.backedge

sw.bb83.i:                                        ; preds = %if.else74.i
  %add.i291.i = add <16 x i8> %38, %34
  %55 = bitcast <16 x i8> %add.i291.i to <2 x i64>
  br label %LABEL_2.i.backedge

while.end.i:                                      ; preds = %LABEL_2.i
  %cmp95.i = icmp ugt i32 %v9.1.i, 1653
  br i1 %cmp95.i, label %while.end157.i, label %if.else104.i

if.then99.i:                                      ; preds = %if.else74.i
  %56 = bitcast <2 x double> %a5.2420.ph661.i to <4 x i32>
  %57 = bitcast <2 x double> %a6.2421.ph654.i to <4 x i32>
  %shuffle.i290.i = shufflevector <4 x i32> %56, <4 x i32> %57, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %58 = bitcast <4 x i32> %shuffle.i290.i to <2 x double>
  %shuffle.i.i = shufflevector <4 x i32> %57, <4 x i32> %shuffle.i290.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %59 = bitcast <4 x i32> %shuffle.i.i to <2 x double>
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.then99.i, %if.end116.i, %if.else118.i, %if.else121.i, %if.else128.i, %if.then130.i, %if.else147.i, %if.else150.i, %while.cond.i.loopexit
  %v9.0.i.be = phi i32 [ 902, %if.then99.i ], [ 1142, %if.end116.i ], [ 1926, %if.else118.i ], [ %..i, %if.else121.i ], [ 499, %if.else128.i ], [ 542, %if.then130.i ], [ 953, %if.else147.i ], [ 1279, %if.else150.i ], [ 499, %while.cond.i.loopexit ]
  %a3.0.i.be = phi i32 [ %a3.2418.i, %if.then99.i ], [ %a3.2.lcssa557.ph592608.i, %if.end116.i ], [ %a3.1.i, %if.else118.i ], [ %a3.1.i, %if.else121.i ], [ %a3.1.i, %if.else128.i ], [ %a3.1.i, %if.then130.i ], [ %a3.1.i, %if.else147.i ], [ %conv.i.i, %if.else150.i ], [ 1, %while.cond.i.loopexit ]
  %.be1075 = phi <2 x i64> [ %.ph668.i, %if.then99.i ], [ %.lcssa383558.ph591609.i, %if.end116.i ], [ %30, %if.else118.i ], [ %30, %if.else121.i ], [ %30, %if.else128.i ], [ %and.i.i, %if.then130.i ], [ %30, %if.else147.i ], [ %30, %if.else150.i ], [ %.ph668.i, %while.cond.i.loopexit ]
  %a4.0.i.be = phi <2 x double> [ %a4.2419.ph667.i, %if.then99.i ], [ %a4.2.lcssa559.ph590610.i, %if.end116.i ], [ %a4.1.i, %if.else118.i ], [ %a4.1.i, %if.else121.i ], [ %a4.1.i, %if.else128.i ], [ %63, %if.then130.i ], [ %a4.1.i, %if.else147.i ], [ %a4.1.i, %if.else150.i ], [ %a4.2419.ph667.i, %while.cond.i.loopexit ]
  %a5.0.i.be = phi <2 x double> [ %58, %if.then99.i ], [ %a5.2.lcssa560.ph589611.i, %if.end116.i ], [ %a5.1.i, %if.else118.i ], [ %a5.1.i, %if.else121.i ], [ %22, %if.else128.i ], [ %a5.1.i, %if.then130.i ], [ %a5.1.i, %if.else147.i ], [ %a5.1.i, %if.else150.i ], [ %22, %while.cond.i.loopexit ]
  %a6.0.i.be = phi <2 x double> [ %59, %if.then99.i ], [ %a6.2.lcssa561.ph588612.i, %if.end116.i ], [ %a6.1.i, %if.else118.i ], [ %a6.1.i, %if.else121.i ], [ %a6.1.i, %if.else128.i ], [ %a6.1.i, %if.then130.i ], [ %a6.1.i, %if.else147.i ], [ %a6.1.i, %if.else150.i ], [ %a6.2421.ph654.i, %while.cond.i.loopexit ]
  %.be1076 = phi <4 x i32> [ %.ph651.i, %if.then99.i ], [ %vecinit3.i289.i, %if.end116.i ], [ %31, %if.else118.i ], [ %31, %if.else121.i ], [ %31, %if.else128.i ], [ %31, %if.then130.i ], [ %31, %if.else147.i ], [ %31, %if.else150.i ], [ %.ph651.i, %while.cond.i.loopexit ]
  %.be1077 = phi <4 x i32> [ %.ph.i, %if.then99.i ], [ %vecinit3.i289.i, %if.end116.i ], [ %32, %if.else118.i ], [ %32, %if.else121.i ], [ %32, %if.else128.i ], [ %32, %if.then130.i ], [ %32, %if.else147.i ], [ %32, %if.else150.i ], [ %.ph.i, %while.cond.i.loopexit ]
  %a7.0.i.be = phi <2 x i64> [ %a7.2422.ph.i, %if.then99.i ], [ %60, %if.end116.i ], [ %a7.1.i, %if.else118.i ], [ %a7.1.i, %if.else121.i ], [ %a7.1.i, %if.else128.i ], [ %a7.1.i, %if.then130.i ], [ %a7.1.i, %if.else147.i ], [ %a7.1.i, %if.else150.i ], [ %a7.2422.ph.i, %while.cond.i.loopexit ]
  %.be1078 = phi <16 x i8> [ %33, %if.then99.i ], [ %33, %if.end116.i ], [ %add.i.i, %if.else118.i ], [ %33, %if.else121.i ], [ %33, %if.else128.i ], [ %33, %if.then130.i ], [ %33, %if.else147.i ], [ %33, %if.else150.i ], [ %33, %while.cond.i.loopexit ]
  %.be1079 = phi <16 x i8> [ %34, %if.then99.i ], [ %34, %if.end116.i ], [ %add.i.i, %if.else118.i ], [ %34, %if.else121.i ], [ %34, %if.else128.i ], [ %34, %if.then130.i ], [ %34, %if.else147.i ], [ %34, %if.else150.i ], [ %34, %while.cond.i.loopexit ]
  %a8.0.i.be = phi <2 x i64> [ %a8.1.i, %if.then99.i ], [ %a8.1.i, %if.end116.i ], [ %62, %if.else118.i ], [ %a8.1.i, %if.else121.i ], [ %a8.1.i, %if.else128.i ], [ %a8.1.i, %if.then130.i ], [ %a8.1.i, %if.else147.i ], [ %a8.1.i, %if.else150.i ], [ %a8.1.i, %while.cond.i.loopexit ]
  %.be1080 = phi <2 x i64> [ %35, %if.then99.i ], [ %35, %if.end116.i ], [ %35, %if.else118.i ], [ %35, %if.else121.i ], [ %35, %if.else128.i ], [ %35, %if.then130.i ], [ %65, %if.else147.i ], [ %35, %if.else150.i ], [ %35, %while.cond.i.loopexit ]
  %.be1081 = phi <2 x i64> [ %36, %if.then99.i ], [ %36, %if.end116.i ], [ %36, %if.else118.i ], [ %36, %if.else121.i ], [ %36, %if.else128.i ], [ %36, %if.then130.i ], [ %65, %if.else147.i ], [ %36, %if.else150.i ], [ %36, %while.cond.i.loopexit ]
  %a9.0.i.be = phi <2 x double> [ %a9.1.i, %if.then99.i ], [ %a9.1.i, %if.end116.i ], [ %a9.1.i, %if.else118.i ], [ %a9.1.i, %if.else121.i ], [ %a9.1.i, %if.else128.i ], [ %a9.1.i, %if.then130.i ], [ %66, %if.else147.i ], [ %a9.1.i, %if.else150.i ], [ %a9.1.i, %while.cond.i.loopexit ]
  br label %while.cond.i

if.else104.i:                                     ; preds = %while.end.i
  %cmp105.i = icmp ugt i32 %v9.1.i, 1142
  br i1 %cmp105.i, label %if.then106.i, label %if.else128.i

if.then106.i:                                     ; preds = %if.else104.i
  switch i32 %v9.1.i, label %"\01?sub_402490@@YAHIE@Z.exit.loopexit1074" [
    i32 1279, label %if.else121.i
    i32 1294, label %if.else118.i
    i32 1576, label %if.end116.i
  ]

if.end116.i.loopexit:                             ; preds = %if.else26.i
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.end116.i.loopexit, %if.then106.i
  %a6.2.lcssa561.ph588612.i = phi <2 x double> [ %a6.1.i, %if.then106.i ], [ %a6.2421.ph654.i, %if.end116.i.loopexit ]
  %a5.2.lcssa560.ph589611.i = phi <2 x double> [ %a5.1.i, %if.then106.i ], [ %a5.2420.ph661.i, %if.end116.i.loopexit ]
  %a4.2.lcssa559.ph590610.i = phi <2 x double> [ %a4.1.i, %if.then106.i ], [ %a4.2419.ph667.i, %if.end116.i.loopexit ]
  %.lcssa383558.ph591609.i = phi <2 x i64> [ %30, %if.then106.i ], [ %.ph668.i, %if.end116.i.loopexit ]
  %a3.2.lcssa557.ph592608.i = phi i32 [ %a3.1.i, %if.then106.i ], [ 255, %if.end116.i.loopexit ]
  %vecinit.i288.i = insertelement <4 x i32> undef, i32 %a3.2.lcssa557.ph592608.i, i32 0
  %vecinit3.i289.i = shufflevector <4 x i32> %vecinit.i288.i, <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %60 = bitcast <4 x i32> %vecinit3.i289.i to <2 x i64>
  br label %while.cond.i.backedge

if.else118.i:                                     ; preds = %if.then106.i
  %61 = bitcast <2 x i64> %a7.1.i to <16 x i8>
  %add.i.i = add <16 x i8> %61, %33
  %62 = bitcast <16 x i8> %add.i.i to <2 x i64>
  br label %while.cond.i.backedge

if.else121.i:                                     ; preds = %if.then106.i
  %conv122.i = trunc i32 %a3.1.i to i16
  %tobool123.i = icmp eq i16 %conv122.i, 0
  %..i = select i1 %tobool123.i, i32 108, i32 721
  br label %while.cond.i.backedge

if.else128.i:                                     ; preds = %if.else104.i
  switch i32 %v9.1.i, label %"\01?sub_402490@@YAHIE@Z.exit.loopexit1074" [
    i32 1142, label %if.then130.i
    i32 953, label %if.else150.i
    i32 982, label %if.else147.i
    i32 1102, label %while.cond.i.backedge
  ]

if.then130.i:                                     ; preds = %if.else128.i
  %and.i.i = and <2 x i64> %a7.1.i, %30
  %63 = bitcast <2 x i64> %and.i.i to <2 x double>
  br label %while.cond.i.backedge

if.else147.i:                                     ; preds = %if.else128.i
  %64 = fcmp oeq <2 x double> %a9.1.i, %a4.1.i
  %65 = sext <2 x i1> %64 to <2 x i64>
  %66 = bitcast <2 x i64> %65 to <2 x double>
  br label %while.cond.i.backedge

if.else150.i:                                     ; preds = %if.else128.i
  %67 = bitcast <2 x i64> %35 to <8 x i16>
  %vecext.i.i = extractelement <8 x i16> %67, i32 0
  %conv.i.i = zext i16 %vecext.i.i to i32
  br label %while.cond.i.backedge

while.end157.i:                                   ; preds = %while.end.i
  switch i32 %v9.1.i, label %"\01?sub_402490@@YAHIE@Z.exit.loopexit1067" [
    i32 1802, label %sw.bb158.i
    i32 1805, label %sw.bb159.i
    i32 1847, label %sw.bb163.i
    i32 1851, label %LABEL_2.i.backedge
    i32 1926, label %sw.bb166.i
    i32 2027, label %sw.bb168.i
    i32 2038, label %sw.bb174.i
  ]

sw.bb158.i:                                       ; preds = %while.end157.i, %while.end157.thread.i
  %a3.2.lcssa540626.i = phi i32 [ %conv.i299.i, %while.end157.thread.i ], [ %a3.1.i, %while.end157.i ]
  %.lcssa383541625.i = phi <2 x i64> [ %.ph668.i, %while.end157.thread.i ], [ %30, %while.end157.i ]
  %a4.2.lcssa542624.i = phi <2 x double> [ %a4.2419.ph667.i, %while.end157.thread.i ], [ %a4.1.i, %while.end157.i ]
  %a5.2.lcssa543623.i = phi <2 x double> [ %a5.2420.ph661.i, %while.end157.thread.i ], [ %a5.1.i, %while.end157.i ]
  %a6.2.lcssa544622.i = phi <2 x double> [ %a6.2421.ph654.i, %while.end157.thread.i ], [ %a6.1.i, %while.end157.i ]
  %.lcssa357545621.i = phi <4 x i32> [ %.ph651.i, %while.end157.thread.i ], [ %31, %while.end157.i ]
  %.lcssa350546620.i = phi <4 x i32> [ %.ph.i, %while.end157.thread.i ], [ %32, %while.end157.i ]
  %a7.2.lcssa547619.i = phi <2 x i64> [ %a7.2422.ph.i, %while.end157.thread.i ], [ %a7.1.i, %while.end157.i ]
  %shl.i = shl i32 %a3.2.lcssa540626.i, 16
  br label %LABEL_2.i.backedge

sw.bb159.i.loopexit:                              ; preds = %if.then56.i
  br label %sw.bb159.i

sw.bb159.i:                                       ; preds = %sw.bb159.i.loopexit, %while.end157.i
  %a3.2.lcssa540638.i = phi i32 [ %a3.1.i, %while.end157.i ], [ %a3.2418.i, %sw.bb159.i.loopexit ]
  %.lcssa383541637.i = phi <2 x i64> [ %30, %while.end157.i ], [ %.ph668.i, %sw.bb159.i.loopexit ]
  %a4.2.lcssa542636.i = phi <2 x double> [ %a4.1.i, %while.end157.i ], [ %a4.2419.ph667.i, %sw.bb159.i.loopexit ]
  %a5.2.lcssa543635.i = phi <2 x double> [ %a5.1.i, %while.end157.i ], [ %a5.2420.ph661.i, %sw.bb159.i.loopexit ]
  %a6.2.lcssa544634.i = phi <2 x double> [ %a6.1.i, %while.end157.i ], [ %a6.2421.ph654.i, %sw.bb159.i.loopexit ]
  %.lcssa357545633.i = phi <4 x i32> [ %31, %while.end157.i ], [ %.ph651.i, %sw.bb159.i.loopexit ]
  %.lcssa350546632.i = phi <4 x i32> [ %32, %while.end157.i ], [ %.ph.i, %sw.bb159.i.loopexit ]
  %a7.2.lcssa547631.i = phi <2 x i64> [ %a7.1.i, %while.end157.i ], [ %a7.2422.ph.i, %sw.bb159.i.loopexit ]
  %.lcssa336548630.i = phi <16 x i8> [ %33, %while.end157.i ], [ zeroinitializer, %sw.bb159.i.loopexit ]
  %.lcssa549629.i = phi <16 x i8> [ %34, %while.end157.i ], [ zeroinitializer, %sw.bb159.i.loopexit ]
  %a8.2.lcssa550628.i = phi <2 x i64> [ %a8.1.i, %while.end157.i ], [ zeroinitializer, %sw.bb159.i.loopexit ]
  %68 = bitcast <2 x double> %a6.2.lcssa544634.i to <4 x i32>
  %69 = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %68, <4 x i32> %.lcssa357545633.i) #12
  %70 = bitcast <4 x i32> %69 to <2 x double>
  br label %LABEL_2.i.backedge

sw.bb163.i:                                       ; preds = %while.end157.i
  br label %LABEL_2.i.backedge

sw.bb166.i:                                       ; preds = %while.end157.i
  %71 = bitcast <2 x i64> %a8.1.i to <2 x double>
  br label %LABEL_2.i.backedge

sw.bb168.i.loopexit:                              ; preds = %while.body2.i
  br label %sw.bb168.i

sw.bb168.i:                                       ; preds = %sw.bb168.i.loopexit, %while.end157.i
  %a3.2.lcssa540650.i = phi i32 [ %a3.1.i, %while.end157.i ], [ %conv.i302.i, %sw.bb168.i.loopexit ]
  %.lcssa383541649.i = phi <2 x i64> [ %30, %while.end157.i ], [ %.ph668.i, %sw.bb168.i.loopexit ]
  %a4.2.lcssa542648.i = phi <2 x double> [ %a4.1.i, %while.end157.i ], [ %a4.2419.ph667.i, %sw.bb168.i.loopexit ]
  %a5.2.lcssa543647.i = phi <2 x double> [ %a5.1.i, %while.end157.i ], [ %a5.2420.ph661.i, %sw.bb168.i.loopexit ]
  %a6.2.lcssa544646.i = phi <2 x double> [ %a6.1.i, %while.end157.i ], [ %a6.2421.ph654.i, %sw.bb168.i.loopexit ]
  %.lcssa357545645.i = phi <4 x i32> [ %31, %while.end157.i ], [ %.ph651.i, %sw.bb168.i.loopexit ]
  %.lcssa350546644.i = phi <4 x i32> [ %32, %while.end157.i ], [ %.ph.i, %sw.bb168.i.loopexit ]
  %a7.2.lcssa547643.i = phi <2 x i64> [ %a7.1.i, %while.end157.i ], [ %a7.2422.ph.i, %sw.bb168.i.loopexit ]
  %conv169.i = trunc i32 %a3.2.lcssa540650.i to i16
  %tobool170.i = icmp eq i16 %conv169.i, 0
  %. = select i1 %tobool170.i, i32 1805, i32 149
  br label %LABEL_2.i.backedge

sw.bb174.i:                                       ; preds = %while.end157.i
  %72 = bitcast <2 x i64> %a8.1.i to <2 x double>
  br label %LABEL_2.i.backedge

"\01?sub_402490@@YAHIE@Z.exit.loopexit":          ; preds = %if.then56.i
  br label %"\01?sub_402490@@YAHIE@Z.exit"

"\01?sub_402490@@YAHIE@Z.exit.loopexit1065":      ; preds = %if.then8.i
  br label %"\01?sub_402490@@YAHIE@Z.exit"

"\01?sub_402490@@YAHIE@Z.exit.loopexit1066":      ; preds = %if.else26.i
  br label %"\01?sub_402490@@YAHIE@Z.exit"

"\01?sub_402490@@YAHIE@Z.exit.loopexit1067":      ; preds = %while.end157.i, %if.else74.i
  br label %"\01?sub_402490@@YAHIE@Z.exit"

"\01?sub_402490@@YAHIE@Z.exit.loopexit1074":      ; preds = %if.else128.i, %if.then106.i
  br label %"\01?sub_402490@@YAHIE@Z.exit"

"\01?sub_402490@@YAHIE@Z.exit":                   ; preds = %"\01?sub_402490@@YAHIE@Z.exit.loopexit1074", %"\01?sub_402490@@YAHIE@Z.exit.loopexit1067", %"\01?sub_402490@@YAHIE@Z.exit.loopexit1066", %"\01?sub_402490@@YAHIE@Z.exit.loopexit1065", %"\01?sub_402490@@YAHIE@Z.exit.loopexit"
  %retval.0.i = xor i32 %v22.1.i, %v21.1.i
  %add.i7 = add i32 %1, %retval.0.i
  %xor.i8 = xor i32 %add.i7, %1
  %sub.i9 = sub i32 %xor.i8, %1
  store i32 %sub.i9, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 0), align 4, !tbaa !5
  ret void
}

define void @"\01?VM_Opcode3@@YAXE@Z"(i8 zeroext %VMOpcode) #2 {
entry:
  %0 = and i8 %VMOpcode, 1
  %cmp = icmp eq i8 %0, 0
  %1 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %2 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %2, %1
  %xor.i.i = xor i32 %add.i.i, %2
  %sub.i.i = sub i32 %xor.i.i, %2
  %3 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %3, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %8, %for.inc.i ], [ %3, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %4 = bitcast i8** %VMMemoryPtr.i to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %6 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %6, %5
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %7 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %7, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %8 = inttoptr i32 %7 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %8, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 4
  %xor.i20.i = xor i32 %add.i19.i, %2
  %sub.i21.i = sub i32 %xor.i20.i, %2
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %5
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %9 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %9, i32 %sub.i
  %10 = bitcast i8* %add.ptr.i.i to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !5
  br label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"

"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit": ; preds = %for.inc.i
  br label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"

"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit": ; preds = %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit", %entry, %cleanup.i
  %12 = phi i32 [ %sub.i21.i, %cleanup.i ], [ %1, %entry ], [ %1, %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit" ]
  %13 = phi i32 [ %11, %cleanup.i ], [ -1, %entry ], [ -1, %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit" ]
  br i1 %cmp, label %if.then22, label %if.then

if.then:                                          ; preds = %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"
  %shr = lshr i32 %13, 18
  %and1 = and i32 %shr, 7
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and1
  %14 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %shr2 = lshr i32 %13, 29
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %shr2
  %15 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %15, %14
  br i1 %cmp6, label %if.then7, label %if.end55

if.then7:                                         ; preds = %if.then
  %shr8 = lshr i32 %13, 6
  %add = add i32 %12, %2
  %xor = xor i32 %add, %2
  %and10 = and i32 %shr8, 1024
  %tobool = icmp eq i32 %and10, 0
  br i1 %tobool, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then7
  %call12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"\01??_C@_04PLHBLNCM@todo?$AA@", i32 0, i32 0))
  %and13 = and i32 %shr8, 1023
  %sub = sub i32 %xor, %and13
  br label %if.end

if.else:                                          ; preds = %if.then7
  %and9 = and i32 %shr8, 2047
  %add16 = add i32 %xor, %and9
  %xor17 = xor i32 %add16, %2
  %sub18 = sub i32 %xor17, %2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  %.sink = phi i32 [ %sub18, %if.else ], [ %sub, %if.then11 ]
  store i32 %.sink, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  br label %if.end55

if.then22:                                        ; preds = %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"
  %shr27 = lshr i32 %13, 29
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %shr27
  %16 = load i32, i32* %arrayidx29, align 4, !tbaa !5
  %add30 = add i32 %2, %16
  %shr31 = lshr i32 %13, 19
  %xor32 = xor i32 %add30, %2
  %and33 = and i32 %shr31, 255
  %sub34 = sub i32 %xor32, %2
  %cmp35 = icmp eq i32 %sub34, %and33
  br i1 %cmp35, label %if.then36, label %if.end55

if.then36:                                        ; preds = %if.then22
  %shr37 = lshr i32 %13, 6
  %add38 = add i32 %12, %2
  %xor40 = xor i32 %add38, %2
  %and41 = and i32 %shr37, 1024
  %tobool42 = icmp eq i32 %and41, 0
  %and39 = and i32 %shr37, 2047
  %and44 = and i32 %shr37, 1023
  %17 = sub nsw i32 0, %and44
  %add49.pn.p = select i1 %tobool42, i32 %and39, i32 %17
  %add49.pn = add i32 %xor40, %add49.pn.p
  %xor50.pn = xor i32 %add49.pn, %2
  %.sink56 = sub i32 %xor50.pn, %2
  store i32 %.sink56, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  br label %if.end55

if.end55:                                         ; preds = %if.then22, %if.then36, %if.then, %if.end
  ret void
}

define void @"\01?VM_Opcode4@@YAXE@Z"(i8 zeroext %VMOpcode) #2 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"\01??_C@_03DMHKDCO@R?3?5?$AA@", i32 0, i32 0))
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end
  %putchar = tail call i32 @putchar(i32 10)
  %call5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"\01??_C@_03IMKFDEHJ@V?3?5?$AA@", i32 0, i32 0))
  br label %for.body10

for.body:                                         ; preds = %if.end, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %cmp1 = icmp eq i32 %i.035, 8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %putchar33 = tail call i32 @putchar(i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %0 = load i8*, i8** @"\01?InputParams@@3PAEA", align 4, !tbaa !11
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 %i.035
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %1 to i32
  %call3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"\01??_C@_04JFFKLGJF@?$CF02X?$AA@", i32 0, i32 0), i32 %conv)
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond36 = icmp eq i32 %inc, 16
  br i1 %exitcond36, label %for.cond.cleanup, label %for.body

for.cond.cleanup9:                                ; preds = %if.end14
  %putchar31 = tail call i32 @putchar(i32 10)
  ret void

for.body10:                                       ; preds = %if.end14, %for.cond.cleanup
  %i6.034 = phi i32 [ 0, %for.cond.cleanup ], [ %inc19, %if.end14 ]
  %cmp11 = icmp eq i32 %i6.034, 8
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body10
  %putchar32 = tail call i32 @putchar(i32 32)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.body10
  %arrayidx15 = getelementptr inbounds i8, i8* bitcast ([4 x i32]* @"\01?Result@?1??VM_Opcode4@@YAXE@Z@3PAKA" to i8*), i32 %i6.034
  %2 = load i8, i8* %arrayidx15, align 1, !tbaa !18
  %conv16 = zext i8 %2 to i32
  %call17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"\01??_C@_04JFFKLGJF@?$CF02X?$AA@", i32 0, i32 0), i32 %conv16)
  %inc19 = add nuw nsw i32 %i6.034, 1
  %exitcond = icmp eq i32 %inc19, 16
  br i1 %exitcond, label %for.cond.cleanup9, label %for.body10
}

; Function Attrs: norecurse nounwind
define void @"\01?VM_Opcode5@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 1
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %phitmp = and i32 %10, 255
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit":   ; preds = %for.inc.i
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", %entry, %cleanup.i
  %11 = phi i32 [ %phitmp, %cleanup.i ], [ 255, %entry ], [ 255, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %12 = and i8 %VMOpcode, 7
  %and3 = zext i8 %12 to i32
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and3
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end
  ret void

for.body:                                         ; preds = %if.end, %"\01?GetByteFromVMStream@@YAEXZ.exit"
  %ebx.041 = phi i32 [ 0, %"\01?GetByteFromVMStream@@YAEXZ.exit" ], [ %inc, %if.end ]
  %eax.040 = phi i32 [ %11, %"\01?GetByteFromVMStream@@YAEXZ.exit" ], [ %eax.1, %if.end ]
  %and4 = and i32 %eax.040, 255
  %13 = shl i32 1, %ebx.041
  %14 = and i32 %and4, %13
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add.i35 = add i32 %1, %15
  %xor.i36 = xor i32 %add.i35, %1
  %sub.i37 = sub i32 %xor.i36, %1
  %shl.not = xor i32 %13, -1
  %neg10 = and i32 %sub.i37, %shl.not
  %add.i33 = add i32 %neg10, %1
  %xor.i = xor i32 %add.i33, %1
  %sub.i34 = sub i32 %xor.i, %1
  store i32 %sub.i34, i32* %arrayidx, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %eax.1 = phi i32 [ %11, %if.then ], [ %eax.040, %for.body ]
  %inc = add nuw nsw i32 %ebx.041, 1
  %exitcond = icmp eq i32 %inc, 32
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: norecurse nounwind
define void @"\01?StoreVMReg7AtVMStackPtr@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?LoadValueFromVMReg7AndIncrease@@YAIXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?LoadValueFromVMReg7AndIncrease@@YAIXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 4
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  br label %"\01?LoadValueFromVMReg7AndIncrease@@YAIXZ.exit"

"\01?LoadValueFromVMReg7AndIncrease@@YAIXZ.exit.loopexit": ; preds = %for.inc.i
  br label %"\01?LoadValueFromVMReg7AndIncrease@@YAIXZ.exit"

"\01?LoadValueFromVMReg7AndIncrease@@YAIXZ.exit": ; preds = %"\01?LoadValueFromVMReg7AndIncrease@@YAIXZ.exit.loopexit", %entry, %cleanup.i
  %11 = phi i32 [ %10, %cleanup.i ], [ -1, %entry ], [ -1, %"\01?LoadValueFromVMReg7AndIncrease@@YAIXZ.exit.loopexit" ]
  %add.i3 = add i32 %1, %11
  %xor.i = xor i32 %add.i3, %1
  %sub.i4 = sub i32 %xor.i, %1
  store i32 %sub.i4, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?XorRegisterWithRegister@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = and i8 %VMOpcode, 2
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %2 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %2, %1
  %xor.i.i = xor i32 %add.i.i, %2
  %sub.i.i = sub i32 %xor.i.i, %2
  %3 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %3, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %8, %for.inc.i ], [ %3, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %4 = bitcast i8** %VMMemoryPtr.i to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %6 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %6, %5
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %7 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %7, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %8 = inttoptr i32 %7 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %8, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 1
  %xor.i20.i = xor i32 %add.i19.i, %2
  %sub.i21.i = sub i32 %xor.i20.i, %2
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %5
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %9 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %9, i32 %sub.i
  %10 = bitcast i8* %add.ptr.i.i to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %phitmp = and i32 %11, 255
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit":   ; preds = %for.inc.i
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", %if.then, %cleanup.i
  %12 = phi i32 [ %phitmp, %cleanup.i ], [ 255, %if.then ], [ 255, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %shr2 = lshr i32 %12, 1
  %and3 = and i32 %shr2, 7
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and3
  %13 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add.i25 = add i32 %2, %13
  %xor.i26 = xor i32 %add.i25, %2
  %sub.i27 = sub i32 %xor.i26, %2
  %shr5 = lshr i32 %12, 4
  %and6 = and i32 %shr5, 7
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and6
  %14 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  %add.i22 = add i32 %14, %2
  %xor.i23 = xor i32 %add.i22, %2
  %sub.i24 = sub i32 %xor.i23, %2
  %xor = xor i32 %sub.i24, %sub.i27
  %add.i20 = add i32 %xor, %2
  %xor.i = xor i32 %add.i20, %2
  %sub.i21 = sub i32 %xor.i, %2
  store i32 %sub.i21, i32* %arrayidx7, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %entry, %"\01?GetByteFromVMStream@@YAEXZ.exit"
  ret void
}

define void @"\01?VM_Opcode8@@YAXE@Z"(i8 zeroext %VMOpcode) #2 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 0), align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i = add i32 %1, %0
  %xor.i = xor i32 %add.i, %1
  %sub.i = sub i32 %xor.i, %1
  %mul = shl i32 %sub.i, 2
  %call1 = tail call noalias i8* @calloc(i32 %mul, i32 1)
  %2 = bitcast i8* %call1 to i32*
  %cmp = icmp eq i32 %sub.i, 0
  br i1 %cmp, label %if.end22, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %3 = load i32, i32* bitcast (%struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A" to i32*), align 4, !tbaa !11
  %cmp6.old68 = icmp eq i32 %3, -1
  br i1 %cmp6.old68, label %if.end22, label %while.body.preheader

while.body.preheader:                             ; preds = %while.body.lr.ph
  %.pre = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %add.i60 = add i32 %1, %.pre
  %xor.i61 = xor i32 %add.i60, %1
  %sub.i62 = sub i32 %xor.i61, %1
  br label %while.body

while.body:                                       ; preds = %LABEL_9, %while.body.preheader
  %esi.072 = phi i32 [ %add20, %LABEL_9 ], [ 0, %while.body.preheader ]
  %v5.071 = phi i32 [ %v5.4, %LABEL_9 ], [ undef, %while.body.preheader ]
  %mul3 = shl i32 %esi.072, 2
  %add = add i32 %sub.i62, %mul3
  br label %while.body7.preheader

while.cond5.loopexit:                             ; preds = %while.body7
  br i1 %cmp6.old, label %LABEL_9.loopexit, label %while.body7.preheader

while.body7.preheader:                            ; preds = %while.body, %while.cond5.loopexit
  %v0.069 = phi i32 [ %3, %while.body ], [ %6, %while.cond5.loopexit ]
  br label %while.body7

while.body7:                                      ; preds = %while.body7.preheader, %lor.lhs.false
  %v0.1 = phi i32 [ %6, %lor.lhs.false ], [ %v0.069, %while.body7.preheader ]
  %4 = inttoptr i32 %v0.1 to i32*
  %add.ptr = getelementptr inbounds i32, i32* %4, i32 1
  %5 = load i32, i32* %add.ptr, align 4, !tbaa !5
  %cmp8 = icmp ult i32 %add, %5
  %add.ptr10 = getelementptr inbounds i32, i32* %4, i32 4
  %6 = load i32, i32* %add.ptr10, align 4, !tbaa !5
  %cmp6.old = icmp eq i32 %6, -1
  br i1 %cmp8, label %while.cond5.loopexit, label %if.else

if.else:                                          ; preds = %while.body7
  br i1 %cmp6.old, label %cleanup.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %add13 = add i32 %6, 4
  %7 = inttoptr i32 %add13 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %cmp14 = icmp ugt i32 %8, %add
  br i1 %cmp14, label %cleanup.thread, label %while.body7

cleanup.thread:                                   ; preds = %if.else, %lor.lhs.false
  %sub = sub i32 %add, %5
  %9 = inttoptr i32 %v0.1 to %struct.VMStreamHeader*
  %VMOpcodePtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %9, i32 0, i32 3
  %10 = load i8*, i8** %VMOpcodePtr.i, align 4, !tbaa !17
  %add.ptr.i = getelementptr inbounds i8, i8* %10, i32 %sub
  %11 = bitcast i8* %add.ptr.i to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !5
  br label %LABEL_9

LABEL_9.loopexit:                                 ; preds = %while.cond5.loopexit
  br label %LABEL_9

LABEL_9:                                          ; preds = %LABEL_9.loopexit, %cleanup.thread
  %v5.4 = phi i32 [ %12, %cleanup.thread ], [ %v5.071, %LABEL_9.loopexit ]
  %arrayidx = getelementptr inbounds i32, i32* %2, i32 %esi.072
  store i32 %v5.4, i32* %arrayidx, align 4, !tbaa !5
  %add20 = add nuw i32 %esi.072, 1
  %exitcond = icmp eq i32 %add20, %sub.i
  br i1 %exitcond, label %if.end22.loopexit, label %while.body

if.end22.loopexit:                                ; preds = %LABEL_9
  br label %if.end22

if.end22:                                         ; preds = %if.end22.loopexit, %while.body.lr.ph, %entry
  %call24 = tail call i32 @"\01?VMMoveMemory@@YAIPAEK@Z"(i8* %call1, i32 %mul)
  tail call void @free(i8* %call1)
  %13 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i57 = add i32 %13, %call24
  %xor.i58 = xor i32 %add.i57, %13
  %sub.i59 = sub i32 %xor.i58, %13
  store i32 %sub.i59, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 0), align 4, !tbaa !5
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?SubtractConstantFromRegister@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %cmp = icmp ugt i8 %VMOpcode, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 4
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  br label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"

"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit": ; preds = %for.inc.i
  br label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"

"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit": ; preds = %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit", %if.then, %cleanup.i
  %11 = phi i32 [ %10, %cleanup.i ], [ -1, %if.then ], [ -1, %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit" ]
  %and3 = and i32 %11, 536870911
  %shr = lshr i32 %11, 29
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %shr
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add.i20 = add i32 %1, %12
  %xor.i21 = xor i32 %add.i20, %1
  %add.i18 = sub i32 %xor.i21, %and3
  %xor.i = xor i32 %add.i18, %1
  %sub.i19 = sub i32 %xor.i, %1
  store i32 %sub.i19, i32* %arrayidx, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit", %entry
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?LoadBMPConstants@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 0), align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i = add i32 %1, %0
  %xor.i = xor i32 %add.i, %1
  %sub.i = sub i32 %xor.i, %1
  %cmp14 = icmp sgt i32 %sub.i, 0
  br i1 %cmp14, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %"\01?VM_Counter@@3KA.promoted" = load i32, i32* @"\01?VM_Counter@@3KA", align 4, !tbaa !5
  %2 = add i32 %"\01?VM_Counter@@3KA.promoted", %xor.i
  %min.iters.check = icmp ult i32 %sub.i, 8
  br i1 %min.iters.check, label %for.body.preheader, label %min.iters.checked

for.body.preheader:                               ; preds = %middle.block, %min.iters.checked, %for.body.lr.ph
  %inc16.ph = phi i32 [ %"\01?VM_Counter@@3KA.promoted", %min.iters.checked ], [ %"\01?VM_Counter@@3KA.promoted", %for.body.lr.ph ], [ %ind.end, %middle.block ]
  %i.015.ph = phi i32 [ 0, %min.iters.checked ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body

min.iters.checked:                                ; preds = %for.body.lr.ph
  %n.vec = and i32 %sub.i, -8
  %cmp.zero = icmp eq i32 %n.vec, 0
  %ind.end = add i32 %"\01?VM_Counter@@3KA.promoted", %n.vec
  br i1 %cmp.zero, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %min.iters.checked
  %broadcast.splatinsert24 = insertelement <4 x i32> undef, i32 %1, i32 0
  %broadcast.splat25 = shufflevector <4 x i32> %broadcast.splatinsert24, <4 x i32> undef, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = add i32 %"\01?VM_Counter@@3KA.promoted", %index
  %4 = getelementptr inbounds [168 x i8], [168 x i8]* @BMPTable, i32 0, i32 %3
  %5 = bitcast i8* %4 to <4 x i8>*
  %wide.load = load <4 x i8>, <4 x i8>* %5, align 1, !tbaa !18
  %6 = getelementptr i8, i8* %4, i32 4
  %7 = bitcast i8* %6 to <4 x i8>*
  %wide.load23 = load <4 x i8>, <4 x i8>* %7, align 1, !tbaa !18
  %8 = zext <4 x i8> %wide.load to <4 x i32>
  %9 = zext <4 x i8> %wide.load23 to <4 x i32>
  %10 = add <4 x i32> %broadcast.splat25, %8
  %11 = add <4 x i32> %broadcast.splat25, %9
  %12 = xor <4 x i32> %10, %broadcast.splat25
  %13 = xor <4 x i32> %11, %broadcast.splat25
  %14 = sub <4 x i32> %12, %broadcast.splat25
  %15 = sub <4 x i32> %13, %broadcast.splat25
  %16 = or i32 %index, 1
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %16
  %18 = bitcast i32* %17 to <4 x i32>*
  store <4 x i32> %14, <4 x i32>* %18, align 4, !tbaa !5
  %19 = getelementptr i32, i32* %17, i32 4
  %20 = bitcast i32* %19 to <4 x i32>*
  store <4 x i32> %15, <4 x i32>* %20, align 4, !tbaa !5
  %index.next = add i32 %index, 8
  %21 = icmp eq i32 %index.next, %n.vec
  br i1 %21, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %sub.i, %n.vec
  br i1 %cmp.n, label %for.cond.for.cond.cleanup_crit_edge, label %for.body.preheader

for.cond.for.cond.cleanup_crit_edge.loopexit:     ; preds = %for.body
  br label %for.cond.for.cond.cleanup_crit_edge

for.cond.for.cond.cleanup_crit_edge:              ; preds = %for.cond.for.cond.cleanup_crit_edge.loopexit, %middle.block
  %22 = sub i32 %2, %1
  store i32 %22, i32* @"\01?VM_Counter@@3KA", align 4, !tbaa !5
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.for.cond.cleanup_crit_edge, %entry
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %inc16 = phi i32 [ %inc, %for.body ], [ %inc16.ph, %for.body.preheader ]
  %i.015 = phi i32 [ %add, %for.body ], [ %i.015.ph, %for.body.preheader ]
  %inc = add i32 %inc16, 1
  %arrayidx = getelementptr inbounds [168 x i8], [168 x i8]* @BMPTable, i32 0, i32 %inc16
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %23 to i32
  %add.i11 = add i32 %1, %conv
  %xor.i12 = xor i32 %add.i11, %1
  %sub.i13 = sub i32 %xor.i12, %1
  %add = add nuw nsw i32 %i.015, 1
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %add
  store i32 %sub.i13, i32* %arrayidx2, align 4, !tbaa !5
  %exitcond = icmp eq i32 %add, %sub.i
  br i1 %exitcond, label %for.cond.for.cond.cleanup_crit_edge.loopexit, label %for.body, !llvm.loop !22
}

; Function Attrs: norecurse nounwind
define void @"\01?JumpRelative@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 1
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %phitmp = and i32 %10, 255
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit":   ; preds = %for.inc.i
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", %entry, %cleanup.i
  %11 = phi i32 [ %sub.i21.i, %cleanup.i ], [ %0, %entry ], [ %0, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %12 = phi i32 [ %phitmp, %cleanup.i ], [ 255, %entry ], [ 255, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %13 = and i8 %VMOpcode, 7
  %and = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %and, 8
  %add.i21 = add i32 %1, %11
  %xor.i22 = xor i32 %add.i21, %1
  %add = or i32 %12, %shl
  %and3 = and i32 %shl, 1024
  %tobool = icmp eq i32 %and3, 0
  %and4 = and i32 %add, 1023
  %14 = sub nsw i32 0, %and4
  %eax.0.p = select i1 %tobool, i32 %add, i32 %14
  %add.i19 = add i32 %xor.i22, %eax.0.p
  %xor.i = xor i32 %add.i19, %1
  %sub.i20 = sub i32 %xor.i, %1
  store i32 %sub.i20, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?ShiftRegisterRight@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 1
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %phitmp = lshr i32 %10, 3
  %phitmp29 = and i32 %phitmp, 7
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit":   ; preds = %for.inc.i
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", %entry, %cleanup.i
  %11 = phi i32 [ %phitmp29, %cleanup.i ], [ 7, %entry ], [ 7, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %11
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add.i25 = add i32 %1, %12
  %xor.i26 = xor i32 %add.i25, %1
  %sub.i27 = sub i32 %xor.i26, %1
  %and3 = and i32 %sub.i27, 255
  %13 = and i8 %VMOpcode, 7
  %and5 = zext i8 %13 to i32
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and5
  %14 = load i32, i32* %arrayidx6, align 4, !tbaa !5
  %add.i22 = add i32 %14, %1
  %xor.i23 = xor i32 %add.i22, %1
  %sub.i24 = sub i32 %xor.i23, %1
  %shr8 = lshr i32 %sub.i24, %and3
  %add.i20 = add i32 %shr8, %1
  %xor.i = xor i32 %add.i20, %1
  %sub.i21 = sub i32 %xor.i, %1
  store i32 %sub.i21, i32* %arrayidx6, align 4, !tbaa !5
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?AddRegisterPlusConstOrRegister@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = and i8 %VMOpcode, 2
  %cmp = icmp eq i8 %0, 0
  %1 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %2 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %2, %1
  %xor.i.i = xor i32 %add.i.i, %2
  %sub.i.i = sub i32 %xor.i.i, %2
  %3 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %3, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp, label %if.then, label %if.then8

if.then:                                          ; preds = %entry
  br i1 %cmp23.i, label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %8, %for.inc.i ], [ %3, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %4 = bitcast i8** %VMMemoryPtr.i to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %6 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %6, %5
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %7 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %7, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %8 = inttoptr i32 %7 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %8, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 4
  %xor.i20.i = xor i32 %add.i19.i, %2
  %sub.i21.i = sub i32 %xor.i20.i, %2
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %5
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %9 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %9, i32 %sub.i
  %10 = bitcast i8* %add.ptr.i.i to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !5
  br label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"

"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit": ; preds = %for.inc.i
  br label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"

"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit": ; preds = %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit", %if.then, %cleanup.i
  %12 = phi i32 [ %11, %cleanup.i ], [ -1, %if.then ], [ -1, %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit" ]
  %shr.i = lshr i32 %12, 29
  %and.i = and i32 %12, 536870911
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %shr.i
  br label %if.end24

if.then8:                                         ; preds = %entry
  br i1 %cmp23.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.body.i58.preheader

for.body.i58.preheader:                           ; preds = %if.then8
  br label %for.body.i58

for.body.i58:                                     ; preds = %for.body.i58.preheader, %for.inc.i63
  %Ptr.024.i53 = phi %struct.VMStreamHeader* [ %17, %for.inc.i63 ], [ %3, %for.body.i58.preheader ]
  %VMMemoryPtr.i54 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i53, i32 0, i32 1
  %13 = bitcast i8** %VMMemoryPtr.i54 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !13
  %VMMemorySize.i55 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i53, i32 0, i32 2
  %15 = load i32, i32* %VMMemorySize.i55, align 4, !tbaa !15
  %add.i56 = add i32 %15, %14
  %cmp1.i57 = icmp ult i32 %sub.i.i, %add.i56
  br i1 %cmp1.i57, label %cleanup.i70, label %lor.lhs.false.i61

lor.lhs.false.i61:                                ; preds = %for.body.i58
  %NextVMStreamPtr.i59 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i53, i32 0, i32 4
  %16 = load i32, i32* %NextVMStreamPtr.i59, align 4, !tbaa !16
  %cmp2.i60 = icmp eq i32 %16, -1
  br i1 %cmp2.i60, label %cleanup.i70, label %for.inc.i63

for.inc.i63:                                      ; preds = %lor.lhs.false.i61
  %17 = inttoptr i32 %16 to %struct.VMStreamHeader*
  %cmp.i62 = icmp eq %struct.VMStreamHeader* %17, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i62, label %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", label %for.body.i58

cleanup.i70:                                      ; preds = %lor.lhs.false.i61, %for.body.i58
  %add.i19.i64 = add i32 %xor.i.i, 1
  %xor.i20.i65 = xor i32 %add.i19.i64, %2
  %sub.i21.i66 = sub i32 %xor.i20.i65, %2
  store i32 %sub.i21.i66, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i67 = sub i32 %sub.i.i, %14
  %VMOpcodePtr.i.i68 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i53, i32 0, i32 3
  %18 = load i8*, i8** %VMOpcodePtr.i.i68, align 4, !tbaa !17
  %add.ptr.i.i69 = getelementptr inbounds i8, i8* %18, i32 %sub.i67
  %19 = bitcast i8* %add.ptr.i.i69 to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %phitmp = and i32 %20, 255
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit":   ; preds = %for.inc.i63
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", %if.then8, %cleanup.i70
  %21 = phi i32 [ %phitmp, %cleanup.i70 ], [ 255, %if.then8 ], [ 255, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %shr11 = lshr i32 %21, 1
  %and12 = and i32 %shr11, 7
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and12
  %shr15 = lshr i32 %21, 4
  %and16 = and i32 %shr15, 7
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and16
  %22 = load i32, i32* %arrayidx17, align 4, !tbaa !5
  %add.i43 = add i32 %22, %2
  %xor.i44 = xor i32 %add.i43, %2
  %sub.i45 = sub i32 %xor.i44, %2
  br label %if.end24

if.end24:                                         ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit", %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"
  %.pn.in = phi i32* [ %arrayidx13, %"\01?GetByteFromVMStream@@YAEXZ.exit" ], [ %arrayidx, %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit" ]
  %call18.sink = phi i32 [ %sub.i45, %"\01?GetByteFromVMStream@@YAEXZ.exit" ], [ %and.i, %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit" ]
  %arrayidx17.sink = phi i32* [ %arrayidx17, %"\01?GetByteFromVMStream@@YAEXZ.exit" ], [ %arrayidx, %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit" ]
  %.pn = load i32, i32* %.pn.in, align 4, !tbaa !5
  %add.i46.pn = add i32 %2, %.pn
  %xor.i47.pn = xor i32 %add.i46.pn, %2
  %add.i41 = add i32 %call18.sink, %xor.i47.pn
  %xor.i = xor i32 %add.i41, %2
  %sub.i42 = sub i32 %xor.i, %2
  store i32 %sub.i42, i32* %arrayidx17.sink, align 4, !tbaa !5
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?JMPToRegister@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %and = and i8 %VMOpcode, 4
  %cmp = icmp eq i8 %and, 0
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp, label %if.then, label %if.then6

if.then:                                          ; preds = %entry
  br i1 %cmp23.i, label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 4
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  br label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"

"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit": ; preds = %for.inc.i
  br label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"

"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit": ; preds = %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit", %if.then, %cleanup.i
  %11 = phi i32 [ %10, %cleanup.i ], [ -1, %if.then ], [ -1, %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit" ]
  %12 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %add.i.i66 = add i32 %1, %12
  %xor.i.i67 = xor i32 %add.i.i66, %1
  %sub.i.i68 = sub i32 %xor.i.i67, %1
  %sub.i69 = add i32 %sub.i.i68, -4
  %add.i19.i70 = add i32 %xor.i.i67, -4
  %xor.i20.i71 = xor i32 %add.i19.i70, %1
  %sub.i21.i72 = sub i32 %xor.i20.i71, %1
  store i32 %sub.i21.i72, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  br i1 %cmp23.i, label %if.end14, label %for.body.i79.preheader

for.body.i79.preheader:                           ; preds = %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.body.i79.preheader, %for.inc.i84
  %Ptr.024.i74 = phi %struct.VMStreamHeader* [ %17, %for.inc.i84 ], [ %2, %for.body.i79.preheader ]
  %VMMemoryPtr.i75 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i74, i32 0, i32 1
  %13 = bitcast i8** %VMMemoryPtr.i75 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !13
  %VMMemorySize.i76 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i74, i32 0, i32 2
  %15 = load i32, i32* %VMMemorySize.i76, align 4, !tbaa !15
  %add.i77 = add i32 %15, %14
  %cmp2.i78 = icmp ult i32 %sub.i69, %add.i77
  br i1 %cmp2.i78, label %cleanup.i88, label %lor.lhs.false.i82

lor.lhs.false.i82:                                ; preds = %for.body.i79
  %NextVMStreamPtr.i80 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i74, i32 0, i32 4
  %16 = load i32, i32* %NextVMStreamPtr.i80, align 4, !tbaa !16
  %cmp3.i81 = icmp eq i32 %16, -1
  br i1 %cmp3.i81, label %cleanup.i88, label %for.inc.i84

for.inc.i84:                                      ; preds = %lor.lhs.false.i82
  %17 = inttoptr i32 %16 to %struct.VMStreamHeader*
  %cmp.i83 = icmp eq %struct.VMStreamHeader* %17, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i83, label %if.end14.loopexit, label %for.body.i79

cleanup.i88:                                      ; preds = %lor.lhs.false.i82, %for.body.i79
  %sub5.i85 = sub i32 %sub.i69, %14
  %VMOpcodePtr.i.i86 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i74, i32 0, i32 3
  %18 = load i8*, i8** %VMOpcodePtr.i.i86, align 4, !tbaa !17
  %add.ptr.i.i87 = getelementptr inbounds i8, i8* %18, i32 %sub5.i85
  %19 = bitcast i8* %add.ptr.i.i87 to i32*
  store i32 %11, i32* %19, align 4, !tbaa !5
  br label %if.end14

if.then6:                                         ; preds = %entry
  br i1 %cmp23.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.body.i53.preheader

for.body.i53.preheader:                           ; preds = %if.then6
  br label %for.body.i53

for.body.i53:                                     ; preds = %for.body.i53.preheader, %for.inc.i58
  %Ptr.024.i48 = phi %struct.VMStreamHeader* [ %24, %for.inc.i58 ], [ %2, %for.body.i53.preheader ]
  %VMMemoryPtr.i49 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i48, i32 0, i32 1
  %20 = bitcast i8** %VMMemoryPtr.i49 to i32*
  %21 = load i32, i32* %20, align 4, !tbaa !13
  %VMMemorySize.i50 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i48, i32 0, i32 2
  %22 = load i32, i32* %VMMemorySize.i50, align 4, !tbaa !15
  %add.i51 = add i32 %22, %21
  %cmp1.i52 = icmp ult i32 %sub.i.i, %add.i51
  br i1 %cmp1.i52, label %cleanup.i65, label %lor.lhs.false.i56

lor.lhs.false.i56:                                ; preds = %for.body.i53
  %NextVMStreamPtr.i54 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i48, i32 0, i32 4
  %23 = load i32, i32* %NextVMStreamPtr.i54, align 4, !tbaa !16
  %cmp2.i55 = icmp eq i32 %23, -1
  br i1 %cmp2.i55, label %cleanup.i65, label %for.inc.i58

for.inc.i58:                                      ; preds = %lor.lhs.false.i56
  %24 = inttoptr i32 %23 to %struct.VMStreamHeader*
  %cmp.i57 = icmp eq %struct.VMStreamHeader* %24, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i57, label %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", label %for.body.i53

cleanup.i65:                                      ; preds = %lor.lhs.false.i56, %for.body.i53
  %add.i19.i59 = add i32 %xor.i.i, 1
  %xor.i20.i60 = xor i32 %add.i19.i59, %1
  %sub.i21.i61 = sub i32 %xor.i20.i60, %1
  store i32 %sub.i21.i61, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i62 = sub i32 %sub.i.i, %21
  %VMOpcodePtr.i.i63 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i48, i32 0, i32 3
  %25 = load i8*, i8** %VMOpcodePtr.i.i63, align 4, !tbaa !17
  %add.ptr.i.i64 = getelementptr inbounds i8, i8* %25, i32 %sub.i62
  %26 = bitcast i8* %add.ptr.i.i64 to i32*
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %phitmp = lshr i32 %27, 3
  %phitmp91 = and i32 %phitmp, 7
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit":   ; preds = %for.inc.i58
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", %if.then6, %cleanup.i65
  %28 = phi i32 [ %phitmp91, %cleanup.i65 ], [ 7, %if.then6 ], [ 7, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %28
  %29 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add.i42 = add i32 %1, %29
  %xor.i = xor i32 %add.i42, %1
  %sub.i43 = sub i32 %xor.i, %1
  %30 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %add.i.i21 = add i32 %30, %1
  %xor.i.i22 = xor i32 %add.i.i21, %1
  %sub.i.i23 = sub i32 %xor.i.i22, %1
  %sub.i24 = add i32 %sub.i.i23, -4
  %add.i19.i25 = add i32 %xor.i.i22, -4
  %xor.i20.i26 = xor i32 %add.i19.i25, %1
  %sub.i21.i27 = sub i32 %xor.i20.i26, %1
  store i32 %sub.i21.i27, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  br i1 %cmp23.i, label %if.end14, label %for.body.i34.preheader

for.body.i34.preheader:                           ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit"
  br label %for.body.i34

for.body.i34:                                     ; preds = %for.body.i34.preheader, %for.inc.i38
  %Ptr.024.i29 = phi %struct.VMStreamHeader* [ %35, %for.inc.i38 ], [ %2, %for.body.i34.preheader ]
  %VMMemoryPtr.i30 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i29, i32 0, i32 1
  %31 = bitcast i8** %VMMemoryPtr.i30 to i32*
  %32 = load i32, i32* %31, align 4, !tbaa !13
  %VMMemorySize.i31 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i29, i32 0, i32 2
  %33 = load i32, i32* %VMMemorySize.i31, align 4, !tbaa !15
  %add.i32 = add i32 %33, %32
  %cmp2.i33 = icmp ult i32 %sub.i24, %add.i32
  br i1 %cmp2.i33, label %cleanup.i41, label %lor.lhs.false.i36

lor.lhs.false.i36:                                ; preds = %for.body.i34
  %NextVMStreamPtr.i35 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i29, i32 0, i32 4
  %34 = load i32, i32* %NextVMStreamPtr.i35, align 4, !tbaa !16
  %cmp3.i = icmp eq i32 %34, -1
  br i1 %cmp3.i, label %cleanup.i41, label %for.inc.i38

for.inc.i38:                                      ; preds = %lor.lhs.false.i36
  %35 = inttoptr i32 %34 to %struct.VMStreamHeader*
  %cmp.i37 = icmp eq %struct.VMStreamHeader* %35, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i37, label %if.end14.loopexit140, label %for.body.i34

cleanup.i41:                                      ; preds = %lor.lhs.false.i36, %for.body.i34
  %sub5.i = sub i32 %sub.i24, %32
  %VMOpcodePtr.i.i39 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i29, i32 0, i32 3
  %36 = load i8*, i8** %VMOpcodePtr.i.i39, align 4, !tbaa !17
  %add.ptr.i.i40 = getelementptr inbounds i8, i8* %36, i32 %sub5.i
  %37 = bitcast i8* %add.ptr.i.i40 to i32*
  store i32 %sub.i43, i32* %37, align 4, !tbaa !5
  br label %if.end14

if.end14.loopexit:                                ; preds = %for.inc.i84
  br label %if.end14

if.end14.loopexit140:                             ; preds = %for.inc.i38
  br label %if.end14

if.end14:                                         ; preds = %if.end14.loopexit140, %if.end14.loopexit, %cleanup.i41, %"\01?GetByteFromVMStream@@YAEXZ.exit", %cleanup.i88, %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?ShiftLeftRegister@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 1
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %phitmp = and i32 %10, 255
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit":   ; preds = %for.inc.i
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", %entry, %cleanup.i
  %11 = phi i32 [ %phitmp, %cleanup.i ], [ 255, %entry ], [ 255, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %12 = and i8 %VMOpcode, 7
  %and = zext i8 %12 to i32
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and
  %13 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add.i15 = add i32 %1, %13
  %xor.i16 = xor i32 %add.i15, %1
  %sub.i17 = sub i32 %xor.i16, %1
  %shl = shl i32 %sub.i17, %11
  %add.i13 = add i32 %shl, %1
  %xor.i = xor i32 %add.i13, %1
  %sub.i14 = sub i32 %xor.i, %1
  store i32 %sub.i14, i32* %arrayidx, align 4, !tbaa !5
  ret void
}

define void @"\01?RegisterOperationDispatcher@@YAXE@Z"(i8 zeroext %VMOpcode) #2 {
entry:
  %0 = and i8 %VMOpcode, 3
  %conv2 = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [4 x void (i8)*], [4 x void (i8)*]* @"\01?VMOpcode_Operations@@3PAP6AXE@ZA", i32 0, i32 %conv2
  %1 = load void (i8)*, void (i8)** %arrayidx, align 4, !tbaa !11
  tail call void %1(i8 zeroext %VMOpcode)
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?MoveConstToRegister@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 4
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  br label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"

"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit": ; preds = %for.inc.i
  br label %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit"

"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit": ; preds = %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit", %entry, %cleanup.i
  %11 = phi i32 [ %10, %cleanup.i ], [ -1, %entry ], [ -1, %"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ.exit.loopexit" ]
  %and.i = and i32 %11, 536870911
  %add.i6 = add i32 %1, %and.i
  %xor.i = xor i32 %add.i6, %1
  %sub.i7 = sub i32 %xor.i, %1
  %shr.i = lshr i32 %11, 29
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %shr.i
  store i32 %sub.i7, i32* %arrayidx, align 4, !tbaa !5
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?Move_Register_To_Register@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 1
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %phitmp = and i32 %10, 255
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit":   ; preds = %for.inc.i
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", %entry, %cleanup.i
  %11 = phi i32 [ %phitmp, %cleanup.i ], [ 255, %entry ], [ 255, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %shr = lshr i32 %11, 1
  %and = and i32 %shr, 7
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %shr1 = lshr i32 %11, 4
  %and2 = and i32 %shr1, 7
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and2
  store i32 %12, i32* %arrayidx3, align 4, !tbaa !5
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?StoreRegisterInMemory@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 1
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %phitmp = and i32 %10, 255
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit":   ; preds = %for.inc.i
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", %entry, %cleanup.i
  %11 = phi i32 [ %phitmp, %cleanup.i ], [ 255, %entry ], [ 255, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %shr = lshr i32 %11, 1
  %and = and i32 %shr, 7
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add.i26 = add i32 %1, %12
  %xor.i27 = xor i32 %add.i26, %1
  %sub.i28 = sub i32 %xor.i27, %1
  %shr2 = lshr i32 %11, 4
  %and3 = and i32 %shr2, 7
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and3
  %13 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %add.i24 = add i32 %13, %1
  %xor.i = xor i32 %add.i24, %1
  %sub.i25 = sub i32 %xor.i, %1
  br i1 %cmp23.i, label %"\01?UpdateStoreSlot@@YAEKK@Z.exit", label %for.body.i13.preheader

for.body.i13.preheader:                           ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit"
  br label %for.body.i13

for.body.i13:                                     ; preds = %for.body.i13.preheader, %for.inc.i18
  %Ptr.014.i = phi %struct.VMStreamHeader* [ %17, %for.inc.i18 ], [ %2, %for.body.i13.preheader ]
  %VMMemoryPtr.i11 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.014.i, i32 0, i32 1
  %14 = bitcast i8** %VMMemoryPtr.i11 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !13
  %cmp1.i12 = icmp ult i32 %sub.i25, %15
  br i1 %cmp1.i12, label %cleanup.i23, label %lor.lhs.false.i16

lor.lhs.false.i16:                                ; preds = %for.body.i13
  %NextVMStreamPtr.i14 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.014.i, i32 0, i32 4
  %16 = load i32, i32* %NextVMStreamPtr.i14, align 4, !tbaa !16
  %cmp2.i15 = icmp eq i32 %16, -1
  br i1 %cmp2.i15, label %cleanup.i23, label %for.inc.i18

for.inc.i18:                                      ; preds = %lor.lhs.false.i16
  %17 = inttoptr i32 %16 to %struct.VMStreamHeader*
  %cmp.i17 = icmp eq %struct.VMStreamHeader* %17, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i17, label %"\01?UpdateStoreSlot@@YAEKK@Z.exit.loopexit", label %for.body.i13

cleanup.i23:                                      ; preds = %lor.lhs.false.i16, %for.body.i13
  %sub.i19 = sub i32 %sub.i25, %15
  %VMOpcodePtr.i.i20 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.014.i, i32 0, i32 3
  %18 = load i8*, i8** %VMOpcodePtr.i.i20, align 4, !tbaa !17
  %add.ptr.i.i21 = getelementptr inbounds i8, i8* %18, i32 %sub.i19
  %19 = bitcast i8* %add.ptr.i.i21 to i32*
  store i32 %sub.i28, i32* %19, align 4, !tbaa !5
  br label %"\01?UpdateStoreSlot@@YAEKK@Z.exit"

"\01?UpdateStoreSlot@@YAEKK@Z.exit.loopexit":     ; preds = %for.inc.i18
  br label %"\01?UpdateStoreSlot@@YAEKK@Z.exit"

"\01?UpdateStoreSlot@@YAEKK@Z.exit":              ; preds = %"\01?UpdateStoreSlot@@YAEKK@Z.exit.loopexit", %"\01?GetByteFromVMStream@@YAEXZ.exit", %cleanup.i23
  ret void
}

; Function Attrs: norecurse nounwind
define void @"\01?LoadDWORDFromMemoryByRegValue@@YAXE@Z"(i8 zeroext %VMOpcode) #0 {
entry:
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %1, %0
  %xor.i.i = xor i32 %add.i.i, %1
  %sub.i.i = sub i32 %xor.i.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23.i = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %7, %for.inc.i ], [ %2, %for.body.i.preheader ]
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr.i to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %5, %4
  %cmp1.i = icmp ult i32 %sub.i.i, %add.i
  br i1 %cmp1.i, label %cleanup.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr.i, align 4, !tbaa !16
  %cmp2.i = icmp eq i32 %6, -1
  br i1 %cmp2.i, label %cleanup.i, label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", label %for.body.i

cleanup.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %add.i19.i = add i32 %xor.i.i, 1
  %xor.i20.i = xor i32 %add.i19.i, %1
  %sub.i21.i = sub i32 %xor.i20.i, %1
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i, %4
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i32 %sub.i
  %9 = bitcast i8* %add.ptr.i.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %phitmp = and i32 %10, 255
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit":   ; preds = %for.inc.i
  br label %"\01?GetByteFromVMStream@@YAEXZ.exit"

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit", %entry, %cleanup.i
  %11 = phi i32 [ %phitmp, %cleanup.i ], [ 255, %entry ], [ 255, %"\01?GetByteFromVMStream@@YAEXZ.exit.loopexit" ]
  %shr = lshr i32 %11, 1
  %and = and i32 %shr, 7
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add.i26 = add i32 %1, %12
  %xor.i27 = xor i32 %add.i26, %1
  %sub.i28 = sub i32 %xor.i27, %1
  br i1 %cmp23.i, label %"\01?LoadValueFromLocation@@YAKI@Z.exit", label %for.body.i16.preheader

for.body.i16.preheader:                           ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit"
  br label %for.body.i16

for.body.i16:                                     ; preds = %for.body.i16.preheader, %for.inc.i21
  %Ptr.015.i = phi %struct.VMStreamHeader* [ %17, %for.inc.i21 ], [ %2, %for.body.i16.preheader ]
  %VMMemoryPtr.i12 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i, i32 0, i32 1
  %13 = bitcast i8** %VMMemoryPtr.i12 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !13
  %VMMemorySize.i13 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i, i32 0, i32 2
  %15 = load i32, i32* %VMMemorySize.i13, align 4, !tbaa !15
  %add.i14 = add i32 %15, %14
  %cmp1.i15 = icmp ugt i32 %add.i14, %sub.i28
  br i1 %cmp1.i15, label %cleanup.i25, label %lor.lhs.false.i19

lor.lhs.false.i19:                                ; preds = %for.body.i16
  %NextVMStreamPtr.i17 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i, i32 0, i32 4
  %16 = load i32, i32* %NextVMStreamPtr.i17, align 4, !tbaa !16
  %cmp2.i18 = icmp eq i32 %16, -1
  br i1 %cmp2.i18, label %cleanup.i25, label %for.inc.i21

for.inc.i21:                                      ; preds = %lor.lhs.false.i19
  %17 = inttoptr i32 %16 to %struct.VMStreamHeader*
  %cmp.i20 = icmp eq %struct.VMStreamHeader* %17, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i20, label %"\01?LoadValueFromLocation@@YAKI@Z.exit.loopexit", label %for.body.i16

cleanup.i25:                                      ; preds = %lor.lhs.false.i19, %for.body.i16
  %sub.i22 = sub i32 %sub.i28, %14
  %VMOpcodePtr.i.i23 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015.i, i32 0, i32 3
  %18 = load i8*, i8** %VMOpcodePtr.i.i23, align 4, !tbaa !17
  %add.ptr.i.i24 = getelementptr inbounds i8, i8* %18, i32 %sub.i22
  %19 = bitcast i8* %add.ptr.i.i24 to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !5
  br label %"\01?LoadValueFromLocation@@YAKI@Z.exit"

"\01?LoadValueFromLocation@@YAKI@Z.exit.loopexit": ; preds = %for.inc.i21
  br label %"\01?LoadValueFromLocation@@YAKI@Z.exit"

"\01?LoadValueFromLocation@@YAKI@Z.exit":         ; preds = %"\01?LoadValueFromLocation@@YAKI@Z.exit.loopexit", %"\01?GetByteFromVMStream@@YAEXZ.exit", %cleanup.i25
  %21 = phi i32 [ %20, %cleanup.i25 ], [ -1, %"\01?GetByteFromVMStream@@YAEXZ.exit" ], [ -1, %"\01?LoadValueFromLocation@@YAKI@Z.exit.loopexit" ]
  %add.i10 = add i32 %1, %21
  %xor.i = xor i32 %add.i10, %1
  %sub.i11 = sub i32 %xor.i, %1
  %shr4 = lshr i32 %11, 4
  %and5 = and i32 %shr4, 7
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 %and5
  store i32 %sub.i11, i32* %arrayidx6, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind
define i32 @"\01?getFileSize@@YAIPAU_iobuf@@@Z"(%struct._iobuf* nocapture %fp) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @fseek(%struct._iobuf* %fp, i32 0, i32 2)
  %call1 = tail call i32 @ftell(%struct._iobuf* %fp)
  %call2 = tail call i32 @fseek(%struct._iobuf* %fp, i32 0, i32 0)
  ret i32 %call1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @fseek(%struct._iobuf* nocapture, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @ftell(%struct._iobuf* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: norecurse nounwind readnone
define i32 @"\01?getValue@@YAKK@Z"(i32 %Opcode) local_unnamed_addr #5 {
entry:
  %and = and i32 %Opcode, 536870911
  ret i32 %and
}

; Function Attrs: norecurse nounwind readonly
define i32 @"\01?ObfuscateValue@@YAKK@Z"(i32 %Value) local_unnamed_addr #6 {
entry:
  %0 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add = add i32 %0, %Value
  %xor = xor i32 %add, %0
  %sub = sub i32 %xor, %0
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readonly
define i32 @"\01?DeobfuscateValue@@YAKK@Z"(i32 %ObValue) local_unnamed_addr #6 {
entry:
  %0 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add = add i32 %0, %ObValue
  %xor = xor i32 %add, %0
  %sub = sub i32 %xor, %0
  ret i32 %sub
}

; Function Attrs: nounwind
define void @"\01?LoadVM@@YAXXZ"() local_unnamed_addr #1 {
entry:
  %call = tail call %struct._iobuf* @fopen(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"\01??_C@_0CC@ONKFJPBD@c?3?2temp?2unstablemachines?2VMH1?4bi@", i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"\01??_C@_02JDPG@rb?$AA@", i32 0, i32 0))
  %call.i = tail call i32 @fseek(%struct._iobuf* %call, i32 0, i32 2) #12
  %call1.i = tail call i32 @ftell(%struct._iobuf* %call) #12
  %call2.i = tail call i32 @fseek(%struct._iobuf* %call, i32 0, i32 0) #12
  %call2 = tail call noalias i8* @calloc(i32 1, i32 %call1.i)
  store i8* %call2, i8** bitcast (%struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A" to i8**), align 4, !tbaa !11
  %call3 = tail call i32 @fread(i8* %call2, i32 %call1.i, i32 1, %struct._iobuf* %call)
  %call4 = tail call i32 @fclose(%struct._iobuf* %call)
  %call5 = tail call %struct._iobuf* @fopen(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"\01??_C@_0CC@GLDBONLN@c?3?2temp?2unstablemachines?2VMH2?4bi@", i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"\01??_C@_02JDPG@rb?$AA@", i32 0, i32 0))
  %call.i76 = tail call i32 @fseek(%struct._iobuf* %call5, i32 0, i32 2) #12
  %call1.i77 = tail call i32 @ftell(%struct._iobuf* %call5) #12
  %call2.i78 = tail call i32 @fseek(%struct._iobuf* %call5, i32 0, i32 0) #12
  %call7 = tail call noalias i8* @calloc(i32 1, i32 %call1.i77)
  %0 = ptrtoint i8* %call7 to i32
  %1 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %NextVMStreamPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %1, i32 0, i32 4
  store i32 %0, i32* %NextVMStreamPtr, align 4, !tbaa !16
  %call9 = tail call i32 @fread(i8* %call7, i32 %call1.i77, i32 1, %struct._iobuf* %call5)
  %call10 = tail call i32 @fclose(%struct._iobuf* %call5)
  %call11 = tail call %struct._iobuf* @fopen(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"\01??_C@_0CC@KAGNDOBI@c?3?2temp?2unstablemachines?2VMH3?4bi@", i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"\01??_C@_02JDPG@rb?$AA@", i32 0, i32 0))
  %call.i79 = tail call i32 @fseek(%struct._iobuf* %call11, i32 0, i32 2) #12
  %call1.i80 = tail call i32 @ftell(%struct._iobuf* %call11) #12
  %call2.i81 = tail call i32 @fseek(%struct._iobuf* %call11, i32 0, i32 0) #12
  %call13 = tail call noalias i8* @calloc(i32 1, i32 %call1.i80)
  %2 = ptrtoint i8* %call13 to i32
  %NextVMStreamPtr14 = getelementptr inbounds i8, i8* %call7, i32 16
  %3 = bitcast i8* %NextVMStreamPtr14 to i32*
  store i32 %2, i32* %3, align 4, !tbaa !16
  %call16 = tail call i32 @fread(i8* %call13, i32 %call1.i80, i32 1, %struct._iobuf* %call11)
  %call17 = tail call i32 @fclose(%struct._iobuf* %call11)
  %call18 = tail call %struct._iobuf* @fopen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"\01??_C@_0CE@FKBENCLA@c?3?2temp?2unstablemachines?2VM_OP1?4@", i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"\01??_C@_02JDPG@rb?$AA@", i32 0, i32 0))
  %call.i82 = tail call i32 @fseek(%struct._iobuf* %call18, i32 0, i32 2) #12
  %call1.i83 = tail call i32 @ftell(%struct._iobuf* %call18) #12
  %call2.i84 = tail call i32 @fseek(%struct._iobuf* %call18, i32 0, i32 0) #12
  %call20 = tail call noalias i8* @calloc(i32 1, i32 %call1.i83)
  %4 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %VMOpcodePtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %4, i32 0, i32 3
  store i8* %call20, i8** %VMOpcodePtr, align 4, !tbaa !17
  %call22 = tail call i32 @fread(i8* %call20, i32 %call1.i83, i32 1, %struct._iobuf* %call18)
  %call23 = tail call i32 @fclose(%struct._iobuf* %call18)
  %call24 = tail call %struct._iobuf* @fopen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"\01??_C@_0CE@NMIAKABO@c?3?2temp?2unstablemachines?2VM_OP2?4@", i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"\01??_C@_02JDPG@rb?$AA@", i32 0, i32 0))
  %call.i85 = tail call i32 @fseek(%struct._iobuf* %call24, i32 0, i32 2) #12
  %call1.i86 = tail call i32 @ftell(%struct._iobuf* %call24) #12
  %call2.i87 = tail call i32 @fseek(%struct._iobuf* %call24, i32 0, i32 0) #12
  %call26 = tail call noalias i8* @calloc(i32 1, i32 %call1.i86)
  %VMOpcodePtr27 = getelementptr inbounds i8, i8* %call7, i32 12
  %5 = bitcast i8* %VMOpcodePtr27 to i8**
  store i8* %call26, i8** %5, align 4, !tbaa !17
  %call29 = tail call i32 @fread(i8* %call26, i32 %call1.i86, i32 1, %struct._iobuf* %call24)
  %call30 = tail call i32 @fclose(%struct._iobuf* %call24)
  %call31 = tail call %struct._iobuf* @fopen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"\01??_C@_0CE@BHNMHDLL@c?3?2temp?2unstablemachines?2VM_OP3?4@", i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"\01??_C@_02JDPG@rb?$AA@", i32 0, i32 0))
  %call.i88 = tail call i32 @fseek(%struct._iobuf* %call31, i32 0, i32 2) #12
  %call1.i89 = tail call i32 @ftell(%struct._iobuf* %call31) #12
  %call2.i90 = tail call i32 @fseek(%struct._iobuf* %call31, i32 0, i32 0) #12
  %call33 = tail call noalias i8* @calloc(i32 1, i32 %call1.i89)
  %VMOpcodePtr34 = getelementptr inbounds i8, i8* %call13, i32 12
  %6 = bitcast i8* %VMOpcodePtr34 to i8**
  store i8* %call33, i8** %6, align 4, !tbaa !17
  %call36 = tail call i32 @fread(i8* %call33, i32 %call1.i89, i32 1, %struct._iobuf* %call31)
  %call37 = tail call i32 @fclose(%struct._iobuf* %call31)
  ret void
}

; Function Attrs: nounwind
declare noalias %struct._iobuf* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias i8* @calloc(i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fread(i8* nocapture, i32, i32, %struct._iobuf* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fclose(%struct._iobuf* nocapture) local_unnamed_addr #4

; Function Attrs: norecurse nounwind
define void @"\01?ResetVMAndInitState@@YAXXZ"() local_unnamed_addr #0 {
entry:
  store i32 0, i32* @"\01?VM_Counter@@3KA", align 4, !tbaa !5
  call void @llvm.memset.p0i8.i32(i8* bitcast ([8 x i32]* @"\01?VM_Regs@@3PAKA" to i8*), i8 0, i32 32, i32 4, i1 false)
  %Ptr.026 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !18
  %cmp227 = icmp eq %struct.VMStreamHeader* %Ptr.026, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp227, label %for.cond.cleanup3, label %for.body4.preheader

for.body4.preheader:                              ; preds = %entry
  br label %for.body4

for.cond.cleanup3.loopexit:                       ; preds = %for.inc15
  br label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond.cleanup3.loopexit, %entry
  ret void

for.body4:                                        ; preds = %for.body4.preheader, %for.inc15
  %Ptr.028 = phi %struct.VMStreamHeader* [ %Ptr.0, %for.inc15 ], [ %Ptr.026, %for.body4.preheader ]
  %arrayidx5 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.028, i32 0, i32 0, i32 0
  %0 = load i8, i8* %arrayidx5, align 4, !tbaa !18
  switch i8 %0, label %for.inc15 [
    i8 -123, label %if.then
    i8 -2, label %if.then11
  ]

if.then:                                          ; preds = %for.body4
  %VMMemoryPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.028, i32 0, i32 1
  %1 = load i8*, i8** %VMMemoryPtr, align 4, !tbaa !13
  br label %for.inc15.sink.split

if.then11:                                        ; preds = %for.body4
  %VMMemoryPtr12 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.028, i32 0, i32 1
  %2 = load i8*, i8** %VMMemoryPtr12, align 4, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %2, i32 104
  br label %for.inc15.sink.split

for.inc15.sink.split:                             ; preds = %if.then11, %if.then
  %.sink17 = phi i8* [ %1, %if.then ], [ %add.ptr, %if.then11 ]
  %"\01?VMStackPtr@@3KA.sink" = phi i32* [ @"\01?VMStackPtr@@3KA", %if.then ], [ getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), %if.then11 ]
  %3 = ptrtoint i8* %.sink17 to i32
  %4 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i = add i32 %4, %3
  %xor.i = xor i32 %add.i, %4
  %sub.i = sub i32 %xor.i, %4
  store i32 %sub.i, i32* %"\01?VMStackPtr@@3KA.sink", align 4, !tbaa !5
  br label %for.inc15

for.inc15:                                        ; preds = %for.body4, %for.inc15.sink.split
  %NextVMStreamPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.028, i32 0, i32 4
  %5 = bitcast i32* %NextVMStreamPtr to %struct.VMStreamHeader**
  %Ptr.0 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** %5, align 4, !tbaa !18
  %cmp2 = icmp eq %struct.VMStreamHeader* %Ptr.0, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp2, label %for.cond.cleanup3.loopexit, label %for.body4
}

; Function Attrs: norecurse nounwind
define i32 @"\01?SetValueAtVMReg7AndDecrease@@YAKH@Z"(i32 %Value) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i = add i32 %1, %0
  %xor.i = xor i32 %add.i, %1
  %sub.i = sub i32 %xor.i, %1
  %sub = add i32 %sub.i, -4
  %add.i19 = add i32 %xor.i, -4
  %xor.i20 = xor i32 %add.i19, %1
  %sub.i21 = sub i32 %xor.i20, %1
  store i32 %sub.i21, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23 = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23, label %.loopexit, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %Ptr.024 = phi %struct.VMStreamHeader* [ %7, %for.inc ], [ %2, %for.body.preheader ]
  %VMMemoryPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize, align 4, !tbaa !15
  %add = add i32 %5, %4
  %cmp2 = icmp ult i32 %sub, %add
  br i1 %cmp2, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %NextVMStreamPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr, align 4, !tbaa !16
  %cmp3 = icmp eq i32 %6, -1
  br i1 %cmp3, label %cleanup, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp, label %.loopexit.loopexit, label %for.body

cleanup:                                          ; preds = %for.body, %lor.lhs.false
  %sub5 = sub i32 %sub, %4
  %VMOpcodePtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i, align 4, !tbaa !17
  %add.ptr.i = getelementptr inbounds i8, i8* %8, i32 %sub5
  %9 = bitcast i8* %add.ptr.i to i32*
  store i32 %Value, i32* %9, align 4, !tbaa !5
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %for.inc
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %entry, %cleanup
  %10 = phi i32 [ %Value, %cleanup ], [ -1, %entry ], [ -1, %.loopexit.loopexit ]
  ret i32 %10
}

; Function Attrs: norecurse nounwind
define i32 @"\01?GetValueAtVMStackPtrAndIncrease@@YAKXZ"() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i = add i32 %1, %0
  %xor.i = xor i32 %add.i, %1
  %sub.i = sub i32 %xor.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23 = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23, label %.loopexit, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %Ptr.024 = phi %struct.VMStreamHeader* [ %7, %for.inc ], [ %2, %for.body.preheader ]
  %VMMemoryPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize, align 4, !tbaa !15
  %add = add i32 %5, %4
  %cmp1 = icmp ult i32 %sub.i, %add
  br i1 %cmp1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %NextVMStreamPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr, align 4, !tbaa !16
  %cmp2 = icmp eq i32 %6, -1
  br i1 %cmp2, label %cleanup, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp, label %.loopexit.loopexit, label %for.body

cleanup:                                          ; preds = %for.body, %lor.lhs.false
  %add.i19 = add i32 %xor.i, 4
  %xor.i20 = xor i32 %add.i19, %1
  %sub.i21 = sub i32 %xor.i20, %1
  store i32 %sub.i21, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub = sub i32 %sub.i, %4
  %VMOpcodePtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i, align 4, !tbaa !17
  %add.ptr.i = getelementptr inbounds i8, i8* %8, i32 %sub
  %9 = bitcast i8* %add.ptr.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %for.inc
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %entry, %cleanup
  %11 = phi i32 [ %10, %cleanup ], [ -1, %entry ], [ -1, %.loopexit.loopexit ]
  ret i32 %11
}

define i32 @"\01?VMMoveMemory@@YAIPAEK@Z"(i8* nocapture readonly %a1, i32 %dwBytes) local_unnamed_addr #2 {
entry:
  %v9 = alloca [36 x i8], align 1
  %0 = getelementptr inbounds [36 x i8], [36 x i8]* %v9, i32 0, i32 0
  call void @llvm.lifetime.start(i64 36, i8* nonnull %0) #12
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %cmp = icmp ugt i32 %dwBytes, 36
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  %call = tail call x86_stdcallcc i8* @"\01_GetProcessHeap@0"()
  %call1 = tail call x86_stdcallcc i8* @"\01_HeapAlloc@12"(i8* %call, i32 0, i32 %dwBytes)
  tail call void @llvm.memmove.p0i8.p0i8.i32(i8* %call1, i8* %a1, i32 %dwBytes, i32 1, i1 false)
  %xor111 = xor i32 %1, -189776053
  br label %for.body.preheader

if.end:                                           ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %0, i8* %a1, i32 %dwBytes, i32 1, i1 false)
  %xor = xor i32 %1, -189776053
  %cmp3108 = icmp eq i32 %dwBytes, 0
  br i1 %cmp3108, label %cleanup46, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.thread, %if.end
  %xor115 = phi i32 [ %xor111, %if.end.thread ], [ %xor, %if.end ]
  %lpMem.0113 = phi i8* [ %call1, %if.end.thread ], [ %0, %if.end ]
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %v8.0110 = phi i32 [ %or, %for.body ], [ %xor115, %for.body.preheader ]
  %i.0109 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i8, i8* %lpMem.0113, i32 %i.0109
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %3 = xor i8 %2, 75
  store i8 %3, i8* %arrayidx, align 1, !tbaa !18
  %conv7 = zext i8 %3 to i32
  %xor8 = xor i32 %conv7, %v8.0110
  %mul = shl i32 %xor8, 5
  %shr = lshr i32 %v8.0110, 27
  %or = or i32 %mul, %shr
  %inc = add nuw i32 %i.0109, 1
  %exitcond = icmp eq i32 %inc, %dwBytes
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %cmp13 = icmp eq i8* %lpMem.0113, %0
  br i1 %cmp13, label %if.end17, label %if.then14

if.then14:                                        ; preds = %for.end
  %call15 = call x86_stdcallcc i8* @"\01_GetProcessHeap@0"()
  %call16 = call x86_stdcallcc i32 @"\01_HeapFree@12"(i8* %call15, i32 0, i8* nonnull %lpMem.0113)
  br label %if.end17

if.end17:                                         ; preds = %for.end, %if.then14
  %cmp18 = icmp eq i32 %dwBytes, 36
  br i1 %cmp18, label %for.cond21.preheader, label %cleanup46

for.cond21.preheader:                             ; preds = %if.end17
  %4 = bitcast i8* %lpMem.0113 to i32*
  br label %for.body23

for.body23:                                       ; preds = %for.cond21.preheader, %for.inc36
  %i20.0107 = phi i32 [ 0, %for.cond21.preheader ], [ %inc37, %for.inc36 ]
  %EBX.0106 = phi i32 [ 0, %for.cond21.preheader ], [ %EBX.1, %for.inc36 ]
  %v8.1105 = phi i32 [ %or, %for.cond21.preheader ], [ %v8.2, %for.inc36 ]
  %arrayidx24 = getelementptr inbounds i32, i32* %4, i32 %i20.0107
  %5 = load i32, i32* %arrayidx24, align 4, !tbaa !5
  switch i32 %5, label %sw.default [
    i32 4200973, label %for.inc36
    i32 4201749, label %sw.bb25
    i32 4201595, label %sw.bb28
    i32 4201605, label %sw.bb30
    i32 4201610, label %sw.bb33
    i32 4213719, label %cleanup46.loopexit
  ]

sw.bb25:                                          ; preds = %for.body23
  %inc26 = add nsw i32 %i20.0107, 1
  %arrayidx27 = getelementptr inbounds i32, i32* %4, i32 %inc26
  %6 = load i32, i32* %arrayidx27, align 4, !tbaa !5
  %add = add i32 %6, %v8.1105
  br label %for.inc36

sw.bb28:                                          ; preds = %for.body23
  %xor29 = xor i32 %EBX.0106, %v8.1105
  br label %for.inc36

sw.bb30:                                          ; preds = %for.body23
  %shr31 = lshr i32 %v8.1105, 10
  %shl = shl i32 %v8.1105, 22
  %or32 = or i32 %shr31, %shl
  br label %for.inc36

sw.bb33:                                          ; preds = %for.body23
  %sub = sub i32 %v8.1105, %EBX.0106
  br label %for.inc36

sw.default:                                       ; preds = %for.body23
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"\01??_C@_0BL@CMPMGDNK@Fox?5unknown?5Gadget?5?$EA?50x?$CFX?6?$AA@", i32 0, i32 0), i32 %5)
  br label %for.inc36

for.inc36:                                        ; preds = %sw.bb25, %sw.bb28, %sw.bb30, %sw.bb33, %sw.default, %for.body23
  %v8.2 = phi i32 [ %v8.1105, %sw.default ], [ %sub, %sw.bb33 ], [ %or32, %sw.bb30 ], [ %xor29, %sw.bb28 ], [ %add, %sw.bb25 ], [ %v8.1105, %for.body23 ]
  %EBX.1 = phi i32 [ %EBX.0106, %sw.default ], [ %EBX.0106, %sw.bb33 ], [ %EBX.0106, %sw.bb30 ], [ %EBX.0106, %sw.bb28 ], [ %EBX.0106, %sw.bb25 ], [ -65537, %for.body23 ]
  %i20.1 = phi i32 [ %i20.0107, %sw.default ], [ %i20.0107, %sw.bb33 ], [ %i20.0107, %sw.bb30 ], [ %i20.0107, %sw.bb28 ], [ %inc26, %sw.bb25 ], [ %i20.0107, %for.body23 ]
  %inc37 = add nsw i32 %i20.1, 1
  %cmp22 = icmp slt i32 %inc37, 17
  br i1 %cmp22, label %for.body23, label %cleanup46.loopexit

cleanup46.loopexit:                               ; preds = %for.inc36, %for.body23
  %retval.3.ph = phi i32 [ %v8.2, %for.inc36 ], [ %v8.1105, %for.body23 ]
  br label %cleanup46

cleanup46:                                        ; preds = %cleanup46.loopexit, %if.end, %if.end17
  %retval.3 = phi i32 [ %or, %if.end17 ], [ %xor, %if.end ], [ %retval.3.ph, %cleanup46.loopexit ]
  call void @llvm.lifetime.end(i64 36, i8* nonnull %0) #12
  ret i32 %retval.3
}

declare dllimport x86_stdcallcc i8* @"\01_GetProcessHeap@0"() local_unnamed_addr #7

declare dllimport x86_stdcallcc i8* @"\01_HeapAlloc@12"(i8*, i32, i32) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

declare dllimport x86_stdcallcc i32 @"\01_HeapFree@12"(i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: inlinehint
define linkonce_odr i32 @printf(i8* %_Format, ...) local_unnamed_addr #8 comdat {
entry:
  %_ArgList = alloca i8*, align 4
  %0 = bitcast i8** %_ArgList to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %0) #12
  call void @llvm.va_start(i8* nonnull %0)
  %1 = load i8*, i8** %_ArgList, align 4, !tbaa !11
  %call = call %struct._iobuf* @__acrt_iob_func(i32 1)
  %call.i = call i64* @__local_stdio_printf_options()
  %2 = load i64, i64* %call.i, align 8, !tbaa !24
  %call1.i = call i32 @__stdio_common_vfprintf(i64 %2, %struct._iobuf* %call, i8* %_Format, %struct.__crt_locale_pointers* null, i8* %1)
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %0) #12
  ret i32 %call1.i
}

; Function Attrs: norecurse nounwind
define i32 @"\01?LoadValueFromVMReg7AndIncrease@@YAIXZ"() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %1 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i = add i32 %1, %0
  %xor.i = xor i32 %add.i, %1
  %sub.i = sub i32 %xor.i, %1
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp23 = icmp eq %struct.VMStreamHeader* %2, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23, label %.loopexit, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %Ptr.024 = phi %struct.VMStreamHeader* [ %7, %for.inc ], [ %2, %for.body.preheader ]
  %VMMemoryPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 1
  %3 = bitcast i8** %VMMemoryPtr to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !13
  %VMMemorySize = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 2
  %5 = load i32, i32* %VMMemorySize, align 4, !tbaa !15
  %add = add i32 %5, %4
  %cmp1 = icmp ult i32 %sub.i, %add
  br i1 %cmp1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %NextVMStreamPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 4
  %6 = load i32, i32* %NextVMStreamPtr, align 4, !tbaa !16
  %cmp2 = icmp eq i32 %6, -1
  br i1 %cmp2, label %cleanup, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false
  %7 = inttoptr i32 %6 to %struct.VMStreamHeader*
  %cmp = icmp eq %struct.VMStreamHeader* %7, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp, label %.loopexit.loopexit, label %for.body

cleanup:                                          ; preds = %for.body, %lor.lhs.false
  %add.i19 = add i32 %xor.i, 4
  %xor.i20 = xor i32 %add.i19, %1
  %sub.i21 = sub i32 %xor.i20, %1
  store i32 %sub.i21, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %sub = sub i32 %sub.i, %4
  %VMOpcodePtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024, i32 0, i32 3
  %8 = load i8*, i8** %VMOpcodePtr.i, align 4, !tbaa !17
  %add.ptr.i = getelementptr inbounds i8, i8* %8, i32 %sub
  %9 = bitcast i8* %add.ptr.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !5
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %for.inc
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %entry, %cleanup
  %11 = phi i32 [ %10, %cleanup ], [ -1, %entry ], [ -1, %.loopexit.loopexit ]
  ret i32 %11
}

; Function Attrs: norecurse nounwind readonly
define i32 @"\01?LoadValueFromLocation@@YAKI@Z"(i32 %Location) local_unnamed_addr #6 {
entry:
  %0 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %cmp14 = icmp eq %struct.VMStreamHeader* %0, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp14, label %.loopexit, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %Ptr.015 = phi %struct.VMStreamHeader* [ %5, %for.inc ], [ %0, %for.body.preheader ]
  %VMMemoryPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015, i32 0, i32 1
  %1 = bitcast i8** %VMMemoryPtr to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !13
  %VMMemorySize = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015, i32 0, i32 2
  %3 = load i32, i32* %VMMemorySize, align 4, !tbaa !15
  %add = add i32 %3, %2
  %cmp1 = icmp ugt i32 %add, %Location
  br i1 %cmp1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %NextVMStreamPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015, i32 0, i32 4
  %4 = load i32, i32* %NextVMStreamPtr, align 4, !tbaa !16
  %cmp2 = icmp eq i32 %4, -1
  br i1 %cmp2, label %cleanup, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false
  %5 = inttoptr i32 %4 to %struct.VMStreamHeader*
  %cmp = icmp eq %struct.VMStreamHeader* %5, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp, label %.loopexit.loopexit, label %for.body

cleanup:                                          ; preds = %for.body, %lor.lhs.false
  %sub = sub i32 %Location, %2
  %VMOpcodePtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.015, i32 0, i32 3
  %6 = load i8*, i8** %VMOpcodePtr.i, align 4, !tbaa !17
  %add.ptr.i = getelementptr inbounds i8, i8* %6, i32 %sub
  %7 = bitcast i8* %add.ptr.i to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !5
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %for.inc
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %entry, %cleanup
  %9 = phi i32 [ %8, %cleanup ], [ -1, %entry ], [ -1, %.loopexit.loopexit ]
  ret i32 %9
}

; Function Attrs: nounwind readnone
define i32 @"\01?sub_402490@@YAHIE@Z"(i32 %a1, i8 zeroext %a2) local_unnamed_addr #9 {
entry:
  %conv = zext i8 %a2 to i32
  %vecinit.i294 = insertelement <4 x i32> undef, i32 %conv, i32 0
  %vecinit3.i295 = shufflevector <4 x i32> %vecinit.i294, <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %0 = bitcast <4 x i32> %vecinit3.i295 to <2 x i64>
  %1 = bitcast <4 x i32> %vecinit3.i295 to <2 x double>
  %vecinit.i = insertelement <4 x i32> undef, i32 %a1, i32 0
  %vecinit3.i = shufflevector <4 x i32> %vecinit.i, <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %2 = bitcast <4 x i32> %vecinit3.i to <2 x double>
  br label %while.cond

while.cond.loopexit:                              ; preds = %if.else26
  br label %while.cond.backedge

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %v21.0 = phi i32 [ undef, %entry ], [ %v21.1, %while.cond.backedge ]
  %v22.0 = phi i32 [ undef, %entry ], [ %v22.1, %while.cond.backedge ]
  %v9.0 = phi i32 [ 1847, %entry ], [ %v9.0.be, %while.cond.backedge ]
  %a3.0 = phi i32 [ undef, %entry ], [ %a3.0.be, %while.cond.backedge ]
  %3 = phi <2 x i64> [ undef, %entry ], [ %.be1155, %while.cond.backedge ]
  %a4.0 = phi <2 x double> [ undef, %entry ], [ %a4.0.be, %while.cond.backedge ]
  %a5.0 = phi <2 x double> [ undef, %entry ], [ %a5.0.be, %while.cond.backedge ]
  %a6.0 = phi <2 x double> [ undef, %entry ], [ %a6.0.be, %while.cond.backedge ]
  %4 = phi <4 x i32> [ undef, %entry ], [ %.be1156, %while.cond.backedge ]
  %5 = phi <4 x i32> [ undef, %entry ], [ %.be1157, %while.cond.backedge ]
  %a7.0 = phi <2 x i64> [ undef, %entry ], [ %a7.0.be, %while.cond.backedge ]
  %6 = phi <16 x i8> [ undef, %entry ], [ %.be1158, %while.cond.backedge ]
  %7 = phi <16 x i8> [ undef, %entry ], [ %.be1159, %while.cond.backedge ]
  %a8.0 = phi <2 x i64> [ undef, %entry ], [ %a8.0.be, %while.cond.backedge ]
  %8 = phi <2 x i64> [ undef, %entry ], [ %.be1160, %while.cond.backedge ]
  %9 = phi <2 x i64> [ undef, %entry ], [ %.be1161, %while.cond.backedge ]
  %a9.0 = phi <2 x double> [ undef, %entry ], [ %a9.0.be, %while.cond.backedge ]
  br label %LABEL_2

LABEL_2:                                          ; preds = %LABEL_2.backedge, %while.cond
  %v21.1 = phi i32 [ %v21.0, %while.cond ], [ %v21.1.be, %LABEL_2.backedge ]
  %v22.1 = phi i32 [ %v22.0, %while.cond ], [ %v22.1.be, %LABEL_2.backedge ]
  %v9.1 = phi i32 [ %v9.0, %while.cond ], [ %v9.1.be, %LABEL_2.backedge ]
  %a3.1 = phi i32 [ %a3.0, %while.cond ], [ %a3.1.be, %LABEL_2.backedge ]
  %10 = phi <2 x i64> [ %3, %while.cond ], [ %.be, %LABEL_2.backedge ]
  %a4.1 = phi <2 x double> [ %a4.0, %while.cond ], [ %a4.1.be, %LABEL_2.backedge ]
  %a5.1 = phi <2 x double> [ %a5.0, %while.cond ], [ %a5.1.be, %LABEL_2.backedge ]
  %a6.1 = phi <2 x double> [ %a6.0, %while.cond ], [ %a6.1.be, %LABEL_2.backedge ]
  %11 = phi <4 x i32> [ %4, %while.cond ], [ %.be1148, %LABEL_2.backedge ]
  %12 = phi <4 x i32> [ %5, %while.cond ], [ %.be1149, %LABEL_2.backedge ]
  %a7.1 = phi <2 x i64> [ %a7.0, %while.cond ], [ %a7.1.be, %LABEL_2.backedge ]
  %13 = phi <16 x i8> [ %6, %while.cond ], [ %.be1150, %LABEL_2.backedge ]
  %14 = phi <16 x i8> [ %7, %while.cond ], [ %.be1151, %LABEL_2.backedge ]
  %a8.1 = phi <2 x i64> [ %a8.0, %while.cond ], [ %a8.1.be, %LABEL_2.backedge ]
  %15 = phi <2 x i64> [ %8, %while.cond ], [ %.be1152, %LABEL_2.backedge ]
  %16 = phi <2 x i64> [ %9, %while.cond ], [ %.be1153, %LABEL_2.backedge ]
  %a9.1 = phi <2 x double> [ %a9.0, %while.cond ], [ %a9.1.be, %LABEL_2.backedge ]
  %cmp416 = icmp ult i32 %v9.1, 942
  br i1 %cmp416, label %while.body2.lr.ph, label %while.end

while.body2.lr.ph:                                ; preds = %LABEL_2
  %17 = bitcast <2 x i64> %16 to <8 x i16>
  %vecext.i301 = extractelement <8 x i16> %17, i32 0
  %conv.i302 = zext i16 %vecext.i301 to i32
  br label %while.body2.outer

while.body2.outer:                                ; preds = %if.else44, %while.body2.lr.ph
  %a7.2422.ph = phi <2 x i64> [ %29, %if.else44 ], [ %a7.1, %while.body2.lr.ph ]
  %.ph = phi <4 x i32> [ %vecinit3.i297, %if.else44 ], [ %12, %while.body2.lr.ph ]
  %.ph651 = phi <4 x i32> [ %vecinit3.i297, %if.else44 ], [ %11, %while.body2.lr.ph ]
  %a6.2421.ph = phi <2 x double> [ %a6.2421.ph654, %if.else44 ], [ %a6.1, %while.body2.lr.ph ]
  %a5.2420.ph = phi <2 x double> [ %a5.2420.ph661, %if.else44 ], [ %a5.1, %while.body2.lr.ph ]
  %a4.2419.ph = phi <2 x double> [ %a4.2419.ph667, %if.else44 ], [ %a4.1, %while.body2.lr.ph ]
  %.ph652 = phi <2 x i64> [ %.ph668, %if.else44 ], [ %10, %while.body2.lr.ph ]
  %a3.2418.ph = phi i32 [ %a3.2418, %if.else44 ], [ %a3.1, %while.body2.lr.ph ]
  %v9.2417.ph = phi i32 [ 862, %if.else44 ], [ %v9.1, %while.body2.lr.ph ]
  %18 = bitcast <2 x i64> %a7.2422.ph to <16 x i8>
  br label %while.body2.outer653

while.body2.outer653.loopexit:                    ; preds = %if.then56
  br label %while.body2.outer653

while.body2.outer653:                             ; preds = %while.body2.outer653.loopexit, %while.body2.outer
  %a6.2421.ph654 = phi <2 x double> [ %a6.2421.ph, %while.body2.outer ], [ %a5.2420.ph661, %while.body2.outer653.loopexit ]
  %a5.2420.ph655 = phi <2 x double> [ %a5.2420.ph, %while.body2.outer ], [ %a5.2420.ph661, %while.body2.outer653.loopexit ]
  %a4.2419.ph656 = phi <2 x double> [ %a4.2419.ph, %while.body2.outer ], [ %a4.2419.ph667, %while.body2.outer653.loopexit ]
  %.ph657 = phi <2 x i64> [ %.ph652, %while.body2.outer ], [ %.ph668, %while.body2.outer653.loopexit ]
  %a3.2418.ph658 = phi i32 [ %a3.2418.ph, %while.body2.outer ], [ %a3.2418, %while.body2.outer653.loopexit ]
  %v9.2417.ph659 = phi i32 [ %v9.2417.ph, %while.body2.outer ], [ 108, %while.body2.outer653.loopexit ]
  %19 = bitcast <2 x double> %a6.2421.ph654 to <2 x i64>
  br label %while.body2.outer660

while.body2.outer660:                             ; preds = %while.body2.outer660.backedge, %while.body2.outer653
  %a5.2420.ph661 = phi <2 x double> [ %a5.2420.ph655, %while.body2.outer653 ], [ %a5.2420.ph661.be, %while.body2.outer660.backedge ]
  %a4.2419.ph662 = phi <2 x double> [ %a4.2419.ph656, %while.body2.outer653 ], [ %a4.2419.ph667, %while.body2.outer660.backedge ]
  %.ph663 = phi <2 x i64> [ %.ph657, %while.body2.outer653 ], [ %.ph668, %while.body2.outer660.backedge ]
  %a3.2418.ph664 = phi i32 [ %a3.2418.ph658, %while.body2.outer653 ], [ %a3.2418, %while.body2.outer660.backedge ]
  %v9.2417.ph665 = phi i32 [ %v9.2417.ph659, %while.body2.outer653 ], [ %v9.2417.ph665.be, %while.body2.outer660.backedge ]
  %20 = bitcast <2 x double> %a5.2420.ph661 to <8 x i16>
  %vecext.i292 = extractelement <8 x i16> %20, i32 0
  %conv.i293 = zext i16 %vecext.i292 to i32
  br label %while.body2.outer666

while.body2.outer666.loopexit:                    ; preds = %if.else49
  br label %while.body2.outer666.backedge

while.body2.outer666:                             ; preds = %while.body2.outer666.backedge, %while.body2.outer660
  %a4.2419.ph667 = phi <2 x double> [ %a4.2419.ph662, %while.body2.outer660 ], [ %a4.2419.ph667.be, %while.body2.outer666.backedge ]
  %.ph668 = phi <2 x i64> [ %.ph663, %while.body2.outer660 ], [ %.ph668.be, %while.body2.outer666.backedge ]
  %a3.2418.ph669 = phi i32 [ %a3.2418.ph664, %while.body2.outer660 ], [ %a3.2418, %while.body2.outer666.backedge ]
  %v9.2417.ph670 = phi i32 [ %v9.2417.ph665, %while.body2.outer660 ], [ %v9.2417.ph670.be, %while.body2.outer666.backedge ]
  br label %while.body2

while.body2:                                      ; preds = %if.then56, %while.body2.outer666
  %a3.2418 = phi i32 [ %a3.2418.ph669, %while.body2.outer666 ], [ %conv.i293, %if.then56 ]
  %v9.2417 = phi i32 [ %v9.2417.ph670, %while.body2.outer666 ], [ 83, %if.then56 ]
  %cmp3 = icmp eq i32 %v9.2417, 941
  br i1 %cmp3, label %sw.bb168.loopexit, label %if.else

if.else:                                          ; preds = %while.body2
  %cmp5 = icmp ugt i32 %v9.2417, 371
  br i1 %cmp5, label %if.then6, label %if.else49

if.then6:                                         ; preds = %if.else
  %cmp7 = icmp ugt i32 %v9.2417, 630
  br i1 %cmp7, label %if.then8, label %if.else26

if.then8:                                         ; preds = %if.then6
  switch i32 %v9.2417, label %cleanup.loopexit1145 [
    i32 721, label %if.else21
    i32 862, label %if.else16
    i32 902, label %if.end
  ]

if.end:                                           ; preds = %if.then8
  %21 = bitcast <2 x double> %a5.2420.ph661 to <2 x i64>
  %xor.i = xor <2 x i64> %21, %19
  %22 = bitcast <2 x i64> %xor.i to <2 x double>
  br label %while.body2.outer660.backedge

if.else16:                                        ; preds = %if.then8
  %23 = bitcast <2 x double> %a5.2420.ph661 to <4 x i32>
  %shuffle = shufflevector <4 x i32> %23, <4 x i32> undef, <4 x i32> zeroinitializer
  %24 = bitcast <4 x i32> %shuffle to <2 x double>
  br label %while.body2.outer660.backedge

while.body2.outer660.backedge:                    ; preds = %if.else16, %if.end
  %a5.2420.ph661.be = phi <2 x double> [ %22, %if.end ], [ %24, %if.else16 ]
  %v9.2417.ph665.be = phi i32 [ 337, %if.end ], [ 299, %if.else16 ]
  br label %while.body2.outer660

if.else21:                                        ; preds = %if.then8
  %25 = bitcast <2 x double> %a4.2419.ph667 to <16 x i8>
  %add.i300 = add <16 x i8> %18, %25
  %26 = bitcast <16 x i8> %add.i300 to <2 x i64>
  %27 = bitcast <16 x i8> %add.i300 to <2 x double>
  br label %while.body2.outer666.backedge

while.body2.outer666.backedge:                    ; preds = %if.else21, %while.body2.outer666.loopexit
  %a4.2419.ph667.be = phi <2 x double> [ %27, %if.else21 ], [ %1, %while.body2.outer666.loopexit ]
  %.ph668.be = phi <2 x i64> [ %26, %if.else21 ], [ %0, %while.body2.outer666.loopexit ]
  %v9.2417.ph670.be = phi i32 [ 360, %if.else21 ], [ 630, %while.body2.outer666.loopexit ]
  br label %while.body2.outer666

if.else26:                                        ; preds = %if.then6
  switch i32 %v9.2417, label %cleanup.loopexit1146 [
    i32 630, label %if.end116.loopexit
    i32 499, label %if.else44
    i32 542, label %while.cond.loopexit
    i32 628, label %while.end157.thread
  ]

while.end157.thread:                              ; preds = %if.else26
  %28 = bitcast <2 x double> %a5.2420.ph661 to <8 x i16>
  %vecext.i298 = extractelement <8 x i16> %28, i32 3
  %conv.i299 = zext i16 %vecext.i298 to i32
  br label %sw.bb158

if.else44:                                        ; preds = %if.else26
  %vecinit.i296 = insertelement <4 x i32> undef, i32 %a3.2418, i32 0
  %vecinit3.i297 = shufflevector <4 x i32> %vecinit.i296, <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %29 = bitcast <4 x i32> %vecinit3.i297 to <2 x i64>
  br label %while.body2.outer

if.else49:                                        ; preds = %if.else
  %cmp50 = icmp eq i32 %v9.2417, 371
  br i1 %cmp50, label %while.body2.outer666.loopexit, label %if.else54

if.else54:                                        ; preds = %if.else49
  %cmp55 = icmp ugt i32 %v9.2417, 149
  br i1 %cmp55, label %if.then56, label %if.else74

if.then56:                                        ; preds = %if.else54
  switch i32 %v9.2417, label %cleanup.loopexit [
    i32 299, label %while.body2.outer653.loopexit
    i32 337, label %while.body2
    i32 360, label %sw.bb159.loopexit
  ]

if.else74:                                        ; preds = %if.else54
  switch i32 %v9.2417, label %cleanup.loopexit1147 [
    i32 149, label %if.then99
    i32 23, label %sw.bb
    i32 83, label %LABEL_2.backedge
    i32 108, label %sw.bb79
    i32 122, label %sw.bb83
  ]

LABEL_2.backedge:                                 ; preds = %if.else74, %sw.bb, %sw.bb79, %sw.bb83, %sw.bb158, %sw.bb159, %sw.bb163, %sw.bb166, %sw.bb174, %while.end157, %sw.bb168
  %v21.1.be = phi i32 [ %v21.1, %sw.bb83 ], [ %v21.1, %sw.bb79 ], [ %v21.1, %sw.bb ], [ %v21.1, %sw.bb174 ], [ %v21.1, %sw.bb166 ], [ %v21.1, %sw.bb163 ], [ %v21.1, %sw.bb159 ], [ %v21.1, %sw.bb158 ], [ %v21.1, %while.end157 ], [ %a3.2418, %if.else74 ], [ %v21.1, %sw.bb168 ]
  %v22.1.be = phi i32 [ %v22.1, %sw.bb83 ], [ %v22.1, %sw.bb79 ], [ %v22.1, %sw.bb ], [ %v22.1, %sw.bb174 ], [ %v22.1, %sw.bb166 ], [ %v22.1, %sw.bb163 ], [ %v22.1, %sw.bb159 ], [ %v22.1, %sw.bb158 ], [ %a3.1, %while.end157 ], [ %v22.1, %if.else74 ], [ %v22.1, %sw.bb168 ]
  %v9.1.be = phi i32 [ 2038, %sw.bb83 ], [ 1294, %sw.bb79 ], [ 941, %sw.bb ], [ 23, %sw.bb174 ], [ 982, %sw.bb166 ], [ 371, %sw.bb163 ], [ 122, %sw.bb159 ], [ 1851, %sw.bb158 ], [ 247, %while.end157 ], [ 628, %if.else74 ], [ %.909, %sw.bb168 ]
  %a3.1.be = phi i32 [ %a3.2418, %sw.bb83 ], [ %a3.2418, %sw.bb79 ], [ %a3.2418, %sw.bb ], [ %a3.1, %sw.bb174 ], [ %a3.1, %sw.bb166 ], [ %a3.1, %sw.bb163 ], [ %a3.2.lcssa540638, %sw.bb159 ], [ %shl, %sw.bb158 ], [ %a3.1, %while.end157 ], [ %a3.2418, %if.else74 ], [ %a3.2.lcssa540650, %sw.bb168 ]
  %.be = phi <2 x i64> [ %.ph668, %sw.bb83 ], [ %.ph668, %sw.bb79 ], [ %.ph668, %sw.bb ], [ %10, %sw.bb174 ], [ %10, %sw.bb166 ], [ %10, %sw.bb163 ], [ %.lcssa383541637, %sw.bb159 ], [ %.lcssa383541625, %sw.bb158 ], [ %10, %while.end157 ], [ %.ph668, %if.else74 ], [ %.lcssa383541649, %sw.bb168 ]
  %a4.1.be = phi <2 x double> [ %a4.2419.ph667, %sw.bb83 ], [ %a4.2419.ph667, %sw.bb79 ], [ %a4.2419.ph667, %sw.bb ], [ %a4.1, %sw.bb174 ], [ %a4.1, %sw.bb166 ], [ %a4.1, %sw.bb163 ], [ %a4.2.lcssa542636, %sw.bb159 ], [ %a4.2.lcssa542624, %sw.bb158 ], [ %a4.1, %while.end157 ], [ %a4.2419.ph667, %if.else74 ], [ %a4.2.lcssa542648, %sw.bb168 ]
  %a5.1.be = phi <2 x double> [ %a5.2420.ph661, %sw.bb83 ], [ %35, %sw.bb79 ], [ %a5.2420.ph661, %sw.bb ], [ %a5.1, %sw.bb174 ], [ %a5.1, %sw.bb166 ], [ %a5.1, %sw.bb163 ], [ %a5.2.lcssa543635, %sw.bb159 ], [ %a5.2.lcssa543623, %sw.bb158 ], [ %a5.1, %while.end157 ], [ %a5.2420.ph661, %if.else74 ], [ %a5.2.lcssa543647, %sw.bb168 ]
  %a6.1.be = phi <2 x double> [ %a6.2421.ph654, %sw.bb83 ], [ %a6.2421.ph654, %sw.bb79 ], [ %a6.2421.ph654, %sw.bb ], [ %a6.1, %sw.bb174 ], [ %a6.1, %sw.bb166 ], [ %a6.1, %sw.bb163 ], [ %53, %sw.bb159 ], [ %a6.2.lcssa544622, %sw.bb158 ], [ %a6.1, %while.end157 ], [ %a6.2421.ph654, %if.else74 ], [ %a6.2.lcssa544646, %sw.bb168 ]
  %.be1148 = phi <4 x i32> [ %.ph651, %sw.bb83 ], [ %.ph651, %sw.bb79 ], [ %.ph651, %sw.bb ], [ %11, %sw.bb174 ], [ %11, %sw.bb166 ], [ %11, %sw.bb163 ], [ %.lcssa357545633, %sw.bb159 ], [ %.lcssa357545621, %sw.bb158 ], [ %11, %while.end157 ], [ %.ph651, %if.else74 ], [ %.lcssa357545645, %sw.bb168 ]
  %.be1149 = phi <4 x i32> [ %.ph, %sw.bb83 ], [ %.ph, %sw.bb79 ], [ %.ph, %sw.bb ], [ %12, %sw.bb174 ], [ %12, %sw.bb166 ], [ %12, %sw.bb163 ], [ %.lcssa350546632, %sw.bb159 ], [ %.lcssa350546620, %sw.bb158 ], [ %12, %while.end157 ], [ %.ph, %if.else74 ], [ %.lcssa350546644, %sw.bb168 ]
  %a7.1.be = phi <2 x i64> [ %a7.2422.ph, %sw.bb83 ], [ %a7.2422.ph, %sw.bb79 ], [ %a7.2422.ph, %sw.bb ], [ %a7.1, %sw.bb174 ], [ %a7.1, %sw.bb166 ], [ %a7.1, %sw.bb163 ], [ %a7.2.lcssa547631, %sw.bb159 ], [ %a7.2.lcssa547619, %sw.bb158 ], [ %a7.1, %while.end157 ], [ %a7.2422.ph, %if.else74 ], [ %a7.2.lcssa547643, %sw.bb168 ]
  %.be1150 = phi <16 x i8> [ %add.i291, %sw.bb83 ], [ %13, %sw.bb79 ], [ %13, %sw.bb ], [ %13, %sw.bb174 ], [ %13, %sw.bb166 ], [ zeroinitializer, %sw.bb163 ], [ %.lcssa336548630, %sw.bb159 ], [ %13, %sw.bb158 ], [ %13, %while.end157 ], [ %13, %if.else74 ], [ %13, %sw.bb168 ]
  %.be1151 = phi <16 x i8> [ %add.i291, %sw.bb83 ], [ %14, %sw.bb79 ], [ %14, %sw.bb ], [ %14, %sw.bb174 ], [ %14, %sw.bb166 ], [ zeroinitializer, %sw.bb163 ], [ %.lcssa549629, %sw.bb159 ], [ %14, %sw.bb158 ], [ %14, %while.end157 ], [ %14, %if.else74 ], [ %14, %sw.bb168 ]
  %a8.1.be = phi <2 x i64> [ %37, %sw.bb83 ], [ %a8.1, %sw.bb79 ], [ %a8.1, %sw.bb ], [ %a8.1, %sw.bb174 ], [ %a8.1, %sw.bb166 ], [ zeroinitializer, %sw.bb163 ], [ %a8.2.lcssa550628, %sw.bb159 ], [ %a8.1, %sw.bb158 ], [ %a8.1, %while.end157 ], [ %a8.1, %if.else74 ], [ %a8.1, %sw.bb168 ]
  %.be1152 = phi <2 x i64> [ %15, %sw.bb83 ], [ %15, %sw.bb79 ], [ %31, %sw.bb ], [ %a8.1, %sw.bb174 ], [ %a8.1, %sw.bb166 ], [ %15, %sw.bb163 ], [ %15, %sw.bb159 ], [ %15, %sw.bb158 ], [ %15, %while.end157 ], [ %15, %if.else74 ], [ %15, %sw.bb168 ]
  %.be1153 = phi <2 x i64> [ %16, %sw.bb83 ], [ %16, %sw.bb79 ], [ %31, %sw.bb ], [ %a8.1, %sw.bb174 ], [ %a8.1, %sw.bb166 ], [ %16, %sw.bb163 ], [ %16, %sw.bb159 ], [ %16, %sw.bb158 ], [ %16, %while.end157 ], [ %16, %if.else74 ], [ %16, %sw.bb168 ]
  %a9.1.be = phi <2 x double> [ %a9.1, %sw.bb83 ], [ %a9.1, %sw.bb79 ], [ %32, %sw.bb ], [ %55, %sw.bb174 ], [ %54, %sw.bb166 ], [ %a9.1, %sw.bb163 ], [ %a9.1, %sw.bb159 ], [ %a9.1, %sw.bb158 ], [ %a9.1, %while.end157 ], [ %a9.1, %if.else74 ], [ %a9.1, %sw.bb168 ]
  br label %LABEL_2

sw.bb:                                            ; preds = %if.else74
  %30 = fcmp oeq <2 x double> %a9.1, %a4.2419.ph667
  %31 = sext <2 x i1> %30 to <2 x i64>
  %32 = bitcast <2 x i64> %31 to <2 x double>
  br label %LABEL_2.backedge

sw.bb79:                                          ; preds = %if.else74
  %33 = bitcast <2 x double> %a5.2420.ph661 to <4 x i32>
  %34 = tail call <4 x i32> @llvm.x86.sse2.psll.d(<4 x i32> %33, <4 x i32> %.ph) #12
  %35 = bitcast <4 x i32> %34 to <2 x double>
  br label %LABEL_2.backedge

sw.bb83:                                          ; preds = %if.else74
  %36 = bitcast <2 x i64> %a7.2422.ph to <16 x i8>
  %add.i291 = add <16 x i8> %14, %36
  %37 = bitcast <16 x i8> %add.i291 to <2 x i64>
  br label %LABEL_2.backedge

while.end:                                        ; preds = %LABEL_2
  %cmp95 = icmp ugt i32 %v9.1, 1653
  br i1 %cmp95, label %while.end157, label %if.else104

if.then99:                                        ; preds = %if.else74
  %38 = bitcast <2 x double> %a5.2420.ph661 to <4 x i32>
  %39 = bitcast <2 x double> %a6.2421.ph654 to <4 x i32>
  %shuffle.i290 = shufflevector <4 x i32> %38, <4 x i32> %39, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %40 = bitcast <4 x i32> %shuffle.i290 to <2 x double>
  %41 = bitcast <2 x double> %a6.2421.ph654 to <4 x i32>
  %shuffle.i = shufflevector <4 x i32> %41, <4 x i32> %shuffle.i290, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %42 = bitcast <4 x i32> %shuffle.i to <2 x double>
  br label %while.cond.backedge

if.else104:                                       ; preds = %while.end
  %cmp105 = icmp ugt i32 %v9.1, 1142
  br i1 %cmp105, label %if.then106, label %if.else128

if.then106:                                       ; preds = %if.else104
  switch i32 %v9.1, label %cleanup.loopexit1154 [
    i32 1279, label %if.else121
    i32 1294, label %if.else118
    i32 1576, label %if.end116
  ]

if.end116.loopexit:                               ; preds = %if.else26
  br label %if.end116

if.end116:                                        ; preds = %if.end116.loopexit, %if.then106
  %a6.2.lcssa561.ph588612 = phi <2 x double> [ %a6.1, %if.then106 ], [ %a6.2421.ph654, %if.end116.loopexit ]
  %a5.2.lcssa560.ph589611 = phi <2 x double> [ %a5.1, %if.then106 ], [ %a5.2420.ph661, %if.end116.loopexit ]
  %a4.2.lcssa559.ph590610 = phi <2 x double> [ %a4.1, %if.then106 ], [ %a4.2419.ph667, %if.end116.loopexit ]
  %.lcssa383558.ph591609 = phi <2 x i64> [ %10, %if.then106 ], [ %.ph668, %if.end116.loopexit ]
  %a3.2.lcssa557.ph592608 = phi i32 [ %a3.1, %if.then106 ], [ 255, %if.end116.loopexit ]
  %vecinit.i288 = insertelement <4 x i32> undef, i32 %a3.2.lcssa557.ph592608, i32 0
  %vecinit3.i289 = shufflevector <4 x i32> %vecinit.i288, <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %43 = bitcast <4 x i32> %vecinit3.i289 to <2 x i64>
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end116, %if.else118, %if.else121, %if.else150, %if.else147, %if.then130, %if.then99, %if.else128, %while.cond.loopexit
  %v9.0.be = phi i32 [ 1142, %if.end116 ], [ 1926, %if.else118 ], [ %., %if.else121 ], [ 1279, %if.else150 ], [ 953, %if.else147 ], [ 542, %if.then130 ], [ 902, %if.then99 ], [ 499, %if.else128 ], [ 499, %while.cond.loopexit ]
  %a3.0.be = phi i32 [ %a3.2.lcssa557.ph592608, %if.end116 ], [ %a3.1, %if.else118 ], [ %a3.1, %if.else121 ], [ %conv.i, %if.else150 ], [ %a3.1, %if.else147 ], [ %a3.1, %if.then130 ], [ %a3.2418, %if.then99 ], [ %a3.1, %if.else128 ], [ 1, %while.cond.loopexit ]
  %.be1155 = phi <2 x i64> [ %.lcssa383558.ph591609, %if.end116 ], [ %10, %if.else118 ], [ %10, %if.else121 ], [ %10, %if.else150 ], [ %10, %if.else147 ], [ %and.i, %if.then130 ], [ %.ph668, %if.then99 ], [ %10, %if.else128 ], [ %.ph668, %while.cond.loopexit ]
  %a4.0.be = phi <2 x double> [ %a4.2.lcssa559.ph590610, %if.end116 ], [ %a4.1, %if.else118 ], [ %a4.1, %if.else121 ], [ %a4.1, %if.else150 ], [ %a4.1, %if.else147 ], [ %46, %if.then130 ], [ %a4.2419.ph667, %if.then99 ], [ %a4.1, %if.else128 ], [ %a4.2419.ph667, %while.cond.loopexit ]
  %a5.0.be = phi <2 x double> [ %a5.2.lcssa560.ph589611, %if.end116 ], [ %a5.1, %if.else118 ], [ %a5.1, %if.else121 ], [ %a5.1, %if.else150 ], [ %a5.1, %if.else147 ], [ %a5.1, %if.then130 ], [ %40, %if.then99 ], [ %2, %if.else128 ], [ %2, %while.cond.loopexit ]
  %a6.0.be = phi <2 x double> [ %a6.2.lcssa561.ph588612, %if.end116 ], [ %a6.1, %if.else118 ], [ %a6.1, %if.else121 ], [ %a6.1, %if.else150 ], [ %a6.1, %if.else147 ], [ %a6.1, %if.then130 ], [ %42, %if.then99 ], [ %a6.1, %if.else128 ], [ %a6.2421.ph654, %while.cond.loopexit ]
  %.be1156 = phi <4 x i32> [ %vecinit3.i289, %if.end116 ], [ %11, %if.else118 ], [ %11, %if.else121 ], [ %11, %if.else150 ], [ %11, %if.else147 ], [ %11, %if.then130 ], [ %.ph651, %if.then99 ], [ %11, %if.else128 ], [ %.ph651, %while.cond.loopexit ]
  %.be1157 = phi <4 x i32> [ %vecinit3.i289, %if.end116 ], [ %12, %if.else118 ], [ %12, %if.else121 ], [ %12, %if.else150 ], [ %12, %if.else147 ], [ %12, %if.then130 ], [ %.ph, %if.then99 ], [ %12, %if.else128 ], [ %.ph, %while.cond.loopexit ]
  %a7.0.be = phi <2 x i64> [ %43, %if.end116 ], [ %a7.1, %if.else118 ], [ %a7.1, %if.else121 ], [ %a7.1, %if.else150 ], [ %a7.1, %if.else147 ], [ %a7.1, %if.then130 ], [ %a7.2422.ph, %if.then99 ], [ %a7.1, %if.else128 ], [ %a7.2422.ph, %while.cond.loopexit ]
  %.be1158 = phi <16 x i8> [ %13, %if.end116 ], [ %add.i, %if.else118 ], [ %13, %if.else121 ], [ %13, %if.else150 ], [ %13, %if.else147 ], [ %13, %if.then130 ], [ %13, %if.then99 ], [ %13, %if.else128 ], [ %13, %while.cond.loopexit ]
  %.be1159 = phi <16 x i8> [ %14, %if.end116 ], [ %add.i, %if.else118 ], [ %14, %if.else121 ], [ %14, %if.else150 ], [ %14, %if.else147 ], [ %14, %if.then130 ], [ %14, %if.then99 ], [ %14, %if.else128 ], [ %14, %while.cond.loopexit ]
  %a8.0.be = phi <2 x i64> [ %a8.1, %if.end116 ], [ %45, %if.else118 ], [ %a8.1, %if.else121 ], [ %a8.1, %if.else150 ], [ %a8.1, %if.else147 ], [ %a8.1, %if.then130 ], [ %a8.1, %if.then99 ], [ %a8.1, %if.else128 ], [ %a8.1, %while.cond.loopexit ]
  %.be1160 = phi <2 x i64> [ %15, %if.end116 ], [ %15, %if.else118 ], [ %15, %if.else121 ], [ %15, %if.else150 ], [ %48, %if.else147 ], [ %15, %if.then130 ], [ %15, %if.then99 ], [ %15, %if.else128 ], [ %15, %while.cond.loopexit ]
  %.be1161 = phi <2 x i64> [ %16, %if.end116 ], [ %16, %if.else118 ], [ %16, %if.else121 ], [ %16, %if.else150 ], [ %48, %if.else147 ], [ %16, %if.then130 ], [ %16, %if.then99 ], [ %16, %if.else128 ], [ %16, %while.cond.loopexit ]
  %a9.0.be = phi <2 x double> [ %a9.1, %if.end116 ], [ %a9.1, %if.else118 ], [ %a9.1, %if.else121 ], [ %a9.1, %if.else150 ], [ %49, %if.else147 ], [ %a9.1, %if.then130 ], [ %a9.1, %if.then99 ], [ %a9.1, %if.else128 ], [ %a9.1, %while.cond.loopexit ]
  br label %while.cond

if.else118:                                       ; preds = %if.then106
  %44 = bitcast <2 x i64> %a7.1 to <16 x i8>
  %add.i = add <16 x i8> %44, %13
  %45 = bitcast <16 x i8> %add.i to <2 x i64>
  br label %while.cond.backedge

if.else121:                                       ; preds = %if.then106
  %conv122 = trunc i32 %a3.1 to i16
  %tobool123 = icmp eq i16 %conv122, 0
  %. = select i1 %tobool123, i32 108, i32 721
  br label %while.cond.backedge

if.else128:                                       ; preds = %if.else104
  switch i32 %v9.1, label %cleanup.loopexit1154 [
    i32 1142, label %if.then130
    i32 953, label %if.else150
    i32 982, label %if.else147
    i32 1102, label %while.cond.backedge
  ]

if.then130:                                       ; preds = %if.else128
  %and.i = and <2 x i64> %a7.1, %10
  %46 = bitcast <2 x i64> %and.i to <2 x double>
  br label %while.cond.backedge

if.else147:                                       ; preds = %if.else128
  %47 = fcmp oeq <2 x double> %a9.1, %a4.1
  %48 = sext <2 x i1> %47 to <2 x i64>
  %49 = bitcast <2 x i64> %48 to <2 x double>
  br label %while.cond.backedge

if.else150:                                       ; preds = %if.else128
  %50 = bitcast <2 x i64> %15 to <8 x i16>
  %vecext.i = extractelement <8 x i16> %50, i32 0
  %conv.i = zext i16 %vecext.i to i32
  br label %while.cond.backedge

while.end157:                                     ; preds = %while.end
  switch i32 %v9.1, label %cleanup.loopexit1147 [
    i32 1802, label %sw.bb158
    i32 1805, label %sw.bb159
    i32 1847, label %sw.bb163
    i32 1851, label %LABEL_2.backedge
    i32 1926, label %sw.bb166
    i32 2027, label %sw.bb168
    i32 2038, label %sw.bb174
  ]

sw.bb158:                                         ; preds = %while.end157.thread, %while.end157
  %a3.2.lcssa540626 = phi i32 [ %conv.i299, %while.end157.thread ], [ %a3.1, %while.end157 ]
  %.lcssa383541625 = phi <2 x i64> [ %.ph668, %while.end157.thread ], [ %10, %while.end157 ]
  %a4.2.lcssa542624 = phi <2 x double> [ %a4.2419.ph667, %while.end157.thread ], [ %a4.1, %while.end157 ]
  %a5.2.lcssa543623 = phi <2 x double> [ %a5.2420.ph661, %while.end157.thread ], [ %a5.1, %while.end157 ]
  %a6.2.lcssa544622 = phi <2 x double> [ %a6.2421.ph654, %while.end157.thread ], [ %a6.1, %while.end157 ]
  %.lcssa357545621 = phi <4 x i32> [ %.ph651, %while.end157.thread ], [ %11, %while.end157 ]
  %.lcssa350546620 = phi <4 x i32> [ %.ph, %while.end157.thread ], [ %12, %while.end157 ]
  %a7.2.lcssa547619 = phi <2 x i64> [ %a7.2422.ph, %while.end157.thread ], [ %a7.1, %while.end157 ]
  %shl = shl i32 %a3.2.lcssa540626, 16
  br label %LABEL_2.backedge

sw.bb159.loopexit:                                ; preds = %if.then56
  br label %sw.bb159

sw.bb159:                                         ; preds = %sw.bb159.loopexit, %while.end157
  %a3.2.lcssa540638 = phi i32 [ %a3.1, %while.end157 ], [ %a3.2418, %sw.bb159.loopexit ]
  %.lcssa383541637 = phi <2 x i64> [ %10, %while.end157 ], [ %.ph668, %sw.bb159.loopexit ]
  %a4.2.lcssa542636 = phi <2 x double> [ %a4.1, %while.end157 ], [ %a4.2419.ph667, %sw.bb159.loopexit ]
  %a5.2.lcssa543635 = phi <2 x double> [ %a5.1, %while.end157 ], [ %a5.2420.ph661, %sw.bb159.loopexit ]
  %a6.2.lcssa544634 = phi <2 x double> [ %a6.1, %while.end157 ], [ %a6.2421.ph654, %sw.bb159.loopexit ]
  %.lcssa357545633 = phi <4 x i32> [ %11, %while.end157 ], [ %.ph651, %sw.bb159.loopexit ]
  %.lcssa350546632 = phi <4 x i32> [ %12, %while.end157 ], [ %.ph, %sw.bb159.loopexit ]
  %a7.2.lcssa547631 = phi <2 x i64> [ %a7.1, %while.end157 ], [ %a7.2422.ph, %sw.bb159.loopexit ]
  %.lcssa336548630 = phi <16 x i8> [ %13, %while.end157 ], [ zeroinitializer, %sw.bb159.loopexit ]
  %.lcssa549629 = phi <16 x i8> [ %14, %while.end157 ], [ zeroinitializer, %sw.bb159.loopexit ]
  %a8.2.lcssa550628 = phi <2 x i64> [ %a8.1, %while.end157 ], [ zeroinitializer, %sw.bb159.loopexit ]
  %51 = bitcast <2 x double> %a6.2.lcssa544634 to <4 x i32>
  %52 = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %51, <4 x i32> %.lcssa357545633) #12
  %53 = bitcast <4 x i32> %52 to <2 x double>
  br label %LABEL_2.backedge

sw.bb163:                                         ; preds = %while.end157
  br label %LABEL_2.backedge

sw.bb166:                                         ; preds = %while.end157
  %54 = bitcast <2 x i64> %a8.1 to <2 x double>
  br label %LABEL_2.backedge

sw.bb168.loopexit:                                ; preds = %while.body2
  br label %sw.bb168

sw.bb168:                                         ; preds = %sw.bb168.loopexit, %while.end157
  %a3.2.lcssa540650 = phi i32 [ %a3.1, %while.end157 ], [ %conv.i302, %sw.bb168.loopexit ]
  %.lcssa383541649 = phi <2 x i64> [ %10, %while.end157 ], [ %.ph668, %sw.bb168.loopexit ]
  %a4.2.lcssa542648 = phi <2 x double> [ %a4.1, %while.end157 ], [ %a4.2419.ph667, %sw.bb168.loopexit ]
  %a5.2.lcssa543647 = phi <2 x double> [ %a5.1, %while.end157 ], [ %a5.2420.ph661, %sw.bb168.loopexit ]
  %a6.2.lcssa544646 = phi <2 x double> [ %a6.1, %while.end157 ], [ %a6.2421.ph654, %sw.bb168.loopexit ]
  %.lcssa357545645 = phi <4 x i32> [ %11, %while.end157 ], [ %.ph651, %sw.bb168.loopexit ]
  %.lcssa350546644 = phi <4 x i32> [ %12, %while.end157 ], [ %.ph, %sw.bb168.loopexit ]
  %a7.2.lcssa547643 = phi <2 x i64> [ %a7.1, %while.end157 ], [ %a7.2422.ph, %sw.bb168.loopexit ]
  %conv169 = trunc i32 %a3.2.lcssa540650 to i16
  %tobool170 = icmp eq i16 %conv169, 0
  %.909 = select i1 %tobool170, i32 1805, i32 149
  br label %LABEL_2.backedge

sw.bb174:                                         ; preds = %while.end157
  %55 = bitcast <2 x i64> %a8.1 to <2 x double>
  br label %LABEL_2.backedge

cleanup.loopexit:                                 ; preds = %if.then56
  br label %cleanup

cleanup.loopexit1145:                             ; preds = %if.then8
  br label %cleanup

cleanup.loopexit1146:                             ; preds = %if.else26
  br label %cleanup

cleanup.loopexit1147:                             ; preds = %if.else74, %while.end157
  br label %cleanup

cleanup.loopexit1154:                             ; preds = %if.then106, %if.else128
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit1154, %cleanup.loopexit1147, %cleanup.loopexit1146, %cleanup.loopexit1145, %cleanup.loopexit
  %retval.0 = xor i32 %v22.1, %v21.1
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

define void @"\01?PrintDebug@@YAXH@Z"(i32 %IP) local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 2), align 4, !tbaa !5
  %1 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 1), align 4, !tbaa !5
  %2 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 0), align 4, !tbaa !5
  %3 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"\01??_C@_0EN@GDMILGKN@?6IP?3?5?5?5?5?5?5?$CF08X?5SP?3?5?5?5?5?5?5?5?$CF08X?5VM@", i32 0, i32 0), i32 %IP, i32 %3, i32 %2, i32 %1, i32 %0)
  %4 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), align 4, !tbaa !5
  %5 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 6), align 4, !tbaa !5
  %6 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 5), align 4, !tbaa !5
  %7 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 4), align 4, !tbaa !5
  %8 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 3), align 4, !tbaa !5
  %call1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @"\01??_C@_0EM@HGPMNDCO@VMReg?$FL3?$FN?5?$CF08X?5VMReg?$FL4?$FN?3?5?$CF08X?5VMR@", i32 0, i32 0), i32 %8, i32 %7, i32 %6, i32 %5, i32 %4)
  ret void
}

; Function Attrs: norecurse
define i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #10 {
entry:
  tail call void @"\01?LoadVM@@YAXXZ"()
  %0 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %NextVMStreamPtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %0, i32 0, i32 4
  %1 = bitcast i32* %NextVMStreamPtr to %struct.VMStreamHeader**
  %2 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** %1, align 4, !tbaa !16
  %NextVMStreamPtr1 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %2, i32 0, i32 4
  %3 = bitcast i32* %NextVMStreamPtr1 to %struct.VMStreamHeader**
  %4 = load %struct.VMStreamHeader*, %struct.VMStreamHeader** %3, align 4, !tbaa !16
  %VMOpcodePtr = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %4, i32 0, i32 3
  %5 = load i8*, i8** %VMOpcodePtr, align 4, !tbaa !17
  %add.ptr = getelementptr inbounds i8, i8* %5, i32 4128
  store i8* %add.ptr, i8** @"\01?InputParams@@3PAEA", align 4, !tbaa !11
  store i8 0, i8* %add.ptr, align 1, !tbaa !18
  %arrayidx.1 = getelementptr inbounds i8, i8* %5, i32 4129
  %cmp2 = icmp eq i32 %argc, 1
  call void @llvm.memset.p0i8.i64(i8* %arrayidx.1, i8 0, i64 31, i32 1, i1 false)
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = bitcast i8* %add.ptr to i64*
  store i64 3978425819141910832, i64* %6, align 1
  br label %if.end20

if.else:                                          ; preds = %entry
  %cmp3 = icmp eq i32 %argc, 2
  %arrayidx5 = getelementptr inbounds i8*, i8** %argv, i32 1
  %7 = load i8*, i8** %arrayidx5, align 4, !tbaa !11
  %call = tail call i32 @strlen(i8* %7)
  %cmp6 = icmp ne i32 %call, 16
  br i1 %cmp3, label %if.then4, label %if.else11

if.then4:                                         ; preds = %if.else
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then4
  %8 = load i8*, i8** %argv, align 4, !tbaa !11
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"\01??_C@_0CA@JDBKIAKL@?$FL?$CK?$FN?5Usage?3?5?$CFs?50011223344556677?6?$AA@", i32 0, i32 0), i8* %8)
  br label %cleanup51

if.end:                                           ; preds = %if.then4
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* %7, i32 16, i32 1, i1 false)
  br label %if.end20

if.else11:                                        ; preds = %if.else
  br i1 %cmp6, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.else11
  %9 = load i8*, i8** %argv, align 4, !tbaa !11
  %call17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"\01??_C@_0CC@CKPOBJJA@?$FL?$CK?$FN?5Usage?3?5?$CFs?5001122334455667788@", i32 0, i32 0), i8* %9)
  br label %cleanup51

if.end20:                                         ; preds = %if.end, %if.else11, %if.then
  %call21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"\01??_C@_03IENPHDLA@I?3?5?$AA@", i32 0, i32 0))
  br label %for.body26

for.cond.cleanup25:                               ; preds = %if.end30
  %putchar = tail call i32 @putchar(i32 10)
  store i32 0, i32* @"\01?VM_Counter@@3KA", align 4, !tbaa !5
  tail call void @llvm.memset.p0i8.i32(i8* bitcast ([8 x i32]* @"\01?VM_Regs@@3PAKA" to i8*), i8 0, i32 32, i32 4, i1 false) #12
  %Ptr.026.i = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !18
  %cmp227.i = icmp eq %struct.VMStreamHeader* %Ptr.026.i, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp227.i, label %for.cond37.preheader, label %for.body4.i.preheader

for.body4.i.preheader:                            ; preds = %for.cond.cleanup25
  br label %for.body4.i

for.cond37.preheader.loopexit:                    ; preds = %for.inc15.i
  br label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond37.preheader.loopexit, %for.cond.cleanup25
  %.ph = phi %struct.VMStreamHeader* [ inttoptr (i32 -1 to %struct.VMStreamHeader*), %for.cond.cleanup25 ], [ %Ptr.026.i, %for.cond37.preheader.loopexit ]
  %10 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %11 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i6990 = add i32 %11, %10
  %xor.i.i7091 = xor i32 %add.i.i6990, %11
  %cmp23.i93 = icmp eq %struct.VMStreamHeader* %.ph, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i93, label %cleanup51, label %for.body.i.preheader.lr.ph

for.body.i.preheader.lr.ph:                       ; preds = %for.cond37.preheader
  %sub.i.i7192 = sub i32 %xor.i.i7091, %11
  br label %for.body.i.preheader

for.body4.i:                                      ; preds = %for.body4.i.preheader, %for.inc15.i
  %Ptr.028.i = phi %struct.VMStreamHeader* [ %Ptr.0.i, %for.inc15.i ], [ %Ptr.026.i, %for.body4.i.preheader ]
  %arrayidx5.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.028.i, i32 0, i32 0, i32 0
  %12 = load i8, i8* %arrayidx5.i, align 4, !tbaa !18
  switch i8 %12, label %for.inc15.i [
    i8 -123, label %if.then.i
    i8 -2, label %if.then11.i
  ]

if.then.i:                                        ; preds = %for.body4.i
  %VMMemoryPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.028.i, i32 0, i32 1
  %13 = load i8*, i8** %VMMemoryPtr.i, align 4, !tbaa !13
  br label %for.inc15.sink.split.i

if.then11.i:                                      ; preds = %for.body4.i
  %VMMemoryPtr12.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.028.i, i32 0, i32 1
  %14 = load i8*, i8** %VMMemoryPtr12.i, align 4, !tbaa !13
  %add.ptr.i = getelementptr inbounds i8, i8* %14, i32 104
  br label %for.inc15.sink.split.i

for.inc15.sink.split.i:                           ; preds = %if.then11.i, %if.then.i
  %.sink17.i = phi i8* [ %13, %if.then.i ], [ %add.ptr.i, %if.then11.i ]
  %"\01?VMStackPtr@@3KA.sink.i" = phi i32* [ @"\01?VMStackPtr@@3KA", %if.then.i ], [ getelementptr inbounds ([8 x i32], [8 x i32]* @"\01?VM_Regs@@3PAKA", i32 0, i32 7), %if.then11.i ]
  %15 = ptrtoint i8* %.sink17.i to i32
  %16 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i = add i32 %16, %15
  %xor.i.i = xor i32 %add.i.i, %16
  %sub.i.i = sub i32 %xor.i.i, %16
  store i32 %sub.i.i, i32* %"\01?VMStackPtr@@3KA.sink.i", align 4, !tbaa !5
  br label %for.inc15.i

for.inc15.i:                                      ; preds = %for.inc15.sink.split.i, %for.body4.i
  %NextVMStreamPtr.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.028.i, i32 0, i32 4
  %17 = bitcast i32* %NextVMStreamPtr.i to %struct.VMStreamHeader**
  %Ptr.0.i = load %struct.VMStreamHeader*, %struct.VMStreamHeader** %17, align 4, !tbaa !18
  %cmp2.i = icmp eq %struct.VMStreamHeader* %Ptr.0.i, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp2.i, label %for.cond37.preheader.loopexit, label %for.body4.i

for.body26:                                       ; preds = %if.end30, %if.end20
  %i22.078 = phi i32 [ 0, %if.end20 ], [ %inc34, %if.end30 ]
  %cmp27 = icmp eq i32 %i22.078, 8
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %for.body26
  %putchar68 = tail call i32 @putchar(i32 32)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %for.body26
  %18 = load i8*, i8** @"\01?InputParams@@3PAEA", align 4, !tbaa !11
  %arrayidx31 = getelementptr inbounds i8, i8* %18, i32 %i22.078
  %19 = load i8, i8* %arrayidx31, align 1, !tbaa !18
  %conv = zext i8 %19 to i32
  %call32 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"\01??_C@_04JFFKLGJF@?$CF02X?$AA@", i32 0, i32 0), i32 %conv)
  %inc34 = add nuw nsw i32 %i22.078, 1
  %exitcond = icmp eq i32 %inc34, 16
  br i1 %exitcond, label %for.cond.cleanup25, label %for.body26

for.body.i.preheader:                             ; preds = %for.body.i.preheader.lr.ph, %cleanup
  %sub.i.i7195 = phi i32 [ %sub.i.i7192, %for.body.i.preheader.lr.ph ], [ %sub.i.i71, %cleanup ]
  %xor.i.i7094 = phi i32 [ %xor.i.i7091, %for.body.i.preheader.lr.ph ], [ %xor.i.i70, %cleanup ]
  %20 = phi i32 [ %11, %for.body.i.preheader.lr.ph ], [ %34, %cleanup ]
  %21 = phi %struct.VMStreamHeader* [ %.ph, %for.body.i.preheader.lr.ph ], [ %.pr.pre, %cleanup ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %Ptr.024.i = phi %struct.VMStreamHeader* [ %26, %for.inc.i ], [ %21, %for.body.i.preheader ]
  %VMMemoryPtr.i72 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 1
  %22 = bitcast i8** %VMMemoryPtr.i72 to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !13
  %VMMemorySize.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 2
  %24 = load i32, i32* %VMMemorySize.i, align 4, !tbaa !15
  %add.i = add i32 %24, %23
  %cmp1.i = icmp ult i32 %sub.i.i7195, %add.i
  br i1 %cmp1.i, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %NextVMStreamPtr.i73 = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 4
  %25 = load i32, i32* %NextVMStreamPtr.i73, align 4, !tbaa !16
  %cmp2.i74 = icmp eq i32 %25, -1
  br i1 %cmp2.i74, label %"\01?GetByteFromVMStream@@YAEXZ.exit", label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %26 = inttoptr i32 %25 to %struct.VMStreamHeader*
  %cmp.i = icmp eq %struct.VMStreamHeader* %26, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp.i, label %cleanup51.loopexit, label %for.body.i

"\01?GetByteFromVMStream@@YAEXZ.exit":            ; preds = %for.body.i, %lor.lhs.false.i
  %add.i19.i = add i32 %xor.i.i7094, 1
  %xor.i20.i = xor i32 %add.i19.i, %20
  %sub.i21.i = sub i32 %xor.i20.i, %20
  store i32 %sub.i21.i, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %sub.i = sub i32 %sub.i.i7195, %23
  %VMOpcodePtr.i.i = getelementptr inbounds %struct.VMStreamHeader, %struct.VMStreamHeader* %Ptr.024.i, i32 0, i32 3
  %27 = load i8*, i8** %VMOpcodePtr.i.i, align 4, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds i8, i8* %27, i32 %sub.i
  %28 = bitcast i8* %add.ptr.i.i to i32*
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %conv.i = trunc i32 %29 to i8
  %30 = and i8 %conv.i, -8
  %cmp42 = icmp ugt i8 %30, -24
  br i1 %cmp42, label %cleanup51.loopexit96, label %cleanup

cleanup:                                          ; preds = %"\01?GetByteFromVMStream@@YAEXZ.exit"
  %conv41 = zext i8 %30 to i32
  %arrayidx45 = getelementptr inbounds [236 x i8], [236 x i8]* @"\01?VM_Opcode_Encoding@@3PAEA", i32 0, i32 %conv41
  %31 = load i8, i8* %arrayidx45, align 1, !tbaa !18
  %idxprom46 = zext i8 %31 to i32
  %arrayidx47 = getelementptr inbounds [17 x void (i8)*], [17 x void (i8)*]* @"\01?OpcodeFuncTable@@3PAP6AXE@ZA", i32 0, i32 %idxprom46
  %32 = load void (i8)*, void (i8)** %arrayidx47, align 4, !tbaa !11
  tail call void %32(i8 zeroext %conv.i)
  %.pr.pre = load %struct.VMStreamHeader*, %struct.VMStreamHeader** @"\01?VM_Stream_Ptr@@3PAUVMStreamHeader@@A", align 4, !tbaa !11
  %33 = load i32, i32* @"\01?VMStackPtr@@3KA", align 4, !tbaa !5
  %34 = load i32, i32* @"\01?State@@3IA", align 4, !tbaa !9
  %add.i.i69 = add i32 %34, %33
  %xor.i.i70 = xor i32 %add.i.i69, %34
  %sub.i.i71 = sub i32 %xor.i.i70, %34
  %cmp23.i = icmp eq %struct.VMStreamHeader* %.pr.pre, inttoptr (i32 -1 to %struct.VMStreamHeader*)
  br i1 %cmp23.i, label %cleanup51.loopexit96, label %for.body.i.preheader

cleanup51.loopexit:                               ; preds = %for.inc.i
  br label %cleanup51

cleanup51.loopexit96:                             ; preds = %cleanup, %"\01?GetByteFromVMStream@@YAEXZ.exit"
  br label %cleanup51

cleanup51:                                        ; preds = %cleanup51.loopexit96, %cleanup51.loopexit, %for.cond37.preheader, %if.then15, %if.then7
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

declare %struct._iobuf* @__acrt_iob_func(i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

declare i32 @__stdio_common_vfprintf(i64, %struct._iobuf*, i8*, %struct.__crt_locale_pointers*, i8*) local_unnamed_addr #7

; Function Attrs: noinline norecurse nounwind
define linkonce_odr i64* @__local_stdio_printf_options() local_unnamed_addr #13 comdat {
entry:
  ret i64* @"\01?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
}

; Function Attrs: nounwind readnone
declare <4 x i32> @llvm.x86.sse2.psll.d(<4 x i32>, <4 x i32>) #14

; Function Attrs: nounwind readnone
declare <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32>, <4 x i32>) #14

declare i32 @putchar(i32)

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

attributes #0 = { norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!4}

!0 = !{i32 6, !"Linker Options", !1}
!1 = !{!2, !3, !3}
!2 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!3 = !{!"/DEFAULTLIB:uuid.lib"}
!4 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !12, i64 4}
!14 = !{!"?AUVMStreamHeader@@", !7, i64 0, !12, i64 4, !6, i64 8, !12, i64 12, !6, i64 16, !7, i64 20}
!15 = !{!14, !6, i64 8}
!16 = !{!14, !6, i64 16}
!17 = !{!14, !12, i64 12}
!18 = !{!7, !7, i64 0}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.vectorize.width", i32 1}
!21 = !{!"llvm.loop.interleave.count", i32 1}
!22 = distinct !{!22, !23, !20, !21}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!25, !25, i64 0}
!25 = !{!"long long", !7, i64 0}
