.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bx, dx
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
xor cl, 89
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and bl, bl
lea si, qword ptr [rdx + rsi + 21492]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
sub eax, 67
add dl, 37 # instrumentation
cmovbe dx, ax
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
sbb dl, cl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
xor edi, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
