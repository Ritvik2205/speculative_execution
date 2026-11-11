.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 1167476476
and rax, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rax]
inc dx
lea edx, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 85
test rdx, 93
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
lea rbx, qword ptr [rax + rdx]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rdx + rax]
xchg esi, ecx
add bl, 91
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
