.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
bt dx, ax
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
btc rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
cmovo ecx, edi
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and bl, -82 # instrumentation
cmovz edx, edi
jmp .bb_0.1
.bb_0.1:
and dx, 60
or bl, 100
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
cmovo edi, edi
cmovb rsi, rdx
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
cmovz rsi, rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
