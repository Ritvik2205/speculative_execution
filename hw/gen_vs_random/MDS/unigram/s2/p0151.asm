.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rcx, rsi
and sil, 89
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
cmovnbe ax, bx
test cl, -86
test rdx, 22
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and eax, 454700988
and dil, -62
or dil, -78
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
xor rbx, 89
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
test edx, esi
and bl, 49 # instrumentation
cmovbe rcx, rdi
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
btr di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
