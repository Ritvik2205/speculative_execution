.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
add rax, 977059290
sub al, dl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
sub al, dl
inc ecx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test bl, -8
cmp bx, 35
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
