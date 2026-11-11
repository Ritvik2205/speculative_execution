.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 35
test al, -81
not dl
xor dl, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
xor cl, dil
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and dil, al
xor dl, cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
test eax, 1287331633
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
