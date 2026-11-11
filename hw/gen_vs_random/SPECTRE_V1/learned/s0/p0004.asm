.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and bl, dil
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
sub cl, -47
cmp si, -11
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
xchg dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
