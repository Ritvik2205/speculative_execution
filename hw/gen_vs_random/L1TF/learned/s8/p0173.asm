.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -78
sub bl, 15
lea dx, qword ptr [rsi]
lea rax, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
cmp ax, 7046
sbb ax, -5921
lea rax, qword ptr [rdi + rbx + 67]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb dl, dil
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 71
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
