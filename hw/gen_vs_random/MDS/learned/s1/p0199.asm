.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 83
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
or al, -58
and cl, al
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and cl, dil
or dl, -31
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
or edx, -78
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and cx, -2
and rax, 1886208862
xor cl, dil
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
