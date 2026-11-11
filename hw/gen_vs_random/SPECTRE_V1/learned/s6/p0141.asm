.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], dx
sub bx, 7
test al, 84
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnl .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
add al, bl
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
lea dx, qword ptr [rbx + rsi + 99]
lea rdx, qword ptr [rsi + rbx + 38]
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
