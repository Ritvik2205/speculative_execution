.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, 120
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
xor rcx, 76
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], ax
add al, 24 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rax]
add bl, 55 # instrumentation
lea ebx, qword ptr [rsi + rax + 17]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
test bl, 84
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
btc esi, 87
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
bt dx, bx
xor bl, al
cmovo rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
