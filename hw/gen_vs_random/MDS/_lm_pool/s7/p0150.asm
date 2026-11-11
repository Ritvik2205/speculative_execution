.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
or sil, cl
test sil, dil
or bl, dil
jmp .bb_0.1
.bb_0.1:
test cl, dl
xor cx, -18
xor cl, 98
xor dil, -5
bts edi, 248
or eax, 359647041
test bl, al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
or dil, sil
and al, dil
or dil, sil
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
cmovnbe rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
