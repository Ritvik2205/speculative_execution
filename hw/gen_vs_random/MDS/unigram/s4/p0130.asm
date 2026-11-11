.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
bt eax, edi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and al, 32 # instrumentation
cmovnbe eax, edi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
cmovnbe rcx, rbx
and cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
or esi, edi
or dl, -21
jmp .bb_0.1
.bb_0.1:
cmovnb esi, eax
and bl, -24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rsi, rsi
not bl
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
