.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 78
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xchg rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
lea ax, qword ptr [rdi + rbx]
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
sub rax, -1628299544
cmp ecx, 8
lea rdi, qword ptr [rcx + rsi + 92]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
