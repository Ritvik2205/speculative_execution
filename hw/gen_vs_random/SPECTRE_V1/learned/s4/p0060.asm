.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
or al, 19
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
sub bl, dl
mov dl, dil
lea cx, qword ptr [rcx]
neg al
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
