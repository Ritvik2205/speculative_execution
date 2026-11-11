.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, 208
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
cmovno bx, ax
xor cl, 98
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
cmovs edx, edx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rcx
btr ax, 193
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and al, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
and dl, 91 # instrumentation
cmovnle ebx, ebx
cmovz rsi, rsi
cmovns ecx, eax
and dil, -103 # instrumentation
cmovns edi, edi
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
cmovz ebx, esi
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
