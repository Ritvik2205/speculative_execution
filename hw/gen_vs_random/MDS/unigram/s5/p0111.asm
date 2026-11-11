.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
bt rbx, rdx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 10
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
cmovnle rdx, rcx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
bt esi, eax
jmp .bb_0.1
.bb_0.1:
and al, 35
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 64
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
test dl, -119
btr ecx, ebx
or dil, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
