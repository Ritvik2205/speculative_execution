.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 34
sub bl, cl
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx]
and al, -23
sub al, -1
sub dil, al
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and dil, -93
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
lea rbx, qword ptr [rcx + rsi + 82]
add edx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
