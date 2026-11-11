.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and al, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
or rbx, -77
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
btr rcx, rbx
and cl, sil
btr ax, 193
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 7
cmovp eax, edx
bt rdi, 36
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
xor si, 91
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
