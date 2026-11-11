.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 22
and bl, -104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
dec rsi
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and dil, -26 # instrumentation
cmovnp rcx, rdi
or dl, 22
mov dil, al
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
cmovle si, si
xor dl, cl
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
cmovz ecx, eax
bt rdi, rdx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
and al, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
