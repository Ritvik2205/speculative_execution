.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
lea cx, qword ptr [rsi + rdi]
xor eax, 55
lea ax, qword ptr [rax]
bts edx, 177
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
sub dl, -48
sub cl, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
