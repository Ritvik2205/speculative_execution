.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
or sil, al
add al, 10
sub al, dil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
sub cl, -21
add dl, bl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
lea dx, qword ptr [rax]
adc edi, 5
or eax, 1276549484
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
