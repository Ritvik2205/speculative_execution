.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -17
and dl, sil
or sil, bl
or cl, sil
test rbx, 6
and ax, 13090
and cl, dil
or al, dl
xor dl, 40
jmp .bb_0.1
.bb_0.1:
or rax, 302048971
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 66
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
