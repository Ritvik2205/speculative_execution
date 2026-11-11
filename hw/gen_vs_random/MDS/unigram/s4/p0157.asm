.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
xor bl, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 85
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
or dl, -89
and al, 42 # instrumentation
cmovz esi, edi
and dl, 50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and dx, 3
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and bl, 16 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
cmovnb rbx, rsi
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 66
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 51
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
xor sil, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
