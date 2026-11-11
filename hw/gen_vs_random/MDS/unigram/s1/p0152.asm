.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 72 # instrumentation
cmovz eax, edi
cmovnz rdx, rdi
or esi, -110
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], ax
btr rax, 56
bt rcx, rbx
test bl, -14
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rsi, 39
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 92
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and al, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and dl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdx
test dil, 46
cmovnbe ecx, ebx
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
