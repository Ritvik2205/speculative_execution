.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl cx, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
cmovb rax, rdx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 69
or ebx, edx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
cmovp edi, edx
test rcx, -613256812
xor di, di
and bl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and bl, 127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 62
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
bt si, 23
xor sil, bl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
and cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
