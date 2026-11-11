.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 96
add cl, -127
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
lea rbx, qword ptr [rdi + rcx + 38]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
xchg dl, dil
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
sub rax, -1628299544
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
