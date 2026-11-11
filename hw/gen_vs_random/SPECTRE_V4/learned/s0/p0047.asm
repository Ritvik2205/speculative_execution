.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 40
sbb bl, 121
or bl, dil
test cl, 78
sub dl, dil
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
mov dl, cl
cmp ebx, -19
xchg dl, bl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
sbb dl, -62
test al, 52
xor dl, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
