.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and sil, 52
sbb cl, 105
lea rdi, qword ptr [rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
add al, sil
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
sbb dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
