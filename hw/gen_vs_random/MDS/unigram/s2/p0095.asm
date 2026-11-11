.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
test al, sil
and dl, -5 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 69
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test sil, -96
cmovz cx, cx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 87
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
cmovl cx, bx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and sil, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and al, -108 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
not eax
cmovnb rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
