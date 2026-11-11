.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 19740
test dil, dil
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
test rsi, 36
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
xor cl, 83
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
cmovnp rbx, rax
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
xor ax, -5889
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
