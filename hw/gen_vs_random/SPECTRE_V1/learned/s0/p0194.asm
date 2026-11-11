.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
lea di, qword ptr [rcx]
setns al
setz dl
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
sub dil, dl
xchg cl, sil
sbb dil, al
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
lea dx, qword ptr [rbx]
sbb al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
