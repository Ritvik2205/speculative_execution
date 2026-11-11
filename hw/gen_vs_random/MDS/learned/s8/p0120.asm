.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
test bl, -14
jmp .bb_0.1
.bb_0.1:
xor al, 9
xor bl, dil
bts rdi, rsi
and cl, dl
xor dil, -70
test al, cl
or dl, -21
and dil, dl
jmp .bb_0.2
.bb_0.2:
test eax, -409834435
test sil, dil
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and sil, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
