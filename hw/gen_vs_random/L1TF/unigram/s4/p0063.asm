.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 10 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -70
xor cl, 89
lea rbx, qword ptr [rax + rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
bts edi, ebx
and ax, dx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ecx
jmp .bb_0.1
.bb_0.1:
adc rbx, 94
xor al, al
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
cbw
bswap edi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 24
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
or sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
