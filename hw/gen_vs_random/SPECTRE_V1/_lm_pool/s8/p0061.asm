.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
add dl, 47
add al, cl
xchg ebx, edx
sub sil, bl
and bl, 124
mov dil, cl
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 13
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
lea rbx, qword ptr [rsi]
and dl, cl
xor rbx, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
