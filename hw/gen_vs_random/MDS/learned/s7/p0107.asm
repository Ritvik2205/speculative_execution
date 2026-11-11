.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
not dil
and rax, 452940266
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
bt edi, esi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and cl, -71
xor cl, al
xor eax, 571592471
btc ax, 69
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
