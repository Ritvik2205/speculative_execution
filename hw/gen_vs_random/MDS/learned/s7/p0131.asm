.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
xor rbx, 89
or dl, cl
and sil, dil
xor si, 80
xor dl, -19
and dil, sil
test al, dil
test cl, 62
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 45
or al, sil
jmp .bb_0.1
.bb_0.1:
and cx, -2
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
test dl, sil
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
test sil, dl
lea edi, qword ptr [rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
