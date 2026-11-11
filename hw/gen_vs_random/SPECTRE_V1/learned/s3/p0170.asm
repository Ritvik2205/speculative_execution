.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
add al, 10
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
add al, sil
or al, 100
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
sub rdx, 87
sbb bl, -41
lea bx, qword ptr [rcx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
