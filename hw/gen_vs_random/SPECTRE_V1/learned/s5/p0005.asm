.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
sbb bl, 79
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
cmp dil, bl
lea cx, qword ptr [rbx + rcx + 47]
lea rcx, qword ptr [rsi]
sub cl, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
