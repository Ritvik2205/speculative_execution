.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 104 # instrumentation
mov ebx, 87
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and dl, 32
xor sil, 64
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
add sil, -61
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
adc cl, sil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 54
sub al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
