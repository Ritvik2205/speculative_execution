.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rsi
cmovl rsi, rcx
setnle dil
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 28
add bl, 45
bt rcx, rax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
lea bx, qword ptr [rax + rsi + 25491]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 5
add dl, 92 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
xor cx, ax
add cl, 28 # instrumentation
setnz cl
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
bt rdi, 110
add al, -54 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
