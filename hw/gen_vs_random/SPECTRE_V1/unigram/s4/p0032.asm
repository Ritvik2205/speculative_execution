.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rax, 1310333622
lea ebx, qword ptr [rbx + rdx]
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdi
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
xchg sil, sil
sbb cl, 105
xchg rdx, rcx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
sub al, -89
sub cl, -47
btc eax, 89
test dl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
