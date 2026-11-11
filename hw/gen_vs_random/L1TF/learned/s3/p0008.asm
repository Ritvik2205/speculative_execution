.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
inc rax
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
inc bl
and sil, bl
bt edx, ecx
jmp .bb_0.1
.bb_0.1:
cmovl rcx, rcx
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
xor dl, dil
or ax, -10161
lea ebx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
