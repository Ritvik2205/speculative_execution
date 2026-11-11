.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
sub sil, -99
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
or cl, -78
lea cx, qword ptr [rbx + rdi + 48]
or esi, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
