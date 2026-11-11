.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
or al, -57
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
test al, -70
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
lea edx, qword ptr [rdx + rsi + 87]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
