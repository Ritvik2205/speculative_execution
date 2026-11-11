.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe cl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
add dl, -65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 65
lea ebx, qword ptr [rsi]
xor cl, -40
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 8
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
and rcx, -29
add dl, -77 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ebx, esi
cmovnz bx, dx
test dil, -116
setnle dil
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
cbw
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
