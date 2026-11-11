.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 91
btr ebx, ecx
xor ax, -6793
bts rsi, 221
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test cl, dil
xor dil, -3
jmp .bb_0.1
.bb_0.1:
or bl, -125
xor dl, 8
test dl, sil
or ax, -23697
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
