.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
bt edi, 134
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp si, -11
jmp .bb_0.2
.bb_0.2:
xor al, sil
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
sbb edi, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
