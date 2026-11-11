.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rax, 79
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
xor esi, 20
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
cmovnle ax, bx
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
xor sil, -14
jmp .bb_0.1
.bb_0.1:
and bx, 7
and edx, -44
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 9
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 54
and rax, 452940266
or dl, -89
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
test bl, 65
and al, dl
xor dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
