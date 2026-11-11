.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
xor dx, 82
mov sil, cl
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
jmp .bb_0.1
.bb_0.1:
and ax, dx
and sil, dl
and cl, -6
xor al, 9
bt di, bx
xor rdi, -9
btr bx, dx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
xor al, dil
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
