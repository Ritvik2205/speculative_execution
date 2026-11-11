.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
cmovnz dx, cx
and al, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and dl, 53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
xor rdi, -9
test al, -81
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 90
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
cmovl rdi, rbx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and dl, 13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
bts rbx, 115
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
