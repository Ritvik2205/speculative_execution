.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
lea eax, qword ptr [rbx + rbx + 51]
test al, -70
xor cl, dil
xor al, dil
btc ax, bx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
or al, sil
btc si, dx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
