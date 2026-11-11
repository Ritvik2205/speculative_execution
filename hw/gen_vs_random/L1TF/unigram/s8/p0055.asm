.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, cl
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
or rdi, 61
btc rax, 14
add dl, -10 # instrumentation
cmovns ecx, eax
cmp edx, 99
add sil, 82 # instrumentation
adc sil, dil
cmovb eax, esi
jmp .bb_0.1
.bb_0.1:
add al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
sbb dil, 67
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdx]
lea rax, qword ptr [rax + rcx + 21]
cmovnbe rsi, rcx
lea rax, qword ptr [rax + rsi]
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
