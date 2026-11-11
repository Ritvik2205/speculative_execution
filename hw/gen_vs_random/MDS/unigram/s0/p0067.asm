.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo edx, ecx
and bl, 3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], eax
test ax, 18697
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 14
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
test al, 127
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], esi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 5
and sil, cl
cmovnl dx, ax
cmovs edx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and dil, 6 # instrumentation
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], esi
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 78
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
