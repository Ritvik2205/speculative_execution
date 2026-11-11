.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
cmovo ecx, edi
bt dx, ax
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and bl, -82 # instrumentation
cmovz edx, edi
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
btc rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovb rsi, rdx
or bl, -54
and dx, 60
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
cmovo edi, edi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmovz rsi, rsi
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
