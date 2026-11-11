.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -18
xor dil, 124
and cl, 79
btc ax, 52
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor sil, 94
bt ebx, eax
xor edi, 15
test dl, sil
and cl, -111
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
or al, sil
xor dil, -124
test sil, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
