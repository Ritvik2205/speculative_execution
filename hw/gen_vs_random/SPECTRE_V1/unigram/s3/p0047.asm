.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
xor bl, 51
btr rsi, rdx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
not rcx
sbb ebx, 40
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and di, 76
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
