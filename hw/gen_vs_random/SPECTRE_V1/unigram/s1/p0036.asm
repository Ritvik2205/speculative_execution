.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, -124
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], bx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, sil
sbb dil, al
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 91
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
sbb sil, -78
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
and cl, 86
add rax, -845342150
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
cmp rbx, 90
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rdx, rax
btr rdx, rax
sub rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
