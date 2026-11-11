.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, cl
lea ax, qword ptr [rcx]
mov al, dl
sbb dil, bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
add dl, dl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sub dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
