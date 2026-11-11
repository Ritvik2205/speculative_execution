.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 15
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
sub dl, -49
test al, -104
or al, dil
or si, 80
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovl si, bx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and cl, 40
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
