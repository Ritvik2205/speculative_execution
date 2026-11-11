.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, eax
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
or rax, 1461812833
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor cl, 15
xor dil, -124
xor cx, -18
test cl, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
not al
or rcx, 54
and ax, 339
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
