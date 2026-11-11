.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
or ebx, ecx
add bl, sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
imul rdx
test al, 42
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and sil, bl
lea rax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
