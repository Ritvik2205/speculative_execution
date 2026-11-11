.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
sub al, dl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor dl, cl
lea rbx, qword ptr [rdx + rdi]
add sil, -68
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
