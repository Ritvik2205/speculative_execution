.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add al, 74
xor dl, dil
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 44
add al, 117
jmp .bb_0.2
.bb_0.2:
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
