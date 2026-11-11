.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -82 # instrumentation
cmovz edx, edi
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
bt dx, ax
btc rcx, rcx
cmovo ecx, edi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
cmovz rsi, rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmovo edi, edi
or bl, -62
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and dx, 60
cmovb rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
