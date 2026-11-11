.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 8
cmp ebx, 89
xor cx, 113
cmovs dx, si
and bl, 89
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
xor ax, 34
not cl
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
