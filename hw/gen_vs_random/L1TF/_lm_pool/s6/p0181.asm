.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
add al, 93
add al, 117
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or al, al
and bl, bl
sub al, -47
or cl, 105
test al, 15
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 23
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
sub al, -97
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
