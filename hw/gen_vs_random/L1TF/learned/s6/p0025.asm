.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
xor al, dil
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
xor cx, 113
and cl, 86
lea rsi, qword ptr [rcx + rbx]
xor cl, 89
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
