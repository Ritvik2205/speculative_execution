.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -94 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 3
lea ax, qword ptr [rdx + rdx + 83]
xchg dl, cl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 77
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 42
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe ax, bx
xor rbx, 33
setnp cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 43
adc di, 77
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
xor cx, 25
add bl, 7 # instrumentation
cmovnl eax, edx
sbb di, 30
cmp edi, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
