.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb ebx, eax
sub al, bl
setz sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, 87
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
and cl, al
add dl, cl
add sil, 2
sub al, -82
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
