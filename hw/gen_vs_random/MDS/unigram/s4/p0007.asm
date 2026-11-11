.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -14 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and bl, bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
test al, dil
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 53
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
cmovbe ax, cx
bt di, 52
jmp .bb_0.1
.bb_0.1:
test rsi, 18
and ebx, 57
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and bl, 32 # instrumentation
cmovnbe ebx, edi
and rbx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rbx]
and al, dil
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and bl, -82 # instrumentation
cmovz ecx, eax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
