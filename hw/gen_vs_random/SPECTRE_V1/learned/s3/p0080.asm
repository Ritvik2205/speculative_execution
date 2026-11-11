.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
lea rax, qword ptr [rsi]
and al, 33
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or dl, al
sub al, bl
add al, 3
sbb dil, -93
test ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
