.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rbx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
cmovnz ebx, edi
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovbe rcx, rax
and dl, -1 # instrumentation
cmovnb bx, ax
and dl, -7
xor rbx, rdx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edi
and bl, -3 # instrumentation
cmovnb bx, si
cmovo ax, bx
and sil, -38 # instrumentation
cmovp rsi, rax
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
and dil, 86
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
