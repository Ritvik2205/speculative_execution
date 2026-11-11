.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or rcx, rbx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
btr di, 199
cmovz rbx, rsi
bt eax, eax
cmovp esi, edi
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
or eax, -1827868798
bts rcx, 115
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
