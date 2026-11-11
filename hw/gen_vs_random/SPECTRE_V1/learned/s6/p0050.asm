.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmp esi, 30
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
sub dil, sil
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
bt rdx, rbx
cmp al, cl
add cl, sil
sub dx, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
