.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], ax
or rdi, rcx
bts rax, 117
cmovnb cx, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmovnp cx, bx
xor sil, 85
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 21
and di, 17
or rcx, 43
and bl, 83
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edx
and bl, -30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and dl, -2 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
and bl, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 16
test rdx, -1624442902
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
