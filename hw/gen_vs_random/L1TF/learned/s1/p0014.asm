.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and al, -68
add al, cl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
sbb bx, 67
adc dl, -12
jmp .bb_0.2
.bb_0.2:
test bl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
