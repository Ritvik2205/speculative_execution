.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 6
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
btr cx, 9
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 14
test sil, 41
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
test ebx, -961564216
or rsi, rdx
bts dx, 50
and edi, 23
bts dx, 50
bt rdx, rdx
and al, 87
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
and bl, 15 # instrumentation
cmovb si, di
cmovz edx, esi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
