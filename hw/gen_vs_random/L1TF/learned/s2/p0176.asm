.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb dil, dil
lea cx, qword ptr [rbx]
xor rax, -2072052278
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
add bl, cl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 100
and dl, 59
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
jmp .bb_0.3
.bb_0.3:
lea di, qword ptr [rbx + rcx + 45]
and cl, 58
cmovle rcx, rsi
or cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
