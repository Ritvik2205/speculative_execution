.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -14
bts rsi, rcx
jmp .bb_0.1
.bb_0.1:
or al, sil
jmp .bb_0.2
.bb_0.2:
test dl, -85
or rax, -689609688
xor dil, al
or bl, -52
test bl, -14
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jmp .bb_0.3
.bb_0.3:
test dl, cl
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
