.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and dil, 98
inc sil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 24
lea cx, qword ptr [rbx + rdx + 50177]
lea cx, qword ptr [rax + rdi + 61]
sbb al, dil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
