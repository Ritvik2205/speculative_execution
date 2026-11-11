.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
add al, 78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
imul rdx, rdx, 74
btc ecx, esi
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
bt eax, esi
cmovnle dx, dx
or edx, 53
test cx, dx
and rdx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdx]
add bl, 79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
test al, al
adc rax, 1431457700
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
