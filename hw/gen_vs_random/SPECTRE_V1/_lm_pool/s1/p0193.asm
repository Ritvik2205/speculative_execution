.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 45
add bl, -95
lea di, qword ptr [rsi + rdx + 72]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 32
jmp .bb_0.1
.bb_0.1:
sub al, cl
jmp .bb_0.2
.bb_0.2:
sub sil, dil
and cl, -57
sub sil, -18
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
