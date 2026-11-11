.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
or rcx, rbx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmovz rbx, rsi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
cmovp esi, edi
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
test cl, cl
bts rcx, 115
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
btr di, 109
bt eax, eax
or eax, -1827868798
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
