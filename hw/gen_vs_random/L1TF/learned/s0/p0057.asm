.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
add cl, -36
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
xor rcx, 74
cmp al, 56
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
or ax, 11821
and cl, cl
test al, -56
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
xor ax, 0
sub bl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
