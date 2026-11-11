.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rcx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 96
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and dl, -73 # instrumentation
cmovns rax, rcx
xor eax, 1170472196
btc eax, 48
or cl, 10
cmovle rdx, rsi
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], edi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and bl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
and cl, -22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
cmovb ax, dx
or rax, 1749358813
or eax, ecx
bt rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
