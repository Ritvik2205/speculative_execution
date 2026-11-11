.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
xor sil, 94
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and eax, -85386306
btr si, si
and ax, 13090
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -33
or rcx, -17
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
btr ax, 193
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 34
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
cmovnb cx, ax
and ax, ax
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rbx]
and sil, -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
