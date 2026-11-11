.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and al, bl
and rdi, rsi
or ax, -18131
and rdx, 88
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax]
inc rax
lea cx, qword ptr [rdi + rbx + 61]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sub rax, 1806572419
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
