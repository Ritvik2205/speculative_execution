.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
or cl, 7
or sil, -49
and dil, cl
and cl, cl
jmp .bb_0.1
.bb_0.1:
xor sil, 27
jmp .bb_0.2
.bb_0.2:
xor al, -19
or sil, cl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
test bl, al
xor ax, -23364
and dil, -62
test ax, 6779
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and dl, -73
bts edi, 248
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
