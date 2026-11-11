.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
lea rdx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
sbb eax, -417098439
add dil, cl
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
