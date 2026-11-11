.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 60
xor bl, -61
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
and sil, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
btr cx, cx
cmovp rdx, rbx
cmovp bx, ax
btr si, dx
and al, -23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
or rdx, rbx
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and cx, -8
and rcx, 107
xor sil, al
and dl, 72 # instrumentation
cmovz edx, eax
cmovz ax, ax
cmovnbe rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
