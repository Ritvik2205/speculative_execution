.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
sub al, bl
mov al, bl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ecx, 29
add sil, dil
sbb edi, 38
lea rcx, qword ptr [rdx]
test eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
