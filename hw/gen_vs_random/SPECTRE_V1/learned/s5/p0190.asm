.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
setz dil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 72
cmp cl, 80
cmp ebx, -33
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 7
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
xchg rcx, rax
lea rdx, qword ptr [rbx + rdx + 6174]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
cmp dil, -58
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
