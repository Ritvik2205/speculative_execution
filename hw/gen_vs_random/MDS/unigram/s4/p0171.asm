.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, di
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
cmovs eax, eax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
btc dx, 38
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 56
or ax, dx
bt eax, eax
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
test rax, 1732677821
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmovl rdx, rcx
test rax, 1732677821
cmovno edx, edi
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 66
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
cmovz esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
