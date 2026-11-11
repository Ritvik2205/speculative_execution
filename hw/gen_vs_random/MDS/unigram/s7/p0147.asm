.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
or sil, -78
xor rsi, -117
or edi, edi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
test cl, dil
xor sil, sil
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
test ax, dx
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and bl, -5 # instrumentation
cmovnl dx, cx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
or dil, sil
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
