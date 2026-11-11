.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 51
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
or al, 100
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and dl, -92
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
xor cl, 78
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
xor cl, -40
or rdi, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
