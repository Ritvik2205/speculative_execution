.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
xor dl, 34
btc rsi, rsi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
or ecx, 82
xor rbx, 89
xor eax, eax
or rdx, -48
jmp .bb_0.1
.bb_0.1:
xor bl, -61
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
xor bx, 14
xor rbx, 89
cmovnz si, cx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 64
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
bt rax, rsi
xor al, -19
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
not eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
