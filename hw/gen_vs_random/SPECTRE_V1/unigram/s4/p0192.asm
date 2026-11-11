.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
setz bl
and esi, 77
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
xor esi, ecx
cmovle dx, dx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 4
dec bl
sub al, dil
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
add al, -53 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
