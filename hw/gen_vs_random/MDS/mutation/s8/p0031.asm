.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and bl, -82 # instrumentation
cmovz edx, edi
cmovo ecx, edi
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
bt dx, ax
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
cmovo edi, edi
cmovb rsi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
or bl, 100
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmovz rsi, rsi
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
