.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
adc ax, -614
add sil, -68
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
lea cx, qword ptr [rdi + rax]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
lea ecx, qword ptr [rax + rsi + 68]
xor cx, 26
add al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
