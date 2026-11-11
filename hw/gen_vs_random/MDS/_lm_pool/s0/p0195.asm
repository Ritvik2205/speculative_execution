.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
test dl, dil
or al, al
btc dx, 146
and dil, cl
bts rdi, 130
btc di, 233
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
bts dx, bx
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
test esi, 1857129931
or al, 30
and rax, 79
test ecx, -1843375753
and ecx, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
