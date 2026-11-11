.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
imul di, ax, 31
sub dl, -78
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rcx, rbx
xor bl, dl
jmp .bb_0.1
.bb_0.1:
sbb edx, 23
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
