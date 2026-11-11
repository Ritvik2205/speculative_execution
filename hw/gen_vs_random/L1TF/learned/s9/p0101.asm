.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, ebx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
test al, -82
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, -34
test cl, 13
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
add cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
