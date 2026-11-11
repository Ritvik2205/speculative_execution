.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and dl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
cmp al, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx + rcx + 43552]
add ecx, 66
xchg edi, ebx
lea rax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
