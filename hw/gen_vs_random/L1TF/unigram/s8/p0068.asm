.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
btc eax, ebx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 76
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 71
xchg eax, esi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
xor ecx, edi
add bl, 79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], cx
adc sil, 81
add bl, 111 # instrumentation
cmovs rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
