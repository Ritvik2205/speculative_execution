.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
sub al, bl
test bl, -8
sub cl, dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
btc ebx, 139
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
and cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
