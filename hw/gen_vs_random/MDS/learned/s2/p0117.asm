.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 9
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rax, 1886208862
jmp .bb_0.1
.bb_0.1:
test dil, -51
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
or cl, 119
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
test rdx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
