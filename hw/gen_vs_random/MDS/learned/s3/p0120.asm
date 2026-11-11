.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
test sil, -96
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
or al, cl
or sil, -49
and dl, -73
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
xor al, dil
btc cx, 115
or cl, -77
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
or cl, 39
or rcx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
