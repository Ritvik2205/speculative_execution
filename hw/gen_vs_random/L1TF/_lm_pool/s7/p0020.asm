.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
and rax, 1163013815
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
add dx, 7
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
lea edx, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
