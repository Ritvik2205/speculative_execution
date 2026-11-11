.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
mov dl, al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg rdx, rcx
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb esi, 82
sbb eax, 1830317432
or cl, -62
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
