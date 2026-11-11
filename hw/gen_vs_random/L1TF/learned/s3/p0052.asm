.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
sub cl, 86
lea rax, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
lea edx, qword ptr [rbx]
jmp .bb_0.2
.bb_0.2:
test al, -70
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and cx, 127
jmp .bb_0.3
.bb_0.3:
bswap rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
