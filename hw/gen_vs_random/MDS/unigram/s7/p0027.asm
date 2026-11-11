.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and bl, -56 # instrumentation
cmovnle eax, edi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and dl, 8 # instrumentation
cmovle bx, si
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
cmovns edi, ecx
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 86
cmovnb rax, rsi
jmp .bb_0.1
.bb_0.1:
and al, 20 # instrumentation
cmovp di, ax
btr rax, 29
bts rbx, 115
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
cmovnle edx, eax
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
