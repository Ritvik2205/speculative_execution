.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
add sil, 2
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb al, 49
and dil, dl
add dil, sil
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
