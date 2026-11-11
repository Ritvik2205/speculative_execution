.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
or rbx, -72
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and cl, -19
xor cl, dil
and bl, 68
jmp .bb_0.2
.bb_0.2:
xor sil, -46
and dl, -73
bt cx, di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
