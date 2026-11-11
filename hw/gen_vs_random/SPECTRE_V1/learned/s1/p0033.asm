.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 98
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
add dl, 47
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
add bl, 70
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and dl, -92
add al, -109
xor rcx, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
