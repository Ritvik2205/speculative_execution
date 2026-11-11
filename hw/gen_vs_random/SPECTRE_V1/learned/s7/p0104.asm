.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor sil, -33
sub al, dl
sub al, cl
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
add bl, 70
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
sbb cl, cl
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
